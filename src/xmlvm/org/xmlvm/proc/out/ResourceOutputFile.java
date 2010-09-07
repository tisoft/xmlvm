package org.xmlvm.proc.out;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.util.FileUtil;
import org.xmlvm.util.universalfile.UniversalFile;

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
        super((UniversalFile) null);
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
     *            Source directory. If it is receeded by "/" then the contents
     *            of this directory will be copied. if not, the directory as a
     *            whole will be copied.
     * @param toPath
     *            Destination directory
     * @return list of resource files found in source directory
     */
    public static List<ResourceOutputFile> listResources(String fromPath, String toResPath,
            String toAppPath) {
        ArrayList<ResourceOutputFile> list = new ArrayList<ResourceOutputFile>();
        File from = new File(fromPath);
        if (from.isFile() || fromPath.endsWith(File.separator)) {
            addEntries(from, toResPath, toAppPath, false, list);
        } else {
            addEntries(from, toResPath, toAppPath, true, list);
        }
        return list;
    }

    /**
     * Recursively add resource files
     * 
     * @param from
     *            The file to copy from - if it is a directory, copy all
     *            contents
     * @param toPath
     *            Output directory
     * @param use_directory
     *            If this flag is set, then the directory name is used when
     *            creating output file list
     * @param list
     *            A list where all files to be copied are stored
     */
    private static void addEntries(File from, String toResPath, String toAppPath,
            boolean use_directory, ArrayList<ResourceOutputFile> list) {
        if (from.isFile()) {
            addSingleEntry(from.getParent(), toResPath, toAppPath, from.getName(), list);
        } else if (from.isDirectory()) {
            File[] entries = from.listFiles();
            if (entries != null) {
                if (use_directory) {
                    toResPath += File.separator + from.getName();
                }
                for (int i = 0; i < entries.length; i++) {
                    addEntries(entries[i], toResPath, toAppPath, true, list);
                }
            }
        }
    }

    private static void addSingleEntry(String parent, String toResPath, String toAppPath,
            String name, ArrayList<ResourceOutputFile> list) {
        if (name.endsWith(".c") || name.endsWith(".h") || name.endsWith(".cpp")
                || name.endsWith(".c++") || name.endsWith(".m")) {
            list.add(new ResourceOutputFile(parent, toAppPath, name));
        } else {
            list.add(new ResourceOutputFile(parent, toResPath, name));
        }
    }

    /**
     * Perform the actual action of this ResourceOutputFile (i.e. write file to
     * disk)
     * 
     * @return true, if no errors exist
     */
    @Override
    public boolean write() {
        return FileUtil.copyFile(new File(getSourcePath(), getFileName()), new File(getLocation(),
                getFileName()));
    }
}
