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
import java.util.Map;

public class NSHTTPCookie extends NSObject {

    /*
     * Static methods
     */
    /**
     * + (id)cookieWithProperties:(NSDictionary *)properties;
     */
    public static NSHTTPCookie cookieWithProperties(Map<String,Object> properties) {
        return null;
    }

    /**
     * + (NSDictionary *)requestHeaderFieldsWithCookies:(NSArray *)cookies;
     */
    public static Map<String,Object> requestHeaderFieldsWithCookies(List<NSHTTPCookie> cookies) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * + (NSArray *)cookiesWithResponseHeaderFields:(NSDictionary *)headerFields forURL:(NSURL *)URL;
     */
    public static List<NSHTTPCookie> cookiesWithResponseHeaderFields(Map headerFields,
            NSURL URL) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /*
     * Constructors
     */
    /**
     * - (id)initWithProperties:(NSDictionary *)properties;
     */
    public NSHTTPCookie(Map<String,Object> properties) {}


    /*
     * Instance methods
     */

    /**
     * - (NSDictionary *)properties;
     */
    public Map<String,Object> properties() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSUInteger)version;
     */
    public int versionCookie() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSString *)name;
     */
    public String name() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSString *)value;
     */
    public String value() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSDate *)expiresDate;
     */
    public NSDate expiresDate() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (BOOL)isSessionOnly;
     */
    public boolean isSessionOnly() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSString *)domain;
     */
    public String domain() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSString *)path;
     */
    public String path() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (BOOL)isSecure;
     */
    public boolean isSecure() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (BOOL)isHTTPOnly;
     */
    public boolean isHTTPOnly() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSString *)comment;
     */
    public String comment() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSURL *)commentURL;
     */
    public NSURL commentURL() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * - (NSArray *)portList;
     */
    public List portList() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
