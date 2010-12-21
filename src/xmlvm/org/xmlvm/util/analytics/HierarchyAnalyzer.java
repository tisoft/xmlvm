package org.xmlvm.util.analytics;

import org.xmlvm.util.analytics.data.TypeHierarchy;
import org.xmlvm.util.analytics.data.Util;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;
import org.xmlvm.util.universalfile.UniversalFileFilter;

import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.rop.type.TypeList;

/**
 * The HierarchyAnalyzer takes a set of classes and analyzes their hierarchy. It
 * creates a {@link TypeHierarchy} object which allows for a comprehensive
 * analysis of type hierarchies in a library.
 */
public class HierarchyAnalyzer {
    private final String libraryPath;


    public static void main(String[] args) {
        // The library JAR or root directory should be given
        if (args.length != 1) {
            System.err
                    .println("Invalid usage.\nExpected: HierarchyAnalyer <filename.jar|directory>");
            System.exit(-1);
        }

        HierarchyAnalyzer analyzer = new HierarchyAnalyzer(args[0]);
        TypeHierarchy hierarchy = analyzer.analyze();

        System.out.println("Type hierarchy:");
        System.out.println(hierarchy.toString());
    }

    /**
     * Initialized the {@link HierarchyAnalyzer} with the given JAR file.
     * 
     * @param libraryPath
     *            The JAR file or root directory of the library to analyze.
     */
    public HierarchyAnalyzer(String libraryPath) {
        this.libraryPath = libraryPath;
    }

    /**
     * Performs the hierarchy analysis and returns the result.
     */
    public TypeHierarchy analyze() {
        // Extract all class files.
        UniversalFile library = UniversalFileCreator.createDirectory(null, libraryPath);
        UniversalFile[] classes = library.listFilesRecursively(new UniversalFileFilter() {
            @Override
            public boolean accept(UniversalFile file) {
                return file.getName().toLowerCase().endsWith(".class");
            }
        });
        System.out.println("Getting type hierarchy for " + classes.length + " classes.");

        TypeHierarchy result = new TypeHierarchy();
        final String basePath = library.getAbsolutePath();
        for (UniversalFile clazz : classes) {
            String fileName = clazz.getRelativePath(basePath).replace('\\', '.');
            DirectClassFile classFile = new DirectClassFile(clazz.getFileAsBytes(), fileName, false);
            classFile.setAttributeFactory(StdAttributeFactory.THE_ONE);
            classFile.getMagic();

            final int DOT_CLASS_LENGTH = ".class".length();
            String className = fileName.substring(0, fileName.length() - DOT_CLASS_LENGTH).replace(
                    '/', '.');

            // Super-class.
            if (classFile.getSuperclass() != null) {
                String superClassName = Util.parseClassName(
                        classFile.getSuperclass().getClassType().getClassName()).toString();
                result.addDirectSubType(className, superClassName);
            }

            // Interfaces
            TypeList interfaces = classFile.getInterfaces();
            if (interfaces != null) {
                for (int i = 0; i < interfaces.size(); i++) {
                    String interfaceName = Util
                            .parseClassName(interfaces.getType(i).getClassName()).toString();
                    result.addDirectSubType(className, interfaceName);
                }
            }
        }
        return result;
    }
}
