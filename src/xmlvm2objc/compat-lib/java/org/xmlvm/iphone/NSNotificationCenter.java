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

import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNotificationCenter extends NSObject {

    /*
     * Static methods
     */

    /**
     * + (id)defaultCenter;
     */
    public static NSNotificationCenter defaultCenter(){
        throw new RuntimeException("Stub");
    }

    /*
     * Constructors
     */

    /** Default constructor */
    NSNotificationCenter() {}

    /*
     * Instance methods
     */

    /**
     * - (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;
     */
    public void addObserver(NSNotificationDelegate observer, String aName, Object anObject){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)postNotification:(NSNotification *)notification;
     */
    public void postNotification(NSNotification notification){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)postNotificationName:(NSString *)aName object:(id)anObject;
     */
    public void postNotificationName(String aName, Object anObject){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
     */
    public void postNotificationName(String aName, Object anObject, Map aUserInfo){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)removeObserver:(id)observer;
     */
    public void removeObserver(Object observer){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;
     */
    public void removeObserver(Object observer, String aName, Object anObject){
        throw new RuntimeException("Stub");
    }

    /**
     * - (id)addObserverForName:(NSString *)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *))block ;
     */
//    public Object addObserverForName(String name, Object obj, NSOperationQueue queue, Object block){
//        throw new RuntimeException("Stub");
//    }
}
