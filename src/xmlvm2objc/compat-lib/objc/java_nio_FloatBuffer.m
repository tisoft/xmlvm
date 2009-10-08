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

#import "java_nio_FloatBuffer.h"


// java_nio_FloatBuffer
//----------------------------------------------------------------------------
@implementation java_nio_FloatBuffer


- (void) __init_java_nio_FloatBuffer___int: (int) size
{
	data = (float *) malloc(sizeof(float) * size);
	index = 0;
}

- (float) get___float: (int) value
{
	return data[value];
}

- (java_nio_FloatBuffer*) put___float: (float) value
{
	data[index] = value;
	index++;
	[self retain];
	return self;
}

- (java_nio_FloatBuffer*) reset
{
	index = 0;
	[self retain];
	return self;
}

- (void) dealloc {
	free(data);

    [super dealloc];
}

@end
