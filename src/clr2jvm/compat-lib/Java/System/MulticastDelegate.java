package System;

import java.util.ArrayList;
import java.util.List;

import java.lang.reflect.Method;
import org.xmlvm.clr.DelegateManager;

public class MulticastDelegate extends Delegate {

	public Object _targetObj;
	List<java.lang.Integer> targets = new ArrayList<java.lang.Integer>();

	protected MulticastDelegate()
	{
		this(null, -1);
	}
	protected Delegate RemoveImpl(Delegate d) throws Exception
	{
        MulticastDelegate mcast = (MulticastDelegate)d;
        
        for(int i : mcast.targets)
        {
        	Integer iBox = i; 
        	if(!targets.remove(iBox))
        	{
        		throw new Exception("Not found" + iBox);
        	}
        }
        
    	if(targets.size() != 0)
    	{
    	return this;
    	}
    	else
    	{
    	return null;
    	}
    
        
	}
	protected Delegate CombineImpl(Delegate d)
	{
        MulticastDelegate mcast = (MulticastDelegate)d;
        this.targets.addAll(mcast.targets);
		return this;
	}
	public MulticastDelegate(Object targetObj, int signatureIndex)
	{
		this._targetObj = targetObj;
		this.targets.add(signatureIndex);
    }
	
	/**
	 * A helper method that will be used by children of MulticastDelegate
	 * in their 'Invoke' method.
	 * This method will perform the actual invocation of the desired method
	 * (managed by the DelegateManager) at runtime.
	 * 
	 * @param params  The arguments supplied to the 'Invoke' method.
	 */
	protected void helpInvoke(java.lang.Object[] params) throws Exception
	{
		for(int _signatureIndex:targets)
		{
		// A signature string could look like the following: "void;System.Object;System.EventArgs"
		java.lang.String signature = DelegateManager.getSignature(_signatureIndex);
		java.lang.String method = DelegateManager.getMethod(_signatureIndex);

		// Get each piece of the signature
		java.lang.String signatureValues[] = signature.split(";");
		Class[] paramTypes = new Class[signatureValues.length-1];


		// Save the argument types
		for (int i = 1; i < signatureValues.length; i++)
		{
			paramTypes[i - 1] = Class.forName(signatureValues[i]);
		}

	
		// Class targetClass = _targetObj.getClass();
		// For a static method, null will be pushed onto the stack
		// instead of the class.  Thus, the target object will be null
		// in this case, so we have to use DelegateManager to get the 
		// name of the target class
		java.lang.String className = DelegateManager.getClassType(_signatureIndex);
		Class targetClass = Class.forName(className);
		
		Method m = targetClass.getDeclaredMethod(method, paramTypes);

		if (!m.isAccessible())
			m.setAccessible(true);

		m.invoke(_targetObj, params);
		}
		
	} // end helpInvoke
	
} // end MulticastDelegate
