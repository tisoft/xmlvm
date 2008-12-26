package org.xmlvm.demo.java.photovm.net;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.Namespace;
import org.jdom.input.SAXBuilder;
import org.xmlvm.demo.java.photovm.data.Photo;

/**
 * Bundles functionality to retrieve data from Google Picasa.
 * 
 * @author Sascha Haeberling
 * 
 */
public class PicasaRequest {
  public static final String USER_PLACE_HOLDER = "{{user_id}}";
  public static final String ALBUM_PLACE_HOLDER = "{{album_id}}";
  public static final String REQUEST_URL = "http://picasaweb.google.com/data/feed/api/user/"
      + USER_PLACE_HOLDER + "/albumid/" + ALBUM_PLACE_HOLDER;
  public static final String TEST_USER_ID = "saschah";
  public static final String TEST_ALBUM_ID = "5173384340503365249";

  public static final Namespace ATOM_NAMESPACE = Namespace
      .getNamespace("http://www.w3.org/2005/Atom");
  public static final Namespace MEDARSS_NAMESPACE = Namespace
      .getNamespace("http://search.yahoo.com/mrss/");

  /**
   * Requests photos from the given user's given album.
   */
  public static List<Photo> requestPhotos(String userId, String albumId) {
    URL url;
    List<Photo> photos = new ArrayList<Photo>();
    try {
      url = new URL(REQUEST_URL.replace(USER_PLACE_HOLDER, userId).replace(
          ALBUM_PLACE_HOLDER, albumId));
      Document xmlDoc = new SAXBuilder().build(url.openStream());
      Element feed = xmlDoc.getRootElement();
      List<Element> entries = feed.getChildren("entry", ATOM_NAMESPACE);
      for (Element entry : entries) {
        photos.add(parsePhoto(entry));
      }
      return photos;
    } catch (MalformedURLException e) {
      e.printStackTrace();
    } catch (JDOMException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return photos;
  }

  private static Photo parsePhoto(Element photo) {
    Photo result = new Photo();
    result.setTitle(photo.getChildText("title", ATOM_NAMESPACE));
    Element mediaGroup = photo.getChild("group", MEDARSS_NAMESPACE);
    List<Element> thumbnails = mediaGroup.getChildren("thumbnail",
        MEDARSS_NAMESPACE);
    Element thumbnail = thumbnails.get(1);
    result.setThumbnailUrl(thumbnail.getAttributeValue("url"));
    result.setThumbnailWidth(thumbnail.getAttributeValue("width"));
    result.setThumbnailHeight(thumbnail.getAttributeValue("height"));
    return result;
  }

}
