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

package org.apache.http.impl.client;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.impl.ClientConnectionManagerImpl;
import org.apache.http.impl.HttpResponseImpl;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSErrorHolder;
import org.xmlvm.iphone.NSHTTPURLResponseHolder;
import org.xmlvm.iphone.NSMutableURLRequest;
import org.xmlvm.iphone.NSURL;
import org.xmlvm.iphone.NSURLConnection;

import android.internal.Assert;

public class DefaultHttpClient implements HttpClient {

    /**
     * Utility to base64 encode and decode a string.
     * 
     * @author Stephen Uhler
     * @version 1.9, 02/07/24
     */

    static class Base64 {
        static byte[] encodeData;
        static String charSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

        static {
            encodeData = new byte[64];
            for (int i = 0; i < 64; i++) {
                byte c = (byte) charSet.charAt(i);
                encodeData[i] = c;
            }
        }

        private Base64() {
        }

        /**
         * base-64 encode a string
         * 
         * @param s
         *            The ascii string to encode
         * @returns The base64 encoded result
         */

        public static String encode(String s) {
            return encode(s.getBytes());
        }

        /**
         * base-64 encode a byte array
         * 
         * @param src
         *            The byte array to encode
         * @returns The base64 encoded result
         */

        public static String encode(byte[] src) {
            return encode(src, 0, src.length);
        }

        /**
         * base-64 encode a byte array
         * 
         * @param src
         *            The byte array to encode
         * @param start
         *            The starting index
         * @param len
         *            The number of bytes
         * @returns The base64 encoded result
         */

        public static String encode(byte[] src, int start, int length) {
            byte[] dst = new byte[(length + 2) / 3 * 4 + length / 72];
            int x = 0;
            int dstIndex = 0;
            int state = 0; // which char in pattern
            int old = 0; // previous byte
            int len = 0; // length decoded so far
            int max = length + start;
            for (int srcIndex = start; srcIndex < max; srcIndex++) {
                x = src[srcIndex];
                switch (++state) {
                case 1:
                    dst[dstIndex++] = encodeData[(x >> 2) & 0x3f];
                    break;
                case 2:
                    dst[dstIndex++] = encodeData[((old << 4) & 0x30) | ((x >> 4) & 0xf)];
                    break;
                case 3:
                    dst[dstIndex++] = encodeData[((old << 2) & 0x3C) | ((x >> 6) & 0x3)];
                    dst[dstIndex++] = encodeData[x & 0x3F];
                    state = 0;
                    break;
                }
                old = x;
                if (++len >= 72) {
                    dst[dstIndex++] = (byte) '\n';
                    len = 0;
                }
            }

            /*
             * now clean up the end bytes
             */

            switch (state) {
            case 1:
                dst[dstIndex++] = encodeData[(old << 4) & 0x30];
                dst[dstIndex++] = (byte) '=';
                dst[dstIndex++] = (byte) '=';
                break;
            case 2:
                dst[dstIndex++] = encodeData[(old << 2) & 0x3c];
                dst[dstIndex++] = (byte) '=';
                break;
            }
            return new String(dst);
        }

        /**
         * A Base64 decoder. This implementation is slow, and doesn't handle
         * wrapped lines. The output is undefined if there are errors in the
         * input.
         * 
         * @param s
         *            a Base64 encoded string
         * @returns The byte array eith the decoded result
         */

        public static byte[] decode(String s) {
            int end = 0; // end state
            if (s.endsWith("=")) {
                end++;
            }
            if (s.endsWith("==")) {
                end++;
            }
            int len = (s.length() + 3) / 4 * 3 - end;
            byte[] result = new byte[len];
            int dst = 0;
            try {
                for (int src = 0; src < s.length(); src++) {
                    int code = charSet.indexOf(s.charAt(src));
                    if (code == -1) {
                        break;
                    }
                    switch (src % 4) {
                    case 0:
                        result[dst] = (byte) (code << 2);
                        break;
                    case 1:
                        result[dst++] |= (byte) ((code >> 4) & 0x3);
                        result[dst] = (byte) (code << 4);
                        break;
                    case 2:
                        result[dst++] |= (byte) ((code >> 2) & 0xf);
                        result[dst] = (byte) (code << 6);
                        break;
                    case 3:
                        result[dst++] |= (byte) (code & 0x3f);
                        break;
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e) {
            }
            return result;
        }
    }

    private CredentialsProvider               credentialsProvider     = null;
    private ClientConnectionManager           clientConnectionManager = null;
    private ArrayList<HttpRequestInterceptor> httpRequestInterceptors = new ArrayList<HttpRequestInterceptor>();

    public DefaultHttpClient() {
    }

    public DefaultHttpClient(ClientConnectionManager cm, HttpParams params) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public HttpParams getParams() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public HttpResponse execute(HttpUriRequest method) throws IOException, ClientProtocolException {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public HttpResponse execute(HttpHost target, HttpRequest request, HttpContext context)
            throws IOException, ClientProtocolException {
        String url = target.getProtocol() + "://" + target.getHostName() + ":" + target.getPort();
        if (request instanceof HttpGet) {
            url += ((HttpGet) request).getURI();
        }
        NSURL nsurl = NSURL.URLWithString(url);
        NSMutableURLRequest nsrequest = new NSMutableURLRequest(nsurl);
        /*
         * TODO we don't call the interceptors but simply set the Basic
         * Authentification directly. httpclient's API is really poorly
         * designed, IMHO.
         */
        // for (HttpRequestInterceptor interceptor : httpRequestInterceptors) {
        // try {
        // interceptor.process(request, context);
        // } catch (HttpException e) {
        // Assert.NOT_IMPLEMENTED();
        // }
        // }
        if (credentialsProvider != null) {
            Credentials credentials = credentialsProvider.getCredentials(AuthScope.ANY);
            if (credentials instanceof UsernamePasswordCredentials) {
                // TODO hardcode Basic Authentication for now
                String username = ((UsernamePasswordCredentials) credentials).getUsername();
                String password = ((UsernamePasswordCredentials) credentials).getPassword();
                String authenticationString = "Basic " + Base64.encode(username + ":" + password);
                nsrequest.addValueForHTTPHeaderField(authenticationString, "Authorization");
            }
        }
        NSHTTPURLResponseHolder nsresponse = new NSHTTPURLResponseHolder();
        NSErrorHolder nserror = new NSErrorHolder();
        NSData receivedData = NSURLConnection
                .sendSynchronousRequest(nsrequest, nsresponse, nserror);

        HttpResponseImpl response = new HttpResponseImpl(nsresponse, nserror, receivedData);
        return response;
    }

    @Override
    public ClientConnectionManager getConnectionManager() {

        if (clientConnectionManager == null) {
            clientConnectionManager = new ClientConnectionManagerImpl();
        }
        return clientConnectionManager;
    }

    public CredentialsProvider getCredentialsProvider() {
        if (credentialsProvider == null) {
            credentialsProvider = new CredentialsProviderImpl();
        }
        return credentialsProvider;
    }

    public void addRequestInterceptor(HttpRequestInterceptor interceptor, int i) {
        httpRequestInterceptors.add(i, interceptor);
    }

}
