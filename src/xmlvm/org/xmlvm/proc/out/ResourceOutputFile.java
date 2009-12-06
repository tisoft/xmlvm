
package org.xmlvm.proc.out;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.util.FileUtil;

/**
 * This output file is responsible to copy resources to a project
 *
 * @author teras
 */
public class ResourceOutputFile extends OutputFile {

    private String sourcePath = "";

    /**
     * Create a new resource file
     * 
     * @param from
     *            Source directory
     * @param to
     *            Destination directory
     * @param fname
     *            Filename to copy
     */
    public ResourceOutputFile(String from, String to, String fname) {
        setFileName(fname);
        setLocation(to);
        this.sourcePath = from;
    }

    /**
     * Get the source directory
     * 
     * @return the source directory
     */
    public String getSourcePath() {
        return sourcePath;
    }

    /**
     * Set the source directory
     * 
     * @param sourcePath
     *            the source directory
     */
    public void setSourcePath(String sourcePath) {
        this.sourcePath = sourcePath;
    }

    /**
     * Get a list of resources from one directory. All files in this directory
     * are taken into account
     * 
     * @param fromPath
     *            Source directory
     * @param toPath
     *            Destination directory
     * @return list of resource files found in source directory
     */
    public static List<ResourceOutputFile> listResources(String fromPath, String toPath) {
        ArrayList<ResourceOutputFile> list = new ArrayList<ResourceOutputFile>();
        File from = new File(fromPath);
        if (from.isFile()) {
            list.add(new ResourceOutputFile(from.getParent(), toPath, from.getName()));
        } else {
            File[] entries = from.listFiles();
            if (entries != null) {
                for (int i = 0; i < entries.length; i++) {
                    if (entries[i].isFile()) {
                        list.add(new ResourceOutputFile(fromPath, toPath, entries[i].getName()));
                    }
                }
            }
        }
        return list;
    }

    /**
     * Perform the actual action of this ResourceOutputFile (i.e. write file to
     * disk)
     * 
     * @return true, if no errors exist
     */
    public boolean performAction() {
        return FileUtil.copyFile(new File(getSourcePath(), getFileName()), new File(getLocation(),
                getFileName()));
    }
}
