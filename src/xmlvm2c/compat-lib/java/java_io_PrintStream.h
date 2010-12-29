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

#ifndef __PRINTSTREAM_H__
#define __PRINTSTREAM_H__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

XMLVM_DEFINE_CLASS(java_io_PrintStream, 39)

#define __INSTANCE_FIELDS_java_io_PrintStream \
    __INSTANCE_FIELDS_java_lang_Object


struct java_io_PrintStream {
    __TIB_DEFINITION_java_io_PrintStream* tib;
    __INSTANCE_FIELDS_java_io_PrintStream;
};

#ifndef XMLVM_FORWARD_DECL_java_io_PrintStream
#define XMLVM_FORWARD_DECL_java_io_PrintStream
typedef struct java_io_PrintStream java_io_PrintStream;
#endif

void __INIT_java_io_PrintStream();
JAVA_OBJECT __NEW_java_io_PrintStream();
void java_io_PrintStream_println___java_lang_String(JAVA_OBJECT me, java_lang_String* s);
void java_io_PrintStream_println___int(JAVA_OBJECT me, JAVA_INT i);
void java_io_PrintStream_println___float(JAVA_OBJECT me, JAVA_FLOAT f);

#endif

