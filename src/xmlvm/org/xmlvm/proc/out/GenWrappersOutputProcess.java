/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.proc.out;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.plugins.c.COutputProcess;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcess;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.util.FileMerger;
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
public class GenWrappersOutputProcess extends XmlvmProcessImpl {

    private static final String           TAG           = GenWrappersOutputProcess.class
                                                                .getSimpleName();

    private final static SimpleDateFormat dateFormatter = new SimpleDateFormat(
                                                                "yyyy-MM-dd-hh.mm.ss");


    public GenWrappersOutputProcess(Arguments arguments, Class<? extends XmlvmProcess> clazz) {
        super(arguments);
        addSupportedInput(clazz);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        List<OutputFile> outputFiles = new ArrayList<OutputFile>();
        outputFiles.addAll(bundle.getOutputFiles());
        bundle.removeAllOutputFiles();

        File destination = new File(arguments.option_out());

        // If the destination doesn't exist or has no content, we simply copy
        // the generated wrappers over.
        if (!destination.exists() || (destination.isDirectory() && destination.list().length == 0)) {
            bundle.addOutputFiles(outputFiles);
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

        // We then use the FileMerger to extract existing sections from the
        // files in the destination directory. These sections are then merged
        // into the generated files. The resulting files are then written to the
        // destination directory.
        String destPath = destination.getAbsolutePath();
        UniversalFile destinationDirectory 
                = UniversalFileCreator.createDirectory(null,destPath);
        UniversalFile[] implementations = destinationDirectory.listFilesRecursively();
        FileMerger fileMerger
                = new FileMerger(outputFiles, null,
                                 Arrays.asList(implementations), destPath);
        fileMerger.process();

        bundle.addOutputFiles(outputFiles);
        Log.debug(TAG, "Processed files using FileMerger");
        return true;
    }

    /**
     * In order to allow easy rollback, in case something went wrong or the old
     * state needs to be reverted to, this method takes the given destination
     * directory and backs it up recursively to the cache directory of the
     * project.
     * 
     * @param destinationDirectory
     *            the directory to back up
     */
    private void backupExistingDestination(String destinationDirectory) {
        UniversalFile destination = UniversalFileCreator
                .createDirectory(null, destinationDirectory);
        String backupFolder = generateBackupFolderName();
        Log.debug(TAG, "Backing up current content of " + destinationDirectory + " to "
                + backupFolder);
        destination.saveAs(backupFolder);
    }

    /**
     * Generates a timestamped folder name that can be used to store temporary
     * backups in.
     */
    private static String generateBackupFolderName() {
        return (new File(".cache" + File.separatorChar
                + dateFormatter.format(Calendar.getInstance().getTime()))).getAbsolutePath();
    }
}
