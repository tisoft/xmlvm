/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
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

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcess;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.in.InputProcess.ClassInputProcess;
import org.xmlvm.proc.in.file.ClassFile;

import com.android.dx.dex.cf.CfOptions;
import com.android.dx.dex.cf.CfTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;

/**
 * This process takes Java Bytecode and turns it into the DEX format.
 */
public class DexOutputProcess extends XmlvmProcessImpl<XmlvmProcess<?>> {

    private static final String DEX_ENDING  = ".dex";

    private List<OutputFile>    outputFiles = new ArrayList<OutputFile>();


    public DexOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(ClassInputProcess.class);
        addSupportedInput(JavaByteCodeOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        List<XmlvmProcess<?>> preprocesses = preprocess();

        for (XmlvmProcess<?> process : preprocesses) {
            for (OutputFile preOutputFile : process.getOutputFiles()) {
                OutputFile outputFile = generateDexFile(preOutputFile);
                if (outputFile == null) {
                    return false;
                }
                outputFiles.add(outputFile);
            }
        }
        return true;
    }

    private OutputFile generateDexFile(OutputFile classFile) {
        if (!classFile.getFullPath().startsWith(arguments.option_out())) {
            Log.error("DexOutputProcess: Something is wrong with the class output path.");
            return null;
        }
        String relativePath = classFile.getFullPath()
                .substring(arguments.option_out().length() + 1);

        // Remove a starting slash or backslash.
        if (relativePath.startsWith("/") || relativePath.startsWith("\\")) {
            relativePath = relativePath.substring(1);
        }
        Log.debug("DExing:" + relativePath);

        CfOptions options = new CfOptions();
        options.strictNameCheck = false;
        ClassDefItem item = CfTranslator.translate(relativePath, classFile.getDataAsBytes(),
                options);
        DexFile dexFile = new DexFile();
        dexFile.add(item);
        try {
            byte[] rawDex = dexFile.toDex(null, false);
            OutputFile result = new OutputFile(rawDex);
            result.setLocation(classFile.getLocation());
            result.setFileName(classFile.getFileName().replace(ClassFile.CLASS_ENDING, DEX_ENDING));
            return result;
        } catch (IOException e) {
            e.printStackTrace();
            Log.error("Could not generate DEX file.");
        }
        return null;
    }
}
