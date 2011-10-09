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
public class NSNetServiceBrowser extends NSObject {

    protected Object delegateWrapper;

    public NSNetServiceBrowser() {

    }

    /**
     * Adds the receiver to the main run loop.
     */
    public void scheduleInMainRunLoop() {

    }

    /**
     * Sets the receiver's delegate.
     * 
     * @param delegate
     *            Object to serve as the receiver's delegate. Must not be null.
     */
    public void setDelegate(NSNetServiceBrowserDelegate delegate) {

    }

    /**
     * Starts a search for services of a particular type within a specific
     * domain. This method returns immediately, with actions indicated by the
     * callbacks to the delegate.
     * 
     * @param serviceType
     *            Type of the service to search for such as "_http._tcp.".
     * @param domainName
     *            Domain name in which to perform the search such as "local."
     */
    public void searchForServicesOfTypeInDomain(String serviceType, String domainName) {

    }

    /**
     * Halts a currently running search or resolution.
     * 
     * This method invokes netServiceBrowserDidStopSearch() on the delegate and
     * causes the browser to discard any pending search results.
     */
    public void stop() {

    }

    /**
     * Removes the receiver from the main run loop.
     */
    public void removeFromMainRunLoop() {

    }
}
