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

@implementation XMLVMArray

+ (XMLVMArray*) createSingleDimensionWithType:(int) type andSize:(int) size
{
    XMLVMArray *retval = [[[XMLVMArray alloc] init] autorelease];
    retval->type = type;
    retval->length = size;

    int sizeOfBaseType = [XMLVMArray sizeOfBaseTypeInBytes:type];
    retval->array.data = malloc(sizeOfBaseType * size);
    bzero(retval->array.data, sizeOfBaseType * size);

    if (type == 0) {
        for (int i = 0; i < size; i++) {
            retval->array.o[i] = [NSNull null];
        }
    }

    return retval;
}

+ (XMLVMArray*) createMultiDimensionsWithType:(int) type dimensions:(XMLVMElem*) dim count:(int)count
{
	int dimensions = dim->i;
	dim++;
	count--;
	if (count == 0) {
		return [XMLVMArray createSingleDimensionWithType:type andSize:dimensions];
	}
	XMLVMArray* slice = [XMLVMArray createSingleDimensionWithType:0 andSize:dimensions];
	for (int i = 0; i < dimensions; i++) {
		id o = [XMLVMArray createMultiDimensionsWithType:type dimensions:dim count:count];
		[slice replaceObjectAtIndex:i withObject:o];
	}
	return slice;
}

+ (int) sizeOfBaseTypeInBytes:(int) type
{
	int sizeOfBaseType;
	
    // 'type' values are defined by vm:sizeOf in xmlvm2objc.xsl
    switch (type) {
    case 1: // boolean
    case 2: // char
    case 3: // byte
    case 4: // short
    case 5: // int
       sizeOfBaseType = sizeof(int);
       break;
    case 6: // float
       sizeOfBaseType = sizeof(float);
       break;
    case 7: // double
       sizeOfBaseType = sizeof(double);
       break;
    case 8: // long
       sizeOfBaseType = sizeof(long);
       break;
    default: // object reference
       sizeOfBaseType = sizeof(id);
       break;
    }
    
    return sizeOfBaseType;
}

- (id) objectAtIndex:(int) idx
{
    id obj = self->array.o[idx];
    return obj;
}

- (void) replaceObjectAtIndex:(int) idx withObject:(id) obj
{
    [obj retain];
    [self->array.o[idx] release];
    self->array.o[idx] = obj;
}

- (int) count
{
    return length;
}

- (void) dealloc
{
    if (self->type == 0) {
        for (int i = 0; i < length; i++) {
            [self->array.o[i] release];
        }
    }
    free(self->array.data);
    [super dealloc];
}

- (XMLVMArray*) clone__
{
    XMLVMArray *retval = [[XMLVMArray alloc] init];
    retval->type = self->type;
    retval->length = self->length;

    int sizeOfBaseType = [XMLVMArray sizeOfBaseTypeInBytes:self->type];
    int sizeOfArrayInBytes = sizeOfBaseType * self->length;
    retval->array.data = malloc(sizeOfArrayInBytes);

    if (type == 0) {
        for (int i = 0; i < self->length; i++) {
            retval->array.o[i] = [self->array.o[i] retain];
        }
    }
    else {
	    memcpy(retval->array.data, self->array.data, sizeOfArrayInBytes);
    }

    return retval;
}

@end



void ERROR(char* msg)
{
	NSLog([NSString stringWithUTF8String:msg]);
	@throw [NSException exceptionWithName: @"XMLVM missing byte code instruction" reason:[NSString stringWithUTF8String:msg] userInfo: nil];
}
