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

import java.io.IOException;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSNetService extends NSObject {

    protected NSNetServiceDelegate.Wrapper delegateWrapper;

    /**
     * This is the appropriate constructor to resolve a service. To publish a
     * service, use NSNetService(String, String, String, int). Although you can
     * also use this constructor to create a service you wish to resolve on the
     * network, it is less appropriate for that use.
     * 
     * @param domain
     *            The domain for the service. For the local domain, use "local."
     *            not "".
     * @param type
     *            The network service type containing both the service type and
     *            transport layer information such as "_http._tcp.".
     * @param name
     *            The name of the service to resolve.
     * @throws IOException
     *             If the attempt to publish was denied.
     */
    public NSNetService(String domain, String type, String name) throws IOException {

    }

    /**
     * This is the appropriate constructor to create a service that you wish to
     * publish on the network.
     * 
     * @param domain
     *            The domain for the service. For the local domain, use "local."
     *            not "". It is acceptable to be an empty string when publishing
     *            or browsing a service, but do not rely on this for resolution.
     * @param type
     *            The network service type containing both the service type and
     *            transport layer information such as "_http._tcp.".
     * @param name
     *            The name by which the service is identified to the network.
     *            The name must be unique.
     * @param port
     *            The port on which the service is published.
     * @throws IOException
     *             If the attempt to publish was denied.
     */
    public NSNetService(String domain, String type, String name, int port) throws IOException {

    }

    /**
     * Adds the service to the specified run loop.
     * 
     * @param aRunLoop
     *            The run loop to which to add the receiver.
     * @param mode
     *            The run loop mode to which to add the receiver. Possible
     *            values for mode are discussed in the "Constants" section of
     *            NSRunLoop.
     */
    public void scheduleInRunLoop(NSRunLoop aRunLoop, String mode) {

    }

    /**
     * Sets the delegate for the receiver.
     * @param delegate The delegate for the receiver.
     */
    public void setDelegate(NSNetServiceDelegate delegate) {

    }

    /**
     * Starts a resolve process of a finite duration for the receiver.
     * 
     * If the resolve succeeds before the timeout period lapses, the receiver
     * invokes didResolveAddress() on the delegate. Otherwise, the receiver
     * invokes didNotResolve() on the delegate.
     * 
     * @param timeoutSeconds
     *            The maximum number of seconds to attempt a resolve.
     */
    public void resolveWithTimeout(double timeoutSeconds) {

    }

    /**
     * Attempts to advertise the receivers on the network. This method returns
     * immediately, with success or failure indicated by the callbacks to the
     * delegate.
     */
    public void publish() {

    }

    /**
     * Halts a currently running attempt to publish or resolve a service.
     */
    public void stop() {

    }

    /**
     * Removes the service from the given run loop for a given mode.
     * 
     * @param aRunLoop
     *            The run loop from which to remove the receiver.
     * @param mode
     *            The run loop mode from which to remove the receiver. Possible
     *            values for mode are discussed in the "Constants" section of
     *            NSRunLoop.
     */
    public void removeFromRunLoop(NSRunLoop aRunLoop, String mode) {

    }

    /**
     * @return an array containing NSData objects, each of which contains a
     *         socket address for the service.
     */
    public NSData[] getAddresses() {
        return null;
    }

    /**
     * @return the domain name of the service. This can be an explicit domain
     *         name or it can contain the generic local domain name, "local."
     *         (note the trailing period, which indicates an absolute name).
     */
    public String getDomain() {
        return null;
    }

    /**
     * @return the host name of the computer providing the service or null if a
     *         successful resolve has not occurred.
     */
    public String getHostName() {
        return null;
    }

    /**
     * @return the name of the service.
     */
    public String getName() {
        return null;
    }

    /**
     * @return the port of the receiver or -1 when it has not been resolved.
     */
    public int getPort() {
        return -1;
    }

    /**
     * @return the type of the service.
     */
    public String getType() {
        return null;
    }
}
