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

package org.xmlvm.iphone;

import java.util.HashMap;
import java.util.Map;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSDictionary extends NSObject {

    private Map<String, Object> objects = new HashMap<String, Object>();

    private NSDictionary() {

    }

    public static Map<String, Object> dictionaryWithContentsOfFile(String path) {
        // TODO : Java implementation
        return null;
    }

    public Object objectForKey(String key) {
        return objects.get(key);
    }

    /**
     * + (id)dictionaryWithObject:(id)object forKey:(id)key;
     * 
     * XMLVM modification made!
     * 
     * The parameters are NSObject instead of java.lang.Object because we need a
     * standard way of grabbing the corresponding Obj-C instance. Currently,
     * CFType subclasses do not wrap their corresponding Obj-C instances using
     * the same field names.
     * 
     * @param object
     * @param key
     * @return
     */
    public static NSDictionary dictionaryWithObject(NSObject object, NSObject key){
        throw new RuntimeException("Stub");
    }
}
