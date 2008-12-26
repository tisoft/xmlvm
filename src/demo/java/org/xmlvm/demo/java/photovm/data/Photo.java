package org.xmlvm.demo.java.photovm.data;

import org.jdom.Element;

public class Photo {
  private String title;
  private String url;
  private String width;
  private String height;
  private String thumbnailUrl;
  private String thumbnailWidth;
  private String thumbnailHeight;

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public String getWidth() {
    return width;
  }

  public void setWidth(String width) {
    this.width = width;
  }

  public String getHeight() {
    return height;
  }

  public void setHeight(String height) {
    this.height = height;
  }

  public String getThumbnailUrl() {
    return thumbnailUrl;
  }

  public void setThumbnailUrl(String thumbnailUrl) {
    this.thumbnailUrl = thumbnailUrl;
  }

  public String getThumbnailWidth() {
    return thumbnailWidth;
  }

  public void setThumbnailWidth(String thumbnailWidth) {
    this.thumbnailWidth = thumbnailWidth;
  }

  public String getThumbnailHeight() {
    return thumbnailHeight;
  }

  public void setThumbnailHeight(String thumbnailHeight) {
    this.thumbnailHeight = thumbnailHeight;
  }
}