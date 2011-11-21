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

import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFPage extends CFType {

    /*
     * Static methods
     */

    /**
     * CFTypeID CGPDFPageGetTypeID(void) ;
     */
    public static long getTypeID(){
        throw new RuntimeException("Stub");
    }

    /*
     * Constructors
     */

    /** Default constructor */
    CGPDFPage() {}

    /*
     * Instance methods
     */

    /**
     * CGPDFPageRef CGPDFPageRetain(CGPDFPageRef page) ;
     */
    public CGPDFPage retain(){
        throw new RuntimeException("Stub");
    }

    /**
     * void CGPDFPageRelease(CGPDFPageRef page) ;
     */
    public void release(){
        throw new RuntimeException("Stub");
    }

    /**
     * CGPDFDocumentRef CGPDFPageGetDocument(CGPDFPageRef page) ;
     */
    public CGPDFDocument getDocument(){
        throw new RuntimeException("Stub");
    }

    /**
     * size_t CGPDFPageGetPageNumber(CGPDFPageRef page) ;
     */
    public int getPageNumber(){
        throw new RuntimeException("Stub");
    }

    /**
     * CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box) ;
     */
    public CGRect getBoxRect(int box){
        throw new RuntimeException("Stub");
    }

    /**
     * int CGPDFPageGetRotationAngle(CGPDFPageRef page) ;
     */
    public int getRotationAngle(){
        throw new RuntimeException("Stub");
    }

    /**
     * CGAffineTransform CGPDFPageGetDrawingTransform(CGPDFPageRef page, CGPDFBox box, CGRect rect, int rotate, bool preserveAspectRatio) ;
     */
    public CGAffineTransform getDrawingTransform(int box, CGRect rect, int rotate, boolean preserveAspectRatio){
        throw new RuntimeException("Stub");
    }

//    /**
//     * CGPDFDictionaryRef CGPDFPageGetDictionary(CGPDFPageRef page) ;
//     */
//    public CGPDFDictionary getDictionary(){
//        throw new RuntimeException("Stub");
//    }
}
