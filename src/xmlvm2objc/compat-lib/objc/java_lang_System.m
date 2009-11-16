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

#import "java_lang_System.h"


// java.lang.System
//----------------------------------------------------------------------------
java_io_PrintStream* _STATIC_java_lang_System_out;

@implementation java_lang_System;


/*
 TODO - this currently broken as while it returns a consistently changing 
 value it doesn't return an accurate time according to the Java spec for this method.
 Problems lie in the long representation on the 32 bit target architecture.
 */
+ (long) currentTimeMillis__
{
    double result = trunc(([NSDate timeIntervalSinceReferenceDate] - 268300000) * 1000);
	result -= 2168640000;
    return (int) result;
}

+ (void) initialize
{
    java_io_PrintStream* v = [[[java_io_PrintStream alloc] init] autorelease];
    [java_lang_System _PUT_out: v];
}

+ (java_io_PrintStream*) _GET_out
{
    return _STATIC_java_lang_System_out;
}

+ (void) _PUT_out: (java_io_PrintStream*) v
{
    [v retain];
    [_STATIC_java_lang_System_out release];
    _STATIC_java_lang_System_out = v;
}

/*
 TODO - This currently does nothing with the properties passed-in, it might be worthwhile
 to actually store the values and provide other related methods, like getProperty. 
 The function was only added to allow Java code that sets properties required by the OpenGL 
 support in the xmlvm iPhone Simulator to cross-compile without modification.
 */

+ (java_lang_String *) setProperty___java_lang_String_java_lang_String: (java_lang_String *) s1: (java_lang_String *)s2
{
    return NULL;
}

@end
