
package org.xmlvm.clr;

import java.util.Hashtable;


class Delegate
{
	public int uid; 
    public String classType;
    public String method;
    public String signature;
    
    public Delegate(int uid, String classType, String method, String signature)
    {
    	this.uid = uid;
        this.classType = classType;
        this.method = method;
        this.signature = signature;
    }
}


public class DelegateManager
{

	static private Hashtable<Integer, Delegate> sigsByInt = new Hashtable<Integer, Delegate>();
	static private Hashtable<String, Delegate> sigs = new Hashtable<String, Delegate>();
	static private int curUid = 0; 

    static public int registerFunctionPtr(String classType, String method,
            String signature)
    {
    	String key = classType + "-" + method + "-" + signature;
    	
    	if(sigs.containsKey(key))
    	{
    	return ((Delegate)sigs.get(key)).uid;
    	}
    	else
    	{
    	Integer tmpId = new Integer(curUid++);
    	Delegate toAdd =new Delegate(tmpId,classType, method, signature);
    	sigs.put(key,toAdd);
    	sigsByInt.put(tmpId,toAdd);
        return tmpId;   
    	}
       
    }


    static public String getClassType(int i)throws Exception
    {
    	if(!sigsByInt.containsKey(i))
    	{
    	throw new Exception("Not found " + i);
    	}
        return sigsByInt.get(i).classType;
    }
    static public String getMethod(int i)throws Exception
    {
    	if(!sigsByInt.containsKey(i))
    	{
    	throw new Exception("Not found " + i);
    	}
        return sigsByInt.get(i).method;
    }
    static public String getSignature(int i)throws Exception
    {
    	if(!sigsByInt.containsKey(i))
    	{
    	throw new Exception("Not found " + i);
    	}
    	return sigsByInt.get(i).signature;
    }
}
