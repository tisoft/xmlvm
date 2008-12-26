package org.xmlvm.demo.java.photovm.net;

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.methods.GetMethod;

/**
 * Helper class for making HTTP requests.
 * 
 * @author Sascha Haeberling
 *
 */
public class HTTPRequest {
  private static HttpClient client = new HttpClient();
  
  public static String get(String url) {
    HttpMethod method = new GetMethod(url);
    try {
      int returnCode = client.executeMethod(method);
      if ((returnCode >= 200) && (returnCode < 300)) {
        return method.getResponseBodyAsString();
      }
    } catch (HttpException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }

    return null;
  }
}
