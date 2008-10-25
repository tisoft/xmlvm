
package org.xmlvm.iphone;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;



public class NSURLConnection
{

    static public NSData sendSynchronousRequest(NSMutableURLRequest req,
            NSHTTPURLResponseHolder resp, NSErrorHolder error)
    {
        NSData data = null;
        URL url = req.getURL();
        URLConnection conn;
        try {
            conn = url.openConnection();
            // conn.setDoOutput(true);
            // OutputStreamWriter wr = new
            // OutputStreamWriter(conn.getOutputStream());
            // wr.write(data);
            // wr.flush();

            // Get the response
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn
                    .getInputStream()));
            data = new NSData(rd);
        }
        catch (IOException e) {
            // do nothing
        }

        return data;
    }
}