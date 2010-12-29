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

package org.xmlvm.iphone;

import java.io.File;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;
import org.xmlvm.XMLVMSkeletonOnly;

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
