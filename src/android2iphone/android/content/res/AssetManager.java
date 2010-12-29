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

package android.content.res;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.xmlvm.iphone.NSBundle;


public/* abstract */class AssetManager {

    private static final String ASSETS_DIR = "assets/";
    
    public final AssetFileDescriptor openFd(String fileName) throws IOException {
        String resourceName = getResourceName(fileName);
        String resourceDir = getResourceDirectory(fileName);
        String filePath = NSBundle.mainBundle().pathForResource(resourceName, null, resourceDir);
        File f = new File(filePath);
        if (!f.exists()) {
            throw new FileNotFoundException();
        }
        return new AssetFileDescriptor(f);
    }
    
    private String getResourceName(String filePath) {
        int i = filePath.lastIndexOf('/');
        return i >= 0 ? filePath.substring(i + 1) : filePath;
    }

    private String getResourceDirectory(String filePath) {
        String fileName = ASSETS_DIR + filePath;
        int i = fileName.lastIndexOf('/');
        return i >= 0 ? fileName.substring(0, i) : null;
    }


}
