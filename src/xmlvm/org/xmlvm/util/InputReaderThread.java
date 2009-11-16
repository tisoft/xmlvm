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

package org.xmlvm.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;

/**
 * Takes the input of an {@link InputStream} and writes it to the given output
 * stream. Useful if e.g. the stream comes from a process.
 */
public class InputReaderThread extends Thread {
    private BufferedReader in;
    private PrintStream    out;
    private String         prefix;

    /**
     * Instantiates a new InputReaderThread.
     * 
     * @param inputStream
     *            the stream to read from
     * @param outStream
     *            the stream to write to
     * @param linePrefix
     *            a line prefix prepended to the output of each line to identify
     *            the process
     */
    public InputReaderThread(InputStream inputStream, PrintStream outStream, String linePrefix) {
        in = new BufferedReader(new InputStreamReader(inputStream));
        out = outStream;
        prefix = linePrefix;
    }

    @Override
    public void run() {
        String line;
        try {
            while ((line = in.readLine()) != null) {
                out.println(prefix + " > " + line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}