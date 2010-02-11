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

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class NSData {

    private String data;

    public NSData(InputStream in) {
        readData(in);
    }

    protected NSData() {
        this.data = "";
    }

    private void readData(InputStream in) {
        data = "";
        String line;
        BufferedReader reader = new BufferedReader(new InputStreamReader(in));
        try {
            while ((line = reader.readLine()) != null) {
                data += line;
                data += System.getProperty("line.separator");
            }
            reader.close();
        } catch (IOException e) {
            // do nothing
        }
    }

    public InputStream getInputStream() {
        return new ByteArrayInputStream(data.getBytes());
    }

    public String toString() {
        return this.data;
    }

    public static NSData dataWithContentsOfFile(String path) {
//        return new NSData(NSData.class.getResourceAsStream("/" + path));
        try {
            return new NSData(new FileInputStream(new File(path)));
        } catch (FileNotFoundException e) {
            return null;
        }
    }
}
