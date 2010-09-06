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

package org.xmlvm.iphone;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.swing.SwingUtilities;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSObject {

    public static void performSelectorOnMainThread(final Object target, final String method,
            final Object arg, boolean waitUntilDone) {
        final Runnable runnable = new Runnable() {

            @Override
            public void run() {
                Class<?>[] paramTypes = { Object.class };
                Object[] params = { arg };
                Class targetClass = target.getClass();
                Method m = null;
                // This trick will search for private methods not only on the given object but also on parent
                while (targetClass != null && m == null) {
                    try {
                        m = targetClass.getDeclaredMethod(method, paramTypes);
                    } catch (SecurityException e) {
                    } catch (NoSuchMethodException e) {
                    }
                    targetClass = targetClass.getSuperclass();
                }
                if (m == null) {
                    throw new RuntimeException("Unable fo find method "
                            + method + " in class " + target.getClass().getName());
                }

                try {
                    m.setAccessible(true);  // This is required, since in Obj-C "private" modifier does not exist
                    m.invoke(target, params);
                } catch (IllegalArgumentException e) {
                    throw new RuntimeException(e);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        try {
            if (waitUntilDone) {
                if (SwingUtilities.isEventDispatchThread()) {
                    runnable.run();
                } else {
                    SwingUtilities.invokeAndWait(runnable);
                }
            } else {
                SwingUtilities.invokeLater(runnable);
            }
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    public NSObject retain() {
        return this;
        // Thank you GC!
    }

    public void release() {
        // Thank you GC!
    }

    public void dealloc() {
        // Thank you GC!
    }
}
