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

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSData extends NSObject {

    private static final int READ_BUF_SIZE = 32767;
    private byte[]           data;


    @XMLVMIgnore
    public NSData(InputStream in) {
        readData(in);
    }

    protected NSData() {
        this.data = new byte[0];
    }

    private void readData(InputStream in) {
        List<byte[]> l = new ArrayList<byte[]>();
        int bytesRead = 0;
        int i;

        try {
            do {
                byte[] buf = new byte[READ_BUF_SIZE];
                i = in.read(buf);

                if (i > 0) {
                    l.add(buf);
                    bytesRead += i;
                }
            } while (i == READ_BUF_SIZE);

            data = new byte[bytesRead];
            int currentPos = 0;
            for (byte[] buf : l) {
                i = 0;
                while (i < buf.length && currentPos < bytesRead) {
                    data[currentPos++] = buf[i++];
                }
            }

            in.close();
        } catch (IOException ex) {
            // Do nothon
        }
    }

    @XMLVMIgnore
    public InputStream getInputStream() {
        return new ByteArrayInputStream(data);
    }

    public static NSData dataWithContentsOfFile(String path) {
        // If this marker appears in the path, then the resource needs to be
        // loaded out of a JAR file. We expect it in this case to be the JAR
        // file the app is run from.
        final String IN_JAR_MARKER = ".jar!";

        if (path.contains(IN_JAR_MARKER)) {
            int startOfResource = path.indexOf(IN_JAR_MARKER) + IN_JAR_MARKER.length();
            return new NSData(NSData.class.getResourceAsStream(path.substring(startOfResource)));
        } else {
            try {
                return new NSData(new FileInputStream(new File(path)));
            } catch (FileNotFoundException e) {
                return null;
            }
        }
    }

    public static NSData dataWithContentsOfURL(NSURL url) {
        // TODO : Java implementation
        return null;
    }

    public boolean writeToFile(String path, boolean atomically) {
        // TODO : Java implementation
        return false;
    }

    public int length() {
        return data.length;
    }

    public byte[] getBytes() {
        return data;
    }
}
