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


#import "xmlvm.h"
#import <iostream>


XMLVMRootObject* JAVA_NULL;

void xmlvm_init()
{
    JAVA_NULL = new XMLVMRootObject();  // TODO should be java_lang_null
    JAVA_NULL->retainCount = -1;
}


XMLVMArray::~XMLVMArray()
{
    if (type == 0) {
        for (int i = 0; i < length; i++) {
            array.o[i]->__release();
        }
    }
	if (ownsData == true) {
        free(array.data);
	}
}

XMLVMArray* XMLVMArray::createSingleDimension(int type, int size)
{
    XMLVMArray *retval = new XMLVMArray();
    retval->type = type;
    retval->length = size;
    retval->ownsData = true;

    int sizeOfBaseType = XMLVMArray::sizeOfBaseTypeInBytes(type);
    retval->array.data = malloc(sizeOfBaseType * size);
    bzero(retval->array.data, sizeOfBaseType * size);

    if (type == 0) {
        for (int i = 0; i < size; i++) {
            retval->array.o[i] = JAVA_NULL;
        }
    }

    return retval;
}

XMLVMArray* XMLVMArray::createSingleDimension(int type, int size, void* data)
{
    XMLVMArray *retval = new XMLVMArray();
    retval->type = type;
    retval->length = size;
    retval->array.data = data;
    retval->ownsData = false;
    return retval;
}

XMLVMArray* XMLVMArray::createMultiDimensions(int type, XMLVMElem* dim, int count)
{
	int dimensions = dim->i;
	dim++;
	count--;
	if (count == 0) {
		return XMLVMArray::createSingleDimension(type, dimensions);
	}
	XMLVMArray* slice = XMLVMArray::createSingleDimension(0, dimensions);
	for (int i = 0; i < dimensions; i++) {
		XMLVMArray* o = XMLVMArray::createMultiDimensions(type, dim, count);
		slice->replaceObjectAtIndex(i, o);
	}
	return slice;
}

XMLVMArray* XMLVMArray::createFromString(const char* str)
{
    XMLVMArray *retval = new XMLVMArray();
    retval->type = 2; // CHAR
    retval->length = strlen(str);
    retval->array.data = (void*) str;
    retval->ownsData = false;
    return retval;
}

void XMLVMArray::fillArray(XMLVMArray* array, void* data)
{
    int sizeOfBaseType = XMLVMArray::sizeOfBaseTypeInBytes(array->type);
    int n = sizeOfBaseType * array->length;
    memcpy(array->array.data, data, n);
}

int XMLVMArray::sizeOfBaseTypeInBytes(int type)
{
	int sizeOfBaseType;
	
    // 'type' values are defined by vm:sizeOf in xmlvm2cpp.xsl
    switch (type) {
    case 1: // boolean
    case 3: // byte
       sizeOfBaseType = sizeof(JAVA_ARRAY_BYTE);
       break;
    case 2: // char
    case 4: // short
       sizeOfBaseType = sizeof(JAVA_ARRAY_SHORT);
       break;
    case 5: // int
       sizeOfBaseType = sizeof(JAVA_ARRAY_INT);
       break;
    case 6: // float
       sizeOfBaseType = sizeof(JAVA_ARRAY_FLOAT);
       break;
    case 7: // double
       sizeOfBaseType = sizeof(JAVA_ARRAY_DOUBLE);
       break;
    case 8: // long
       sizeOfBaseType = sizeof(JAVA_ARRAY_LONG);
       break;
    default: // object reference
       sizeOfBaseType = sizeof(void*);
       break;
    }
    
    return sizeOfBaseType;
}

XMLVMRootObject* XMLVMArray::objectAtIndex(int idx)
{
    XMLVMRootObject* obj = array.o[idx];
    return obj->__retain();
}

void XMLVMArray::replaceObjectAtIndex(int idx, XMLVMRootObject* obj)
{
    obj->__retain();
    array.o[idx]->__release();
    array.o[idx] = obj;
}

int XMLVMArray::count()
{
    return length;
}

XMLVMArray* XMLVMArray::clone__()
{
    XMLVMArray *retval = new XMLVMArray();
    retval->type = type;
    retval->length = length;
    retval->ownsData = true;

    int sizeOfBaseType = XMLVMArray::sizeOfBaseTypeInBytes(type);
    int sizeOfArrayInBytes = sizeOfBaseType * length;
    retval->array.data = malloc(sizeOfArrayInBytes);

    if (type == 0) {
        for (int i = 0; i < length; i++) {
            retval->array.o[i] = array.o[i]->__retain();
        }
    }
    else {
	    memcpy(retval->array.data, array.data, sizeOfArrayInBytes);
    }

    return retval;
}

void ERROR(char* msg)
{
    std::cout << msg << std::endl;
}
