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

package org.xmlvm.iphone.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.BindException;
import java.net.ServerSocket;
import java.net.Socket;

import org.xmlvm.iphone.UIAccelerometer;

public class MicroHTTPServer implements Runnable {

    private MicroHTTPServer() {
        Thread thread = new Thread(this);
        thread.start();
    }

    static public void start() {
        new MicroHTTPServer();
    }

    public void run() {
        ServerSocket serverSocket = null;
        int port = 8080;
        try {
            serverSocket = new ServerSocket(port);
        } catch (BindException e) {
            System.out.println("Cannot run MicroHTTPServer.");
            return;
        } catch (IOException e) {
            e.printStackTrace();
            System.exit(-1);
        }

        while (true) {
            Socket socket = null;
            InputStream input = null;
            OutputStream output = null;
            try {
                socket = serverSocket.accept();
                input = socket.getInputStream();
                output = socket.getOutputStream();
                readRequest(input);
                sendResponse(output);
                socket.close();
            } catch (Exception e) {
                e.printStackTrace();
                continue;
            }
        }
    }

    private void readRequest(InputStream input) throws IOException {
        String header;
        String req = readLine(input);
        do {
            header = readLine(input);
        } while (!header.equals(""));

        String uri = req.split(" ")[1];
        String[] args = uri.split("/");
        String cmd = args[1];
        if (cmd.equals("ACC")) {
            float xAxis = Float.parseFloat(args[2]);
            float yAxis = Float.parseFloat(args[3]);
            float zAxis = Float.parseFloat(args[4]);
            UIAccelerometer.setAcceleratedInternal(xAxis, yAxis, zAxis);
        }
    }

    private String readLine(InputStream input) throws IOException {
        StringBuffer line = new StringBuffer(2048);
        int i, count;
        byte[] buffer = new byte[2048];
        i = 0;
        do {
            count = input.read(buffer, i++, 1);
        } while (count != -1 && buffer[i - 1] != '\n');
        for (int j = 0; j < i; j++) {
            byte ch = buffer[j];
            if (ch == '\r' || ch == '\n')
                continue;
            line.append((char) ch);
        }
        return line.toString();
    }

    private void sendResponse(OutputStream output) throws IOException {
        String emptyMessage = "HTTP/1.1 200 OK\r\n" + "Content-Type: text/html\r\n"
                + "Content-Length: 23\r\n" + "\r\n" + "<h1>File Not Found</h1>";
        output.write(emptyMessage.getBytes());
        output.close();
    }
}