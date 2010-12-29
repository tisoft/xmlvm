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

#ifndef __OBJECT_H__
#define __OBJECT_H__

#include "xmlvm.h"

#define XMLVM_VTABLE_SIZE_java_lang_Object 11
#define XMLVM_VTABLE_IDX_java_lang_Object_getClass__ 7

XMLVM_DEFINE_CLASS(java_lang_Object, XMLVM_VTABLE_SIZE_java_lang_Object)

#define __INSTANCE_FIELDS_java_lang_Object int dummy

struct java_lang_Object {
    __TIB_DEFINITION_java_lang_Object* tib;
    __INSTANCE_FIELDS_java_lang_Object;
};

#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
typedef struct java_lang_Object java_lang_Object;
#endif

#define XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__ 10

void __INIT_java_lang_Object();
void java_lang_Object___INIT___(JAVA_OBJECT me);

#endif
