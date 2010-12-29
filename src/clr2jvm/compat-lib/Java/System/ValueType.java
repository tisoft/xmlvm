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
