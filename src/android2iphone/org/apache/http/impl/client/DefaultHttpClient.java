/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.apache.http.impl.client;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.HttpParams;

import android.internal.Assert;

public class DefaultHttpClient implements HttpClient {

    public DefaultHttpClient() {
        Assert.NOT_IMPLEMENTED();
    }

    public DefaultHttpClient(ClientConnectionManager cm, HttpParams parames) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public HttpParams getParams() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public HttpResponse execute(HttpUriRequest method) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public ClientConnectionManager getConnectionManager() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
