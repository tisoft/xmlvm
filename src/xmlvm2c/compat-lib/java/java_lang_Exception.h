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


#ifndef __EXCEPTION_H__
#define __EXCEPTION_H__

#include "xmlvm.h"

XMLVM_DEFINE_CLASS(java_lang_Exception, 11)

#define __INSTANCE_FIELDS_java_lang_Exception

typedef struct {
    __TIB_DEFINITION_java_lang_Exception* tib;
    __INSTANCE_FIELDS_java_lang_Exception
} java_lang_Exception;


void __INIT_java_lang_Exception();
JAVA_OBJECT __NEW_java_lang_Exception();
void java_lang_Exception___INIT___(JAVA_OBJECT me);

#endif
