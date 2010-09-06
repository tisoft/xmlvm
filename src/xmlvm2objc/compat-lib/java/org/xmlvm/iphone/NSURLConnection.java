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

package org.xmlvm.iphone;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLConnection extends NSObject {

    private Thread thread;

    private NSURLConnection(final NSMutableURLRequest req, final NSURLConnectionDelegate delegate) {
        thread = new Thread(new Runnable() {
            public void run() {
                NSHTTPURLResponseHolder resp = new NSHTTPURLResponseHolder();
                NSErrorHolder error = new NSErrorHolder();
                NSData data = sendSynchronousRequest(req, resp, error);
                // TODO need to do something with NSError
                delegate.connectionDidReceiveData(NSURLConnection.this, data);
                delegate.connectionDidFinishLoading(NSURLConnection.this);
            }
        });
        thread.start();
    }

    static public NSData sendSynchronousRequest(NSMutableURLRequest req,
            NSHTTPURLResponseHolder resp, NSErrorHolder error) {
        NSData data = null;
        URL url = req.xmlvmGetURL();
        URLConnection conn;
        try {
            conn = url.openConnection();
            // conn.setDoOutput(true);
            // OutputStreamWriter wr = new
            // OutputStreamWriter(conn.getOutputStream());
            // wr.write(data);
            // wr.flush();

            // Get the response
            data = new NSData(conn.getInputStream());
        } catch (IOException e) {
            // do nothing
        }

        return data;
    }

    public static NSURLConnection connectionWithRequest(NSMutableURLRequest req,
            NSURLConnectionDelegate delegate) {
        return new NSURLConnection(req, delegate);
    }
}