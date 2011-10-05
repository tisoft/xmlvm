/*
 * Copyright (c) 2002-2011 by XMLVM.org
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

#ifndef __XMLVM_IOS_H__
#define __XMLVM_IOS_H__

#include "xmlvm.h"

#define XMLVM_VAR_J2SE(clazz, var, arg) clazz* var = arg;
#define XMLVM_VAR_BYTE(var, arg)    JAVA_BYTE var = arg;
#define XMLVM_VAR_BOOLEAN(var, arg) JAVA_BOOLEAN var = arg;
#define XMLVM_VAR_SHORT(var, arg)   JAVA_SHORT var = arg;
#define XMLVM_VAR_INT(var, arg)     JAVA_INT var = arg;
#define XMLVM_VAR_FLOAT(var, arg)   JAVA_FLOAT var = arg;
#define XMLVM_VAR_LONG(var, arg)    JAVA_LONG var = arg;
#define XMLVM_VAR_DOUBLE(var, arg)  JAVA_DOUBLE var = arg;


#define XMLVM_VAR_IOS(clazz, var, arg) \
org_xmlvm_iphone_##clazz* j##var = arg; \
clazz* var = (arg == JAVA_NULL) ? nil : (clazz*) (j##var->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj);

#define XMLVM_VAR_NSString(var, arg) \
java_lang_String* j##var = arg; \
NSString* var = toNSString(arg);


#define XMLVM_VAR_BYTE_ARRAY(var, arg) \
org_xmlvm_runtime_XMLVMArray* var = arg; \
JAVA_ARRAY_BYTE* var##Data = (JAVA_ARRAY_BYTE*) var->fields.org_xmlvm_runtime_XMLVMArray.array_; \
JAVA_INT var##Length = var->fields.org_xmlvm_runtime_XMLVMArray.length_;

#define XMLVM_VAR_INT_ARRAY(var, arg) \
org_xmlvm_runtime_XMLVMArray* var = arg; \
JAVA_ARRAY_INT* var##Data = (JAVA_ARRAY_INT*) var->fields.org_xmlvm_runtime_XMLVMArray.array_; \
JAVA_INT var##Length = var->fields.org_xmlvm_runtime_XMLVMArray.length_;

#define XMLVM_VAR_FLOAT_ARRAY(var, arg) \
org_xmlvm_runtime_XMLVMArray* var = arg; \
JAVA_ARRAY_FLOAT* var##Data = (JAVA_ARRAY_FLOAT*) var->fields.org_xmlvm_runtime_XMLVMArray.array_; \
JAVA_INT var##Length = var->fields.org_xmlvm_runtime_XMLVMArray.length_;

#endif
