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

package org.xmlvm.runtime;

/**
 * According to the Java specs, an array is a proper object, i.e., arrays
 * inherit all methods from java.lang.Object as well as implement interfaces
 * Cloneable and Serializable. In XMLVM, an array is represented by this class,
 * XMLVMArray. Whenever an array is created, class XMLVMArray is instantiated
 * with the proper parameters. However, it should be noted that this class is
 * not accessible from a Java program. It is only used by the appropriate DEX
 * instructions.
 */
final public class XMLVMArray implements Cloneable, java.io.Serializable {

    private static final long serialVersionUID = -7775139464511217031L;

    /**
     * The class object that represents the type of this array.
     */
    @SuppressWarnings("unused")
    private Class<?>          type;

    /**
     * The length of the array.
     */
    @SuppressWarnings("unused")
    private int               length;

    /**
     * On the native layer, field <code>array</code> represents a C pointer to
     * the data of the array.
     */
    @SuppressWarnings("unused")
    private Object            array;


    native private static void initNativeLayer();


    static {
        initNativeLayer();
    }


    private XMLVMArray(Class<?> type, int length, Object array) {
        this.type = type;
        this.length = length;
        this.array = array;
    }

    @SuppressWarnings("unused")
    native static private XMLVMArray createSingleDimension(Class<?> type, int size);

    @SuppressWarnings("unused")
    native static private XMLVMArray createSingleDimensionWithData(Class<?> type, int size,
            Object data);

    @SuppressWarnings("unused")
    native static private XMLVMArray createMultiDimensions(Class<?> type, XMLVMArray dimensions);

    @SuppressWarnings("unused")
    native static private void fillArray(XMLVMArray array, Object data);

    @Override
    native public Object clone();
}
