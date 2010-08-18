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

#ifndef __OBJECT_H__
#define __OBJECT_H__

#include "xmlvm.h"

#define XMLVM_VTABLE_SIZE_java_lang_Object 11
#define XMLVM_VTABLE_IDX_java_lang_Object_getClass__ 7

XMLVM_DEFINE_CLASS(java_lang_Object, XMLVM_VTABLE_SIZE_java_lang_Object)

#define __INSTANCE_MEMBERS_java_lang_Object

struct java_lang_Object {
    __CLASS_DEFINITION_java_lang_Object* __class;
    __INSTANCE_MEMBERS_java_lang_Object;
};

#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
typedef struct java_lang_Object java_lang_Object;
#endif

#define XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__ 2

void __INIT_java_lang_Object();
void java_lang_Object___INIT___(JAVA_OBJECT me);

#endif
