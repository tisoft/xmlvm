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
@XMLVMDelegate(protocolType = "NSNetServiceBrowserDelegate")
public interface NSNetServiceBrowserDelegate {

    /**
     * Tells the delegate the sender found a domain.
     * 
     * The delegate uses this message to compile a list of available domains. It
     * should wait until moreDomainsComing is false to do a bulk update of user
     * interface elements.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     * @param domainName
     *            Name of the domain found by netServiceBrowser.
     * @param moreDomainsComing
     *            true when netServiceBrowser is waiting for additional domains.
     *            false when there are no additional domains.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowser",
            params = {
                @Param(type = "NSNetServiceBrowser", isSource = true),
                @Param(type = "NSString", name = "didFindDomain", convert = true),
                @Param(type = "BOOL", name = "moreComing")
            }
        )
    public void didFindDomain(NSNetServiceBrowser netServiceBrowser, String domainName,
            boolean moreDomainsComing);

    /**
     * Tells the delegate the a domain has disappeared or has become
     * unavailable.
     * 
     * The delegate uses this message to compile a list of unavailable domains.
     * It should wait until moreDomainsComing is false to do a bulk update of
     * user interface elements.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     * @param domainName
     *            Name of the domain that became unavailable.
     * @param moreDomainsComing
     *            true when netServiceBrowser is waiting for additional domains.
     *            false when there are no additional domains.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowser",
            params = {
                @Param(type = "NSNetServiceBrowser", isSource = true),
                @Param(type = "NSString", name = "didRemoveDomain", convert = true),
                @Param(type = "BOOL", name = "moreComing")
            }
        )
    public void didRemoveDomain(NSNetServiceBrowser netServiceBrowser, String domainName,
            boolean moreDomainsComing);

    /**
     * Tells the delegate the sender found a service.
     * 
     * The delegate uses this message to compile a list of available services.
     * It should wait until moreServicesComing is false to do a bulk update of
     * user interface elements.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     * @param netService
     *            Network service found by netServiceBrowser. The delegate can
     *            use this object to connect to and use the service.
     * @param moreServicesComing
     *            true when netServiceBrowser is waiting for additional
     *            services. false when there are no additional services.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowser",
            params = {
                @Param(type = "NSNetServiceBrowser", isSource = true),
                @Param(type = "NSNetService", name = "didFindService"),
                @Param(type = "BOOL", name = "moreComing")
            }
        )
    public void didFindService(NSNetServiceBrowser netServiceBrowser, NSNetService netService,
            boolean moreServicesComing);

    /**
     * Tells the delegate a service has disappeared or has become unavailable.
     * 
     * The delegate uses this message to compile a list of unavailable services.
     * It should wait until moreServicesComing is false to do a bulk update of
     * user interface elements.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     * @param netService
     *            Network service that has become unavailable.
     * @param moreServicesComing
     *            true when netServiceBrowser is waiting for additional
     *            services. false when there are no additional services.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowser",
            params = {
                @Param(type = "NSNetServiceBrowser", isSource = true),
                @Param(type = "NSNetService", name = "didRemoveService"),
                @Param(type = "BOOL", name = "moreComing")
            }
        )
    public void didRemoveService(NSNetServiceBrowser netServiceBrowser, NSNetService netService,
            boolean moreServicesComing);

    /**
     * Tells the delegate that a search is commencing.
     * 
     * This message is sent to the delegate only if the underlying network layer
     * is ready to begin a search. The delegate can use this notification to
     * prepare its data structures to receive data.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowserWillSearch",
            params = @Param(type = "NSNetServiceBrowser", isSource = true)
        )
    public void willSearch(NSNetServiceBrowser netServiceBrowser);

    /**
     * Tells the delegate that a search was not successful.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     * @param errorInfo
     *            Dictionary with the reasons the search was unsuccessful. Use
     *            the dictionary keys NSNetServicesErrorCode and
     *            NSNetServicesErrorDomain to retrieve the error information
     *            from the dictionary.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowser",
            params = {
                @Param(type = "NSNetServiceBrowser", isSource = true),
                @Param(type = "NSDictionary", name = "didNotSearch")
            }
        )
    public void didNotSearch(NSNetServiceBrowser netServiceBrowser, NSDictionary errorInfo);

    /**
     * Tells the delegate that a search was stopped.
     * 
     * When netServiceBrowser receives a stop message from its client,
     * netServiceBrowser sends a netServiceBrowserDidStopSearch: message to its
     * delegate. The delegate then performs any necessary cleanup.
     * 
     * @param netServiceBrowser
     *            Sender of this delegate message.
     */
    @XMLVMDelegateMethod(selector = "netServiceBrowserDidStopSearch",
            params = @Param(type = "NSNetServiceBrowser", isSource = true)
        )
    public void didStopSearch(NSNetServiceBrowser netServiceBrowser);
}
