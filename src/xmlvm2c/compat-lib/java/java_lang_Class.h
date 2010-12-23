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


#ifndef __TIB_H__
#define __TIB_H__

#include "xmlvm.h"
#include "java_lang_Object.h"

#define XMLVM_VTABLE_SIZE_java_lang_Class 73
#define XMLVM_VTABLE_IDX_java_lang_Class_getName__ 11

XMLVM_DEFINE_CLASS(java_lang_Class, XMLVM_VTABLE_SIZE_java_lang_Class)

#define __INSTANCE_FIELDS_java_lang_Class \
__INSTANCE_FIELDS_java_lang_Object; \
struct { \
	int dummy;\
} java_lang_Class

struct java_lang_Class {
    __TIB_DEFINITION_java_lang_Class* tib;
    __INSTANCE_FIELDS_java_lang_Class;
};
#ifndef XMLVM_FORWARD_DECL_java_lang_Class
#define XMLVM_FORWARD_DECL_java_lang_Class
typedef struct java_lang_Class java_lang_Class;
#endif

void __INIT_java_lang_Class();
JAVA_OBJECT __NEW_java_lang_Class();

#endif
