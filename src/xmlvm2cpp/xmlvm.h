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


#import <math.h>


class java_lang_Object;


void xmlvm_init();

class XMLVMRootObject {
private:
    virtual void __dummy() {}

/*
public:
    int retainCount;
    
public:
    XMLVMRootObject() {
        retainCount = 1;
    }

    virtual ~XMLVMRootObject() {}

    XMLVMRootObject* __retain() {
        if (retainCount != -1) retainCount++;
        return this;
    }

    void __release() {
        if (retainCount != -1) {
            retainCount--;
            if (retainCount == 0) {
                delete this;
            }
        }
    }
*/

};


typedef void   JAVA_VOID;
typedef int    JAVA_BOOLEAN;
typedef int    JAVA_CHAR;
typedef int    JAVA_BYTE;
typedef int    JAVA_SHORT;
typedef int    JAVA_INT;
typedef long   JAVA_LONG;
typedef float  JAVA_FLOAT;
typedef double JAVA_DOUBLE;


typedef char              JAVA_ARRAY_BYTE;
typedef unsigned short    JAVA_ARRAY_CHAR;
typedef short             JAVA_ARRAY_SHORT;
typedef int               JAVA_ARRAY_INT;
typedef long              JAVA_ARRAY_LONG;
typedef float             JAVA_ARRAY_FLOAT;
typedef double            JAVA_ARRAY_DOUBLE;
typedef XMLVMRootObject*  JAVA_ARRAY_OBJECT;


typedef union {
    XMLVMRootObject*  o;
    int     i;
    float   f;
    double  d;
    long    l;
} XMLVMElem;

typedef union {
    JAVA_ARRAY_OBJECT* o;
    JAVA_ARRAY_BYTE*   b;
    JAVA_ARRAY_CHAR*   c;
    JAVA_ARRAY_SHORT*  s;
    JAVA_ARRAY_INT*    i;
    JAVA_ARRAY_FLOAT*  f;
    JAVA_ARRAY_DOUBLE* d;
    JAVA_ARRAY_LONG*   l;
    void*              data;
} XMLVMElemPtr;


extern XMLVMRootObject* JAVA_NULL;


class XMLVMArray : public XMLVMRootObject
{
public:
    XMLVMElemPtr array;
    int          type;
    int          length;
    bool         ownsData;

    virtual ~XMLVMArray();
    static XMLVMArray* createSingleDimension(int type, int size);
    static XMLVMArray* createSingleDimension(int type, int size, void* data);
    static XMLVMArray* createMultiDimensions(int type, XMLVMElem* dimensions, int count);
    static XMLVMArray* createFromString(const char* str);
    static void fillArray(XMLVMArray* array, void* data);
    static int sizeOfBaseTypeInBytes(int type);
    XMLVMRootObject* objectAtIndex(int idx);
    void replaceObjectAtIndex(int idx, XMLVMRootObject* obj);
    int count();
    XMLVMArray* clone__();
};


void ERROR(char* msg);

