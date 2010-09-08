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

#ifndef __STRINGX_H__
#define __STRINGX_H__

#include "java_lang_Object.h"

#import <Foundation/Foundation.h>

NSString* toNSString(JAVA_OBJECT o);


struct java_lang_String {
    const char* str;
};

#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
typedef struct java_lang_String java_lang_String;
#endif


JAVA_OBJECT __NEW_java_lang_String();
void java_lang_String___INIT____char_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT s);
java_lang_String* java_lang_String_valueOf___int(int i);
JAVA_INT java_lang_String_length__(JAVA_OBJECT me);

#endif
