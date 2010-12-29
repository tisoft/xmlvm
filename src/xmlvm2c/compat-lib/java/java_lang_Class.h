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
