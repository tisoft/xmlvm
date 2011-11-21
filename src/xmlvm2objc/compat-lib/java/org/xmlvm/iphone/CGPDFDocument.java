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

package org.xmlvm.iphone;


import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CGPDFDocument extends CFType {

    @Override
    protected void finalize() {
        /*
         * The implementation of the wrapper for the C backend for this method
         * will CGPDFDocumentRelease the wrapped CGPDFDocument.
         */
    }

    /*
     * Static methods
     */

    /**
     * CGPDFDocumentRef CGPDFDocumentCreateWithProvider(CGDataProviderRef
     * provider) ;
     */
    public static CGPDFDocument createWithProvider(CGDataProvider provider) {
        throw new RuntimeException("Stub");
    }

    /**
     * CGPDFDocumentRef CGPDFDocumentCreateWithURL(CFURLRef url) ;
     */
    public static CGPDFDocument createWithURL(CFURL url) {
        throw new RuntimeException("Stub");
    }

    /**
     * CFTypeID CGPDFDocumentGetTypeID(void) ;
     */
    public static long getTypeID() {
        throw new RuntimeException("Stub");
    }

    /*
     * Constructors
     */

    /** Default constructor */
    CGPDFDocument() {
    }

    /*
     * Instance methods
     */

    /**
     * CGPDFDocumentRef CGPDFDocumentRetain(CGPDFDocumentRef document) ;
     */
    public CGPDFDocument retain() {
        throw new RuntimeException("Stub");
    }

    /**
     * void CGPDFDocumentRelease(CGPDFDocumentRef document) ;
     */
    public void release() {
        throw new RuntimeException("Stub");
    }

    /**
     * void CGPDFDocumentGetVersion(CGPDFDocumentRef document, int
     * *majorVersion, int *minorVersion) ;
     */
    public void getVersion(int[] majorVersion, int[] minorVersion) {
        throw new RuntimeException("Stub");
    }

    /**
     * bool CGPDFDocumentIsEncrypted(CGPDFDocumentRef document) ;
     */
    public boolean isEncrypted() {
        throw new RuntimeException("Stub");
    }

    /**
     * bool CGPDFDocumentUnlockWithPassword(CGPDFDocumentRef document, const
     * char *password) ;
     */
    public boolean unlockWithPassword(byte[] password) {
        throw new RuntimeException("Stub");
    }

    /**
     * bool CGPDFDocumentIsUnlocked(CGPDFDocumentRef document) ;
     */
    public boolean isUnlocked() {
        throw new RuntimeException("Stub");
    }

    /**
     * bool CGPDFDocumentAllowsPrinting(CGPDFDocumentRef document) ;
     */
    public boolean allowsPrinting() {
        throw new RuntimeException("Stub");
    }

    /**
     * bool CGPDFDocumentAllowsCopying(CGPDFDocumentRef document) ;
     */
    public boolean allowsCopying() {
        throw new RuntimeException("Stub");
    }

    /**
     * size_t CGPDFDocumentGetNumberOfPages(CGPDFDocumentRef document) ;
     */
    public int getNumberOfPages() {
        throw new RuntimeException("Stub");
    }

    /**
     * CGPDFPageRef CGPDFDocumentGetPage(CGPDFDocumentRef document, size_t
     * pageNumber) ;
     */
    public CGPDFPage getPage(int pageNumber) {
        throw new RuntimeException("Stub");
    }

//    /**
//     * CGPDFDictionaryRef CGPDFDocumentGetCatalog(CGPDFDocumentRef document) ;
//     */
//    public CGPDFDictionary getCatalog() {
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * CGPDFDictionaryRef CGPDFDocumentGetInfo(CGPDFDocumentRef document) ;
//     */
//    public CGPDFDictionary getInfo() {
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * CGPDFArrayRef CGPDFDocumentGetID(CGPDFDocumentRef document) ;
//     */
//    public CGPDFArray getID() {
//        throw new RuntimeException("Stub");
//    }

    /**
     * CGRect CGPDFDocumentGetMediaBox(CGPDFDocumentRef document, int page) ;
     */
    public CGRect getMediaBox(int page) {
        throw new RuntimeException("Stub");
    }

    /**
     * CGRect CGPDFDocumentGetCropBox(CGPDFDocumentRef document, int page) ;
     */
    public CGRect getCropBox(int page) {
        throw new RuntimeException("Stub");
    }

    /**
     * CGRect CGPDFDocumentGetBleedBox(CGPDFDocumentRef document, int page) ;
     */
    public CGRect getBleedBox(int page) {
        throw new RuntimeException("Stub");
    }

    /**
     * CGRect CGPDFDocumentGetTrimBox(CGPDFDocumentRef document, int page) ;
     */
    public CGRect getTrimBox(int page) {
        throw new RuntimeException("Stub");
    }

    /**
     * CGRect CGPDFDocumentGetArtBox(CGPDFDocumentRef document, int page) ;
     */
    public CGRect getArtBox(int page) {
        throw new RuntimeException("Stub");
    }

    /**
     * int CGPDFDocumentGetRotationAngle(CGPDFDocumentRef document, int page) ;
     */
    public int getRotationAngle(int page) {
        throw new RuntimeException("Stub");
    }
}
