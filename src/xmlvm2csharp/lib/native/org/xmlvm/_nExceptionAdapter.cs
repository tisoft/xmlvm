namespace org.xmlvm {
    public class _nExceptionAdapter : global::System.Exception{
    	private object _javaException;
        public _nExceptionAdapter(object t) : base() {_javaException=t;}
        public _nExceptionAdapter(string msg, object t) : base(msg) {
            _javaException = t;
        }

	public object getJavaException() {return _javaException;}
    }
}