package org.xmlvm.main;

/**
 * All possible targets for the cross-compilation.
 */
public enum Targets {

    NONE, XMLVM, JVM, CLR, DFA, CLASS, EXE, JS, CPP, PYTHON, OBJC, QOOXDOO, IPHONE, IPHONEANDROID, IPHONETEMPLATE, PREANDROID;

    public static Targets getTarget(String target) {
        if (target.equals("android-on-iphone"))
            target = "IPHONEANDROID";
        if (target.equals("palmpre"))
            target = "PREANDROID";
        target = target.toUpperCase().replace("-", "").replace(":", "");
        try {
            return Targets.valueOf(target);
        } catch (IllegalArgumentException ex) {
        }
        return null;
    }
}
