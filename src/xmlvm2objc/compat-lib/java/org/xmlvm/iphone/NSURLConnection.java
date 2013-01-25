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
import java.net.URL;
import java.net.URLConnection;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSURLConnection extends NSObject {
    @XMLVMIgnore
    private class RunnableInstance implements Runnable {
        private final NSURLConnectionDelegate delegate;
        private final NSURLRequest            req;


        public RunnableInstance(NSURLRequest req, NSURLConnectionDelegate delegate) {
            this.req = req;
            this.delegate = delegate;
        }

        @Override
        public void run() {
            NSHTTPURLResponseHolder resp = new NSHTTPURLResponseHolder();
            NSErrorHolder error = new NSErrorHolder();
            NSData data = sendSynchronousRequest(req, resp, error);
            // TODO need to do something with NSError
            delegate.connectionDidReceiveData(NSURLConnection.this, data);
            delegate.connectionDidFinishLoading(NSURLConnection.this);
        }
    }


    private Thread thread;


    private NSURLConnection(NSURLRequest req, NSURLConnectionDelegate delegate) {
        thread = new Thread(new RunnableInstance(req, delegate));
        thread.start();
    }

    static public NSData sendSynchronousRequest(NSURLRequest req,
            NSHTTPURLResponseHolder resp, NSErrorHolder error) {
        NSData data = null;
        URL url = req.URL().xmlvmGetURL();
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

    public static NSURLConnection connectionWithRequest(NSURLRequest req,
            NSURLConnectionDelegate delegate) {
        return new NSURLConnection(req, delegate);
    }
}
