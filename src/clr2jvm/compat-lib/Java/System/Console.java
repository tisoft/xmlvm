
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