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


package android.os;

import android.internal.Assert;

public final class Message {

    /**
     * User-defined message code so that the recipient can identify 
     * what this message is about. Each {@link Handler} has its own name-space
     * for message codes, so you do not need to worry about yours conflicting
     * with other handlers.
     */
    public int what;

    // Use these fields instead of using the class's Bundle if you can. 
    /** arg1 and arg2 are lower-cost alternatives to using {@link #setData(Bundle) setData()}
    if you only need to store a few integer values. */
    public int arg1; 

    /** arg1 and arg2 are lower-cost alternatives to using {@link #setData(Bundle) setData()}
    if you only need to store a few integer values.*/ 
    public int arg2;

    /** An arbitrary object to send to the recipient.  This must be null when
     * sending messages across processes. */
    public Object obj;

    public static Message obtain(Handler h, Runnable callback) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
    
    public static Message obtain(Handler h, int what) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
    
    public static Message obtain(Handler h) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
