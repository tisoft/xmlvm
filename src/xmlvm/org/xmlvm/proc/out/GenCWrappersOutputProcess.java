/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.proc.out;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This process takes {@link COutputProcess}es which contain newly generated
 * wrappers (-gen_wrappers must be enabled for the {@link COutputProcess} to do
 * so). If the destination is empty, the wrappers will simply be written there,
 * and no further processing occurs. However, if files already exist, they will
 * not be overridden, but instead merged.
 * <p>
 * Merging happens based on some special "begin" and "end" markers, which
 * contain manually written code in between them. This code is extracted and put
 * into the newly generated wrappers - at the correct position.
 */
public class GenCWrappersOutputProcess extends XmlvmProcessImpl<COutputProcess> {

    private static final String           TAG           = GenCWrappersOutputProcess.class
                                                                .getSimpleName();
    private static final String           BEGIN_MARKER  = "//XMLVM_BEGIN";
    private static final String           END_MARKER    = "//XMLVM_END";

    private List<OutputFile>              result        = new ArrayList<OutputFile>();
    private final static SimpleDateFormat dateFormatter = new SimpleDateFormat(
                                                                "yyyy-MM-dd-hh.mm.ss");


    public GenCWrappersOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(COutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        List<OutputFile> outputFiles = new ArrayList<OutputFile>();
        List<COutputProcess> preprocesses = preprocess();

        for (COutputProcess process : preprocesses) {
            outputFiles.addAll(process.getOutputFiles());
        }

        File destination = new File(arguments.option_out());

        // If the destination doesn't exist or has no content, we simply copy
        // the generated wrappers over.
        if (!destination.exists() || (destination.isDirectory() && destination.list().length == 0)) {
            result.addAll(outputFiles);
            return true;
        }

        if (destination.isFile()) {
            Log.error(TAG,
                    "Destination is a file, but must be a directory: " + arguments.option_out());
            return false;
        }

        // First we make a backup of the existing files, so the user can revert
        // to it later.
        backupExistingDestination(destination.getAbsolutePath());

        // Extracts all existing sections from all files and keys them by
        // relative file name.
        Map<String, Map<String, String>> existingSections = extractAllSections(UniversalFileCreator
                .createDirectory(null, destination.getAbsolutePath()));

        // We patch the existing content into the newly generated wrappers.
        injectAllSections(existingSections, outputFiles, destination.getAbsolutePath());

        result.addAll(outputFiles);
        return true;
    }

    private void backupExistingDestination(String destinationDirectory) {
        UniversalFile destination = UniversalFileCreator
                .createDirectory(null, destinationDirectory);
        String backupFolder = generateBackupFolder();
        Log.debug(TAG, "Backing up current content of " + destinationDirectory + " to "
                + backupFolder);
        destination.saveAs(backupFolder);
    }

    private Map<String, Map<String, String>> extractAllSections(UniversalFile destination) {
        Map<String, Map<String, String>> result = new HashMap<String, Map<String, String>>();
        UniversalFile[] existingFiles = destination.listFilesRecursively();
        String basePath = destination.getAbsolutePath();

        for (UniversalFile existingFile : existingFiles) {
            String key = existingFile.getRelativePath(basePath);
            result.put(key, extractSections(existingFile));
        }
        return result;
    }

    private Map<String, String> extractSections(UniversalFile file) {
        Map<String, String> sections = new HashMap<String, String>();
        BufferedReader reader = new BufferedReader(new StringReader(file.getFileAsString()));

        String line;
        StringBuilder section = null;
        String currentKey = null;
        try {
            while ((line = reader.readLine()) != null) {
                if (line.contains(BEGIN_MARKER)) {
                    section = new StringBuilder();
                    currentKey = line.trim();
                    continue;
                }

                if (line.contains(END_MARKER)) {
                    if (section == null) {
                        Log.error(TAG, "Found end marker without matching starting marker: " + line);
                        continue;
                    }
                    String content = section.toString();

                    // Only add sections that are not empty.
                    if (!content.trim().isEmpty()) {
                        sections.put(currentKey, section.toString());
                    }
                    section = null;
                }

                if (section != null) {
                    section.append(line);
                    section.append('\n');
                }
            }
        } catch (IOException e) {
            Log.error(TAG, "Could not read file: " + e.getMessage());
        }
        return sections;
    }

    private void injectAllSections(Map<String, Map<String, String>> sections,
            List<OutputFile> files, String basePath) {
        for (OutputFile file : files) {
            String key = file.getRelativePath(basePath);
            if (sections.containsKey(key)) {
                injectSections(sections.get(key), file);
            }
        }
    }

    private void injectSections(Map<String, String> sections, OutputFile file) {
        BufferedReader reader = new BufferedReader(new StringReader(file.getData()));

        try {
            StringBuilder fileContent = new StringBuilder();
            String line;
            boolean doNotAdd = false;
            while ((line = reader.readLine()) != null) {
                if (!doNotAdd) {
                    fileContent.append(line);
                    fileContent.append('\n');
                }

                if (line.contains(BEGIN_MARKER)) {
                    String sectionKey = line.trim();
                    if (sections.containsKey(sectionKey)) {
                        fileContent.append(sections.get(sectionKey));
                        doNotAdd = true;
                    }
                }

                if (line.contains(END_MARKER)) {
                    if (doNotAdd) {
                        fileContent.append(line);
                        fileContent.append('\n');
                    }
                    doNotAdd = false;
                }
            }
            file.setData(fileContent.toString());
        } catch (IOException e) {
            Log.error(TAG, "Could not read file: " + e.getMessage());
        }
    }

    private static String generateBackupFolder() {
        return (new File(".cache" + File.separatorChar
                + dateFormatter.format(Calendar.getInstance().getTime()))).getAbsolutePath();
    }
}
