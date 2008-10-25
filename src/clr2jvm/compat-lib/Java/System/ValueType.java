
package System;

import java.lang.reflect.Field;


public class ValueType
    extends Object
{
	
	static public long __UNBOX(ValueType vt)
	{
		Class vtClass = vt.getClass();
		Field valueField = null;
		long value = -1;
		
		try {
			valueField = vtClass.getField("value__");
		 
			if (valueField == null) 
			{
				System.err.println("Error during __UNBOX: Expected a class inheriting from Enum");		 
			}
			else
			{
				value = valueField.getLong(vt);
			}
		} catch (NoSuchFieldException ex) {
            System.err.println("Error during __UNBOX: Expected a class inheriting from Enum");
        } catch (IllegalAccessException ex) {
        	System.err.println("Error during __UNBOX: Enum's value was not found");
        }
		
		return value;
	}

    static public void __COPY(ValueType from, ValueType to)
    {
        Class fromClass = from.getClass();
        Class toClass = to.getClass();
        for (Field fromField : fromClass.getFields()) {
            Field toField = null;
            try {
                toField = toClass.getField(fromField.getName());
            } catch (NoSuchFieldException ex) {
                // Do nothing
            }
            if (toField == null) continue;
            Class toType = toField.getType();
            Class fromType = fromField.getType();
            if (!toType.equals(fromType)) continue;
            try {
                toField.set(to, fromField.get(from));
            } catch (IllegalAccessException ex) {
                // Do nothing
            }
        }
    }



    public boolean Equals(Object o)
    {
        return this == o;
    }
}
