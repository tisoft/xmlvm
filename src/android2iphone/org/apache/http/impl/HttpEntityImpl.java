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


package org.apache.http.impl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.http.HttpEntity;
import org.xmlvm.iphone.NSData;

import android.internal.Assert;

/**
 * @author arno
 *
 */
public class HttpEntityImpl implements HttpEntity {

    private NSData data;
    
    public HttpEntityImpl(NSData data) {
        this.data = data;
    }

    @Override
    public void consumeContent() throws IOException {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public InputStream getContent() {
        return new ByteArrayInputStream(data.getBytes());
    }

}
