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
import java.util.Arrays;

import org.xmlvm.main.Arguments;
import org.xmlvm.plugins.c.AugmentedCOutputProcess;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.out.build.MakeFile;
import org.xmlvm.proc.out.build.DataResources;
import org.xmlvm.util.FileMerger;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * A process that takes C files and creates a compilable POSIX project that
 * includes all required resources.
 */
public class SDLOutputProcess extends XmlvmProcessImpl {

    private static final String PLATFORM         = "sdl";

    private final static String SRCFILE_LOCATION = File.separator + "src" + File.separator;

    private static final UniversalFile SDL_COMPAT_LIB       = UniversalFileCreator.createDirectory(
            "/sdl/wrapper-lib.jar",
            "src/xmlvm2c/lib/sdl-wrapper");

    private static final String[] DATA_RESOURCES = { "LiberationSans-Regular.ttf" };
    
    /**
     * Initializes the {@link SDLOutputProcess}.
     */
    public SDLOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(AugmentedCOutputProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        replaceCompatLib(bundle);
        
        // Locate generated sources in source directory
        for (OutputFile file : bundle.getOutputFiles()) {
            file.setLocation(arguments.option_out() + SRCFILE_LOCATION);
        }
        
        // Copy over any necessary resources
        for (OutputFile file : new DataResources(PLATFORM, DATA_RESOURCES).composeResourceFiles(arguments)) {
            bundle.addOutputFile(file);
        }

        MakeFile makefile = new MakeFile(PLATFORM);
        bundle.addOutputFile(makefile.composeBuildFiles(arguments));
        return true;
    }
    
    private void replaceCompatLib(BundlePhase2 resources) {
        UniversalFile[] sdlFiles = SDL_COMPAT_LIB.listFilesRecursively();
        String skeletonPath = new File(arguments.option_out()).getAbsolutePath();
        String implementationPath = SDL_COMPAT_LIB.getAbsolutePath();
        FileMerger merger = new FileMerger(resources.getOutputFiles(), skeletonPath,
                Arrays.asList(sdlFiles), implementationPath);
        merger.process();
    }

}
