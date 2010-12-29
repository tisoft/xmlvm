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

import java.util.Map;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSError extends NSObject {
    private String              domain;
    private int                 code;
    private Map<Object, Object> userInfo;


    public NSError(String domain, int code, Map<Object, Object> userInfo) {
        this.domain = domain;
        this.code = code;
        this.userInfo = userInfo;
    }

    public static NSError error(String domain, int code, Map<Object, Object> userInfo) {
        return new NSError(domain, code, userInfo);
    }

    public String domain() {
        return domain;
    }

    public int code() {
        return code;
    }

    public Map<Object, Object> userInfo() {
        return userInfo;
    }

    public String description() {
        return "Error: <" + code + "> <" + domain + ">";
    }

}
