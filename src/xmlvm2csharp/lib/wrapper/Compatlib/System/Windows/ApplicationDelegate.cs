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

            initializeDirectories();
        }

	//TODO add further resource directories here
        private void initializeDirectories()
        {
            list = new java.util.ArrayList();
            list.@this();
            list.add(org.xmlvm._nUtil.toJavaString("drawable"));
        }

        public static object ListDirectory(java.lang.String n1)
        {
            return list;
        }
    }
}
