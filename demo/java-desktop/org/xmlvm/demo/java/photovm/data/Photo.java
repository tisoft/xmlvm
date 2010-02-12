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

package org.xmlvm.demo.java.photovm.data;

/**
 * Data about a Picasa photo entry.
 * 
 * @author haeberling@google.com (Sascha Haeberling)
 *
 */
public class Photo {
  private String title;
  private String url;
  private int width;
  private int height;
  private String thumbnailUrl;
  private int thumbnailWidth;
  private int thumbnailHeight;

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

  public int getWidth() {
    return width;
  }

  public void setWidth(String width) {
    this.width = Integer.parseInt(width);
  }

  public int getHeight() {
    return height;
  }

  public void setHeight(String height) {
    this.height = Integer.parseInt(height);
  }

  public String getThumbnailUrl() {
    return thumbnailUrl;
  }

  public void setThumbnailUrl(String thumbnailUrl) {
    this.thumbnailUrl = thumbnailUrl;
  }

  public int getThumbnailWidth() {
    return thumbnailWidth;
  }

  public void setThumbnailWidth(String thumbnailWidth) {
    this.thumbnailWidth = Integer.parseInt(thumbnailWidth);
  }

  public int getThumbnailHeight() {
    return thumbnailHeight;
  }

  public void setThumbnailHeight(String thumbnailHeight) {
    this.thumbnailHeight = Integer.parseInt(thumbnailHeight);
  }
}
