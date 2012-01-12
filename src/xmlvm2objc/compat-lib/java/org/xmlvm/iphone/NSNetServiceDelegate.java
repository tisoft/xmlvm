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

import org.xmlvm.XMLVMDelegate;
import org.xmlvm.XMLVMDelegateMethod;
import org.xmlvm.XMLVMDelegateMethod.Param;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
@XMLVMDelegate(protocolType = "NSNetServiceDelegate")
public interface NSNetServiceDelegate {

    /**
     * Notifies the delegate that the network is ready to publish the service.
     * 
     * @param sender
     *            The service that is ready to publish.
     */
    @XMLVMDelegateMethod(selector = "netServiceWillPublish",
            params = @Param(type = "NSNetService", isSource = true)
        )
    public void willPublish(NSNetService sender);

    /**
     * Notifies the delegate that a service could not be published.
     * 
     * @param sender
     *            The service that could not be published.
     * @param errorDict
     *            A dictionary containing information about the problem. The
     *            dictionary contains the keys NSNetServicesErrorCode and
     *            NSNetServicesErrorDomain.
     */
    @XMLVMDelegateMethod(selector = "netService",
            params = {
                @Param(type = "NSNetService", isSource = true),
                @Param(type = "NSDictionary", name = "didNotPublish")
            }
        )
    public void didNotPublish(NSNetService sender, NSDictionary errorDict);

    /**
     * Notifies the delegate that a service was successfully published.
     * 
     * @param sender
     *            The service that was published.
     */
    @XMLVMDelegateMethod(selector = "netServiceDidPublish",
            params = @Param(type = "NSNetService", isSource = true)
        )
    public void didPublish(NSNetService sender);

    /**
     * Notifies the delegate that the network is ready to resolve the service.
     * 
     * @param sender
     *            The service that the network is ready to resolve.
     */
    @XMLVMDelegateMethod(selector = "netServiceWillResolve",
            params = @Param(type = "NSNetService", isSource = true)
        )
    public void willResolve(NSNetService sender);

    /**
     * Informs the delegate that an error occurred during resolution of a given
     * service.
     * 
     * @param sender
     *            The service that did not resolve.
     * @param errorDict
     *            A dictionary containing information about the problem. The
     *            dictionary contains the keys NSNetServicesErrorCode and
     *            NSNetServicesErrorDomain.
     */
    @XMLVMDelegateMethod(selector = "netService",
            params = {
                @Param(type = "NSNetService", isSource = true),
                @Param(type = "NSDictionary", name = "didNotResolve")
            }
        )
    public void didNotResolve(NSNetService sender, NSDictionary errorDict);

    /**
     * Informs the delegate that the address for a given service was resolved.
     * 
     * @param sender
     *            The service that was resolved.
     */
    @XMLVMDelegateMethod(selector = "netServiceDidResolveAddress",
            params = @Param(type = "NSNetService", isSource = true)
        )
    public void didResolveAddress(NSNetService sender);

    /**
     * Notifies the delegate that the TXT record for a given service has been
     * updated.
     * 
     * @param sender
     *            The service whose TXT record was updated.
     * @param data
     *            The new TXT record.
     */
    @XMLVMDelegateMethod(selector = "netService",
            params = {
                @Param(type = "NSNetService", isSource = true),
                @Param(type = "NSData", name = "didUpdateTXTRecordData")
            }
        )
    public void didUpdateTXTRecordData(NSNetService sender, NSData data);

    /**
     * Informs the delegate that a publish or resolveWithTimeout: request was
     * stopped.
     * 
     * @param sender
     *            The service that stopped.
     */
    @XMLVMDelegateMethod(selector = "netServiceDidStop",
            params = @Param(type = "NSNetService", isSource = true)
        )
    public void didStop(NSNetService sender);
}
