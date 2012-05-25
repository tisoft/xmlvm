/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package Compatlib.System;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class MulticastDelegate extends Delegate {

    @XMLVMIgnore
    public Object           _targetObj;
    @XMLVMIgnore
    List<java.lang.Integer> targets = new ArrayList<java.lang.Integer>();


    public MulticastDelegate() {
        this(null, -1);
    }

    @Override
    @XMLVMIgnore
    protected Delegate RemoveImpl(Delegate d) throws Exception {
        MulticastDelegate mcast = (MulticastDelegate) d;

        for (int i : mcast.targets) {
            java.lang.Integer iBox = i;
            if (!targets.remove(iBox)) {
                throw new Exception("Not found" + iBox);
            }
        }

        if (targets.size() != 0) {
            return this;
        } else {
            return null;
        }

    }

    @Override
    @XMLVMIgnore
    protected Delegate CombineImpl(Delegate d) {
        MulticastDelegate mcast = (MulticastDelegate) d;
        this.targets.addAll(mcast.targets);
        return this;
    }

    public MulticastDelegate(Object targetObj, int signatureIndex) {
        this._targetObj = targetObj;
        this.targets.add(signatureIndex);
    }

    /**
     * A helper method that will be used by children of MulticastDelegate in
     * their 'Invoke' method. This method will perform the actual invocation of
     * the desired method (managed by the DelegateManager) at runtime.
     * 
     * @param params
     *            The arguments supplied to the 'Invoke' method.
     */
    @SuppressWarnings("rawtypes")
    @XMLVMIgnore
    protected void helpInvoke(java.lang.Object[] params) throws Exception {
////        for (int _signatureIndex : targets) {
//            // A signature string could look like the following:
//            // "void;System.Object;System.EventArgs"
////            java.lang.String signature = DelegateManager.getSignature(_signatureIndex);
////            java.lang.String method = DelegateManager.getMethod(_signatureIndex);
//
//            // Get each piece of the signature
//            java.lang.String signatureValues[] = signature.split(";");
//            Class[] paramTypes = new Class[signatureValues.length - 1];
//
//            // Save the argument types
//            for (int i = 1; i < signatureValues.length; i++) {
//                paramTypes[i - 1] = Class.forName(signatureValues[i]);
//            }
//
//            // Class targetClass = _targetObj.getClass();
//            // For a static method, null will be pushed onto the stack
//            // instead of the class. Thus, the target object will be null
//            // in this case, so we have to use DelegateManager to get the
//            // name of the target class
//            java.lang.String className = DelegateManager.getClassType(_signatureIndex);
//            Class targetClass = Class.forName(className);
//
//            Method m = targetClass.getDeclaredMethod(method, paramTypes);
//
//            if (!m.isAccessible())
//                m.setAccessible(true);
//
//            m.invoke(_targetObj, params);
//        }

    } // end helpInvoke

} // end MulticastDelegate
