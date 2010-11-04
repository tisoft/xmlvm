/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package plugins.zip;

/**
 *
 * @author teras
 */
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
