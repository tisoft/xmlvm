/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

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
