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
package org.xmlvm.ant;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.xmlvm.ant.utils.Log;

/**
 * This is an ant task which updates only files that have changed. Thus it is
 * possible to compile only files that have actually changed, and not all files
 * every time.
 */
public class Updater extends Task {

    private File    src;
    private File    dest;
    private boolean clean = false;


    /**
     * Set the destination directory where changed files will be put
     * 
     * @param dest
     */
    public void setDest(File dest) {
        this.dest = dest;
    }

    /**
     * Set the source directory of files, to check if they have changed
     * 
     * @param src
     */
    public void setSrc(File src) {
        this.src = src;
    }

    /**
     * Clean the destination directory of files that do not exist any more in
     * the source directory
     * 
     * @param clean
     */
    public void setClean(boolean clean) {
        this.clean = clean;
    }

    @Override
    /**
     * Execute the ant task
     */
    public void execute() throws BuildException {
        if (src == null) {
            throw new BuildException("Src directory should be defined.");
        }
        if (dest == null) {
            throw new BuildException("Dest directory should be defined.");
        }
        if (!src.exists()) {
            throw new BuildException("Src directory does not exist.");
        }
        System.out.println("Updating from " + src.getPath() + " to " + dest.getPath());
        check(src, dest);
    }

    private void check(File from, File to) {
        if (!from.exists()) {
            throw new RuntimeException("Unable to find file " + from.getPath());
        }
        if (!to.exists()) {
            Log.debug("Copying from " + from.getPath() + " to " + to.getPath());
            copy(from, to);
            return;
        }

        if (from.isFile() && to.isFile()) {
            if (!equals(from, to)) {
                Log.debug("Copying different files from " + from.getPath() + " to " + to.getPath());
                delete(to);
                copy(from, to);
            }
        } else if (from.isFile()) {
            Log.debug("Adding file " + from.getPath() + " to " + to.getPath());
            delete(to);
            copy(from, to);
        } else if (to.isFile()) {
            Log.debug("Copying directory " + from.getPath() + " to file " + to.getPath());
            delete(to);
            copy(from, to);
        } else {
            HashMap<String, File> fromH = getHashList(from);
            HashMap<String, File> toH = getHashList(to);
            for (String fname : fromH.keySet()) {
                if (toH.containsKey(fname)) {
                    check(fromH.get(fname), toH.get(fname));
                    toH.remove(fname);
                } else {
                    copy(fromH.get(fname), new File(to, fname));
                }
            }
            if (clean) {
                for (File del : toH.values()) {
                    delete(del);
                }
            }
        }
    }

    private HashMap<String, File> getHashList(File dir) {
        HashMap<String, File> ret = new HashMap<String, File>();
        File[] list = dir.listFiles();
        for (int i = 0; i < list.length; i++) {
            ret.put(list[i].getName(), list[i]);
        }
        return ret;
    }

    private boolean equals(File from, File to) {
        String fromS = read(from.getParent(), from.getName());
        String toS = read(to.getParent(), to.getName());
        return (fromS.equals(toS));
    }

    private void copy(File from, File to) {
        if (to.exists()) {
            throw new RuntimeException("Can not override file " + to.getPath());
        }
        if (from.isDirectory()) {
            to.mkdirs();
            File[] list = from.listFiles();
            for (int i = 0; i < list.length; i++) {
                copy(list[i], new File(to, list[i].getName()));
            }
        } else {
            String fromS = read(from.getParent(), from.getName());
            write(to.getPath(), fromS);
        }
    }

    private boolean delete(File current) {
        if (current.isFile()) {
            return current.delete();
        }
        boolean status = true;
        if (current.isDirectory()) {
            File[] list = current.listFiles();
            for (int i = 0; i < list.length; i++) {
                if (!delete(list[i])) {
                    status = false;
                    Log.error("Unable to delete " + list[i].getPath());
                }
            }
        }
        if (!current.delete()) {
            status = false;
        }
        return status;
    }

    private static String read(String path, String filename) {
        BufferedReader in = null;
        final StringBuffer data = new StringBuffer();
        try {
            File f = new File(path, filename);
            if (f != null) {
                in = new BufferedReader(new InputStreamReader(new FileInputStream(f), "UTF-8"));
                String line;
                while ((line = in.readLine()) != null) {
                    data.append(line).append('\n');
                }
            }
        } catch (IOException ex) {
            Log.error(ex.getMessage());
        } finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
            }
        }
        return data.toString();
    }

    private static boolean write(String outfile, String data) {
        boolean status = false;
        BufferedWriter out = null;
        try {
            out = new BufferedWriter(new FileWriter(outfile));
            out.append(data);
            status = true;
        } catch (IOException ex) {
            Log.error(ex.getMessage());
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
            } catch (IOException ex) {
            }
        }
        return status;
    }
}
