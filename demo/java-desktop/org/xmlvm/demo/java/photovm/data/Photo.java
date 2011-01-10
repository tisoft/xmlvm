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

package org.xmlvm.demo.java.photovm.data;

/**
 * Data about a Picasa photo entry.
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
