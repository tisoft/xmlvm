
package org.apache.tools.ant;

import org.apache.tools.ant.property.GetProperty;

public class PropertyHelper implements GetProperty {

    public static PropertyHelper getPropertyHelper(Project project) {
        return null;
    }

    public Object getProperty(String name) {
        return null;
    }

    public synchronized boolean setProperty(String ns, String name, Object value, boolean verbose) {
        return false;
    }
}
