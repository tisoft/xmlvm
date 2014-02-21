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

import java.util.List;

public class NSHTTPCookieStorage extends NSObject {

    /*
     * Static methods
     */
    /**
     * + (NSHTTPCookieStorage *)sharedHTTPCookieStorage;
     */
    public static NSHTTPCookieStorage sharedHTTPCookieStorage() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /*
     * Constructors
     */
    /**
     * Default constructor
     */
    public NSHTTPCookieStorage() {
        super();
    }

    /*
     * Instance methods
     */
    /**
     * - (NSArray *)cookies;
     */
    public List<NSHTTPCookie> cookies() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (void)setCookie:(NSHTTPCookie *)cookie;
     */
    public void setCookie(NSHTTPCookie cookie) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (void)deleteCookie:(NSHTTPCookie *)cookie;
     */
    public void deleteCookie(NSHTTPCookie cookie) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSArray *)cookiesForURL:(NSURL *)URL;
     */
    public List<NSHTTPCookie> cookiesForURL(NSURL URL) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (void)setCookies:(NSArray *)cookies forURL:(NSURL *)URL
     * mainDocumentURL:(NSURL *)mainDocumentURL;
     */
    public void setCookies(List cookies, NSURL URL, NSURL mainDocumentURL) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSHTTPCookieAcceptPolicy)cookieAcceptPolicy;
     */
    public int cookieAcceptPolicy() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * -
     * (void)setCookieAcceptPolicy:(NSHTTPCookieAcceptPolicy)cookieAcceptPolicy;
     */
    public void setCookieAcceptPolicy(int cookieAcceptPolicy) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSArray*)sortedCookiesUsingDescriptors:(NSArray*) sortOrder ;
     */
    public List<NSHTTPCookie> sortedCookiesUsingDescriptors(List sortOrder) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
