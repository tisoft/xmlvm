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

package org.xmlvm.test.ios;

import org.xmlvm.ios.CGRect;
import org.xmlvm.ios.NSString;
import org.xmlvm.ios.NSMutableDictionary;

/**
 * Test for org.xmlvm.ios.CGRect.
 */
public class CGRectTest {

    private static NSMutableDictionary myDict = new NSMutableDictionary(3);

    private static void testDictionary(){
        NSString key = new NSString("key",  NSString.Type.String);
        NSString value = new NSString ("value",  NSString.Type.String);
        myDict.setObject(value, key);  
        System.out.println(myDict.count());
    }
    
    public static void main(String[] args) {
        CGRect rect = new CGRect(1, 2, 3, 4);
        
        CGRect rect2 = new CGRect(3,4,5,6);
        
        CGRect rect3 = rect.intersection(rect2);
        
        System.out.println(rect3.origin.x);
        System.out.println(rect3.origin.y);
        System.out.println(rect3.size.width);
        System.out.println(rect3.size.height);
        
        System.out.println(rect.origin.x);
        System.out.println(rect.origin.y);
        System.out.println(rect.size.width);
        System.out.println(rect.size.height);
        NSString str = new NSString("hello", NSString.Type.String);
        
        System.out.println(str.length());
        System.out.println(str.substringToIndex(3));
        testDictionary();
        
    }
}
