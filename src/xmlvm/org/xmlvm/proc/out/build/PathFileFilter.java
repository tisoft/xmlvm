
package org.xmlvm.proc.out.build;

import java.io.File;
import java.io.FileFilter;

/**
 * @author teras
 */
public class PathFileFilter implements FileFilter {
    private String inLocation;

    public PathFileFilter(String inLocation) {
        this.inLocation = inLocation;
    }

    public boolean accept(File pathname) {
        return pathname.getParent().endsWith(inLocation);
    }

}
