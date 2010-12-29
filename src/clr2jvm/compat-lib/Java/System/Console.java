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

package System;

import System.String;
import System.Enum;
import java.lang.reflect.Field;


public class Console
    extends Object
{
	

	static public void Write(long i)
	{
		System.out.print(i);
	}
	
	
	static public void Write(int i)
	{
		System.out.print(i);
	}
	
	
    static public void Write(float f)
    {
        System.out.print(f);
    }



    static public void Write(String s)
    {
        System.out.print(s.value);
    }
    
    
    
//  TODO: Add necessary Write for objects other than Enums
    static public void Write(Object o)
    {
    	Class enumClazz = null;
    	
    	try
    	{
    		enumClazz = Class.forName("System.Enum");
    	
    		if ( o.getClass().getSuperclass().equals(enumClazz) )
	    	{
	    		Field[] fields = o.getClass().getDeclaredFields();
	    		
	    		if ( fields.length < 2 )
	    		{
	    			System.err.println("Enum type has no data!");	
	    		}
	    		else
	    		{
	    			long value = -1;
	    			
	    			for ( Field f : fields )
	    			{
	    				if ( f.getName().equals("value__") )
	    				{
	    					value = f.getLong(o);
	    				}
	    			}
	    				
		    		if ( (value+1) < fields.length )
		    		{
		    			System.out.println(fields[(int)value+1].getName());
		    		}
		    		else
		    		{
		    			System.out.println(value);
		    		}
	    		}
	    	}
	    	else
	    	{
	    		System.out.print(o.ToString());
	    	}
    	}
    	catch ( ClassNotFoundException e )
    	{
    		System.err.println("Cannot find System.Enum");
    	}
    	catch (IllegalAccessException e)
		{
			System.err.println("Cannot access the value__ field for Enum type");			
		}
    }
    
    
    
    static public void WriteLine(long i)
    {
        System.out.println(i);
    }
    
    

    static public void WriteLine(int i)
    {
        System.out.println(i);
    }



    static public void WriteLine(float f)
    {
        System.out.println(f);
    }



    static public void WriteLine(String s)
    {
        System.out.println(s.value);
    }
    
    // TODO: Add necessary WriteLine for objects other than Enums
    static public void WriteLine(Object o)
    {
    	Class enumClazz = null;
    	
    	try
    	{
    		enumClazz = Class.forName("System.Enum");
    	
	    	if ( o.getClass().getSuperclass().equals(enumClazz) )
	    	{
	    		//System.out.println(o.getClass().getName());
	    		Field[] fields = o.getClass().getDeclaredFields();
	    		
	    		if ( fields.length < 2 )
	    		{
	    			System.err.println("Enum type has no data!");	
	    		}
	    		else
	    		{
	    			long value = -1;
	    			
	    			for ( Field f : fields )
	    			{
	    				if ( f.getName().equals("value__") )
	    				{
	    					value = f.getLong(o);
	    				}
	    			}
	    				
		    		if ( (value+1) < fields.length )
		    		{
		    			System.out.println(fields[(int)value+1].getName());
		    		}
		    		else
		    		{
		    			System.out.println(value);
		    		}
	    		}
	    	}
	    	else
	    	{
	    		System.out.println(o.ToString());
	    	}
    	}
    	catch ( ClassNotFoundException e )
    	{
    		System.err.println("Cannot find System.Enum");
    	}
    	catch (IllegalAccessException e)
		{
			System.err.println("Cannot access the value__ field for Enum type\n" + e.toString());			
		}
    }
}