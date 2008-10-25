
package org.xmlvm.iphone;

import java.io.BufferedReader;
import java.io.IOException;



public class NSData
{

    private BufferedReader reader;



    public NSData(BufferedReader rd)
    {
        reader = rd;
    }



    public String toString()
    {
        String data = "";
        String line;
        try {
            while ((line = reader.readLine()) != null) {
                data += line;
            }
            reader.close();
        }
        catch (IOException e) {
            // do nothing
        }
        return data;
    }

}
