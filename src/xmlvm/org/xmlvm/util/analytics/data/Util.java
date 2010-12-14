package org.xmlvm.util.analytics.data;

import org.xmlvm.util.universalfile.UniversalFile;

/**
 * Common functionality used for analytical puproses.
 */
public class Util {

    public static class JarFileData {
        public final UniversalFile[] classes;
        public final String          basePath;


        public JarFileData(UniversalFile[] classes, String basePath) {
            this.classes = classes;
            this.basePath = basePath;
        }
    }


    /**
     * A little helper class that contains package- and class name.
     */
    public static class PackagePlusClassName {
        public String packageName = "";
        public String className   = "";


        public PackagePlusClassName(String className) {
            this.className = className;
        }

        public PackagePlusClassName(String packageName, String className) {
            this.packageName = packageName;
            this.className = className;
        }

        @Override
        public String toString() {
            if (packageName.isEmpty()) {
                return className;
            } else {
                return packageName.replace('/', '.') + "." + className;
            }
        }
    }


    private Util() {
    }

    /**
     * Converts a class name in the form of a/b/C into a
     * {@link PackagePlusClassName} object.
     */
    public static PackagePlusClassName parseClassName(String packagePlusClassName) {
        int lastSlash = packagePlusClassName.lastIndexOf('/');
        if (lastSlash == -1) {
            return new PackagePlusClassName(packagePlusClassName);
        }

        String className = packagePlusClassName.substring(lastSlash + 1).replace('/', '.');
        String packageName = packagePlusClassName.substring(0, lastSlash);

        return new PackagePlusClassName(packageName, className);
    }
}
