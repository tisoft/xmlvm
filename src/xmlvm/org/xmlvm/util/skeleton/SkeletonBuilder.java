
package org.xmlvm.util.skeleton;

/**
 * 
 * @author teras
 */
public class SkeletonBuilder {

    public static void main(String[] args) {
        ClassList list = new ClassList("org.xmlvm.iphone");
        ClassSkeleton sk = new ClassSkeleton(list.get(57));
        // for (Class c : list) {
        // ClassSkeleton sk = new ClassSkeleton(c);
        // System.out.println();
        // }
    }
}
