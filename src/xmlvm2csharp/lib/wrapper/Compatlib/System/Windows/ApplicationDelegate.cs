using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using gen;

namespace Compatlib.System.Windows
{
    public class ApplicationDelegate : global::System.Windows.Application
    {
        public static global::org.xmlvm.acl.wp7.WP7AndroidAppLauncher appClass;
        private static global::java.util.ArrayList list;

        public ApplicationDelegate()
        {
            appClass = new global::org.xmlvm.acl.wp7.WP7AndroidAppLauncher();
            appClass.@this();
        }

        private static void initializeDirectories()
        {
            list = new java.util.ArrayList();
            list.@this();

            for (int i = 0; i < FileList.list.Length; i++) {
                list.add(org.xmlvm._nUtil.toJavaString(FileList.list[i]));
            }
        }

        public static object ListFileSystem()
        {
        	if (list == null) {
            	initializeDirectories();
           	}
           	
            return list;
        }
    }
}
