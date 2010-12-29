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


#include "java_lang_String.h"
#include <stdio.h>
#include <string.h>

NSString* toNSString(JAVA_OBJECT o)
{
	java_lang_String* s = (java_lang_String*) o;
	return [[NSString alloc] initWithCString:s->str];
}


JAVA_OBJECT __NEW_java_lang_String()
{
    java_lang_String* s = (java_lang_String*) XMLVM_MALLOC(sizeof(java_lang_String));
    s->str = "";
    return s;
}


void java_lang_String___INIT____char_ARRAYTYPE(JAVA_OBJECT n0, JAVA_OBJECT n1)
{
	int i;
	java_lang_String* me = (java_lang_String*) n0;
	XMLVMArray* s = (XMLVMArray*) n1;
    me->str = (char*) XMLVM_MALLOC(s->length + 1);
    memcpy(me->str, s->array.c, s->length);
    ((char*) me->str)[s->length] = '\0';
}
  
java_lang_String* java_lang_String_valueOf___int(int i)
{
    java_lang_String* s = (java_lang_String*) __NEW_java_lang_String();
    s->str = (const char*) XMLVM_MALLOC(30);
    sprintf((char*) s->str, "%d", i);
    return s;
}

JAVA_INT java_lang_String_length__(JAVA_OBJECT me)
{
    return strlen(((java_lang_String*) me)->str);
}
