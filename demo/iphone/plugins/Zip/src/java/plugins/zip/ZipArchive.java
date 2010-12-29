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

package plugins.zip;

public class ZipArchive {

    private ZipArchiveDelegate delegate;


    public boolean createZipFile2(String zipFile) {
        return true;
    }

    public boolean createZipFile2(String zipFile, String password) {
        return true;
    }

    public boolean addFileToZip(String file, String newname) {
        return true;
    }

    public boolean closeZipFile2() {
        return true;
    }

    public boolean unzipOpenFile(String zipFile) {
        return true;
    }

    public boolean unzipOpenFile(String zipFile, String password) {
        return true;
    }

    public boolean unzipFileTo(String path, boolean overwrite) {
        return true;
    }

    public boolean unzipCloseFile() {
        return true;
    }

    public ZipArchiveDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(ZipArchiveDelegate delegate) {
        this.delegate = delegate;
    }
}
