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
