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

package org.xmlvm.iphone;

import java.io.File;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;
import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class NSFileManager extends NSObject {

    private static final NSFileManager defaultMngr = new NSFileManager();


    private NSFileManager() {
    }

    public static NSFileManager defaultManager() {
        return defaultMngr;
    }

    public boolean fileExistsAtPath(String path) {
        return new File(path).exists();
    }

    public boolean createDirectoryAtPath(String path, boolean createIntermediates,
            Map<String, String> attributes) {
        if (createIntermediates)
            return new File(path).mkdirs();
        else
            return new File(path).mkdir();
    }

    public List<String> contentsOfDirectoryAtPath(String path, NSErrorHolder error) {
        List<String> files = new ArrayList<String>();
        for (String f : new File(path).list()) {
            files.add(f);
        }
        return files;
    }
}
