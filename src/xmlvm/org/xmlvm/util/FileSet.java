
package org.xmlvm.util;


import java.io.*;
import java.util.*;
import java.util.regex.*;



public class FileSet
    implements Iterable<File>, Iterator<File>
{

    private File[]            fileList;
    private final Stack<File> paths = new Stack<File>();
    private final Pattern     wildcard;
    private boolean           recurseFolders;
    private Iterator<File>    currentIterator;



    public FileSet(String filePattern)
    {
        File f = new File(filePattern);
        File path = f.getParentFile() == null ? new File(".") : f
                .getParentFile();
        paths.push(path);
        String regex = "";
        recurseFolders = false;
        String fname = f.getName();
        for (int i = 0; i < fname.length(); i++) {
            switch (fname.charAt(i)) {
                case '.':
                    regex += "\\.";
                    break;
                case '?':
                    regex += '.';
                    recurseFolders = true;
                    break;
                case '*':
                    regex += ".*";
                    recurseFolders = true;
                    break;
                default:
                    regex += fname.charAt(i);
            }
        }
        wildcard = Pattern.compile(regex);
        fillUpFileList();
    }



    private void fillUpFileList()
    {
        if (paths.empty()) {
            fileList = null;
            currentIterator = new Iterator<File>() {

                public boolean hasNext()
                {
                    return false;
                }



                public void remove()
                {
                }



                public File next()
                {
                    return null;
                }
            };
            return;
        }
        File folder = paths.pop();
        fileList = folder.listFiles(new FileFilter() {

            public boolean accept(File pathname)
            {
                if (recurseFolders && pathname.isDirectory())
                    paths.push(pathname);
                return wildcard.matcher(pathname.getName()).matches();
            }
        });
        currentIterator = new Iterator<File>() {

            int i = 0;



            public boolean hasNext()
            {
                return i < fileList.length;
            }



            public File next()
            {
                return fileList[i++];
            }



            public void remove()
            {
            }
        };
    }



    public void remove()
    {
    }



    public Iterator<File> iterator()
    {
        return this;
    }



    public boolean hasNext()
    {
        while (!currentIterator.hasNext() && !paths.empty())
            fillUpFileList();
        return currentIterator.hasNext();
    }



    public File next()
    {
        if (!hasNext())
            return null;
        return currentIterator.next();
    }
}
