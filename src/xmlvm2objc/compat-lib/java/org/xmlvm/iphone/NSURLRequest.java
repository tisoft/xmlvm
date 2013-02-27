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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSURLRequest extends NSObject {

    private final NSURL url;
    private final int cachePolicy;
    private final double timeoutInterval;

    public static NSURLRequest requestWithURL(NSURL theURL) {
        return new NSURLRequest(theURL);
    }

    public static NSURLRequest requestWithURL(NSURL url, int NSURLRequestCachePolicy, double timeoutInterval) {
        return new NSURLRequest(url, NSURLRequestCachePolicy, timeoutInterval);
    }

    public NSURLRequest(NSURL url) {
        this(url, NSURLRequestCachePolicy.UseProtocolCachePolicy, 60);
    }

    public NSURLRequest(NSURL url, int NSURLRequestCachePolicy, double timeoutInterval) {
        this.url = url;
        this.cachePolicy = NSURLRequestCachePolicy;
        this.timeoutInterval = timeoutInterval;
    }

    public NSURL URL() {
        return url;
    }

    public int cachePolicy() {
        return cachePolicy;
    }

    public double timeoutInterval() {
        return timeoutInterval;
    }
    
    /**
     *  Added for including manual dependencies introduced in the wrapper code.
     *  <b>DO NOT USE</b> 
     */
    protected void dummy(NSMutableURLRequest mutableURLRequest){
        
    }
}
