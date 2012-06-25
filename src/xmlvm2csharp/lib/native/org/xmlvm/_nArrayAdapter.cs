
namespace org.xmlvm {
    public interface _nIArray {
        int Length {
	    get;
	}
    }

    public class _nArrayAdapter<T> : global::java.lang.Object,org.xmlvm._nIArray {
	private T[] _myArray;

	public _nArrayAdapter(T[] myArray) {
	    this._myArray = myArray;
	}

	public T[] getCSharpArray() {
	    return this._myArray;
	}
	
	public T this[int index] {
	    get {
	        return this._myArray[index];
	    }

            set {
	        this._myArray[index] = value;
	    }
	}

	public int Length {
	    get {
                return this._myArray.Length;
            }
        }
    }
}