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

#ifndef __PRINTSTREAM_H__
#define __PRINTSTREAM_H__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include <stdio.h>

typedef struct {
    int classInitialized;
    const char* className;
    __CLASS_DEFINITION_java_lang_Object* extends;
    VTABLE_PTR vtable[39];
} __CLASS_DEFINITION_java_io_PrintStream;

/*extern*/ __CLASS_DEFINITION_java_io_PrintStream __CLASS_java_io_PrintStream;

#define __INSTANCE_MEMBERS_java_io_PrintStream \
    __INSTANCE_MEMBERS_java_lang_Object


typedef struct {
    __CLASS_DEFINITION_java_io_PrintStream* __class;
    __INSTANCE_MEMBERS_java_io_PrintStream;
} java_io_PrintStream;


void __INIT_java_io_PrintStream();

inline JAVA_OBJECT __NEW_java_io_PrintStream()
{
    if (!__CLASS_java_io_PrintStream.classInitialized) __INIT_java_io_PrintStream();
    java_io_PrintStream* me = (java_io_PrintStream*) XMLVM_MALLOC(sizeof(java_io_PrintStream));
    me->__class = &__CLASS_java_io_PrintStream;
    return me;
}

inline void java_io_PrintStream_println___java_lang_String(JAVA_OBJECT me, java_lang_String* s)
{
	printf("%s\n", s->str);
}

/*inline*/ void java_io_PrintStream_println___int(JAVA_OBJECT me, JAVA_INT i)
{
	printf("%d\n", i);
}

/*
void println___float(float f) {
    std::cout << f << std::endl;
}
};
*/

/*inline*/ void __INIT_java_io_PrintStream()
{
    // Initialize base class if necessary
    if (__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_java_io_PrintStream.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    __CLASS_java_io_PrintStream.vtable[38] = (VTABLE_PTR) &java_io_PrintStream_println___int;

    __CLASS_java_io_PrintStream.classInitialized = 1;

}

#endif

