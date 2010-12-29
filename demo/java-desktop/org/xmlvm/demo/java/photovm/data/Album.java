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
 * Data about a Picasa we album entry.
 * 
 * @author haeberling@google.com (Sascha Haeberling)
 * 
 */
public class Album {
  private String title;
  private String coverUrl;
  private int coverWidth;
  private int coverHeight;
  private String photoRequestUrl;

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getCoverUrl() {
    return coverUrl;
  }

  public void setCoverUrl(String coverUrl) {
    this.coverUrl = coverUrl;
  }

  public String getPhotoRequestUrl() {
    return photoRequestUrl;
  }

  public void setPhotoRequestUrl(String photoRequestUrl) {
    this.photoRequestUrl = photoRequestUrl;
  }

  public int getCoverHeight() {
    return coverHeight;
  }

  public void setCoverHeight(String coverHeight) {
    this.coverHeight = Integer.parseInt(coverHeight);
  }

  public int getCoverWidth() {
    return coverWidth;
  }

  public void setCoverWidth(String coverWidth) {
    this.coverWidth = Integer.parseInt(coverWidth);
  }
}
