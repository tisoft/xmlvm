namespace org.xmlvm {
    public class _nUtil {

        public static java.lang.String toJavaString(global::System.String str) {
	        java.lang.String result = new java.lang.String();
	        result.@this(new org.xmlvm._nArrayAdapter<char>(str.ToCharArray()));
	        return result;
	    }

        public static global::System.String toNativeString(java.lang.String str) {
            return new global::System.String(((org.xmlvm._nArrayAdapter<char>) str.toCharArray()).getCSharpArray());
        }

        public static string nativeToJavaName(string nativeName, bool isField) {
            string result = nativeName.Replace("_2","$");
            if(isField) {
                result = result.Replace("_f", null);
            }
            // note this has to be done last:
            result = result.Replace("_1", "_");
            return result;
        }

        public static string javaToNativeName(string javaName, bool isField) {
            string result = javaName;
            // note this has to be done first:
            result = result.Replace("_", "_1");
            result = result.Replace("$", "_2");
            if(isField) {
                result = "_f" + result;
            }
            return result;
        }

        public static bool initWasCalled = false;

        public static void initOnce() {
            if(!initWasCalled) {
                initWasCalled = true;
                java.io.PrintStream myOutputStream = new java.io.PrintStream();
                myOutputStream.@this(new org.xmlvm.runtime.XMLVMOutputStream());
                java.lang.System.setOut(myOutputStream);
                java.lang.System.setErr(myOutputStream);
            }
        }
    }
}