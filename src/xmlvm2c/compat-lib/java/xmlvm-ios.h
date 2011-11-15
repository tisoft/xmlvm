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

#import <CoreMedia/CoreMedia.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIApplication.h>
#import <UIKit/UIWindow.h>
#import <UIKit/UIView.h>
#import <UIKit/UIViewController.h>
#import <UIKit/UITableView.h>
#import <UIKit/UITableViewCell.h>
#import <UIKit/UIImage.h>
#import <UIKit/UIImageView.h>
#import <UIKit/UIScreen.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UILabel.h>
#import <UIKit/UITextField.h>
#import <UIKit/UISwitch.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIStringDrawing.h>
#import <CoreMedia/CMTime.h>
#import <CoreGraphics/CGImage.h>
#import <UIKit/UIImage.h>
#import <CoreGraphics/CGColorSpace.h>

#import <objc/runtime.h>
#include "xmlvm-util.h"
#include "java_lang_Class.h"
#include "java_lang_reflect_Method.h"
#include "java_net_URL.h"
#include "java_io_Reader.h"

#define MAX_WRAPPER_CREATOR_FUNCS 20

#define XMLVM_VAR_J2SE(clazz, var, arg) clazz* var = arg;
#define XMLVM_VAR_BYTE(var, arg)    JAVA_BYTE var = arg;
#define XMLVM_VAR_BOOLEAN(var, arg) JAVA_BOOLEAN var = arg;
#define XMLVM_VAR_SHORT(var, arg)   JAVA_SHORT var = arg;
#define XMLVM_VAR_INT(var, arg)     JAVA_INT var = arg;
#define XMLVM_VAR_FLOAT(var, arg)   JAVA_FLOAT var = arg;
#define XMLVM_VAR_LONG(var, arg)    JAVA_LONG var = arg;
#define XMLVM_VAR_DOUBLE(var, arg)  JAVA_DOUBLE var = arg;

#ifdef XMLVM_NEW_IOS_API

#include "org_xmlvm_ios_NSString.h"

#define XMLVM_VAR_IOS(clazz, var, arg) \
org_xmlvm_ios_##clazz* j##var = arg; \
clazz* var = (arg == JAVA_NULL) ? nil : (clazz*) (j##var->fields.org_xmlvm_ios_NSObject.wrappedObjCObj);

#define XMLVM_VAR_THIZ \
    XMLVM_CURRENT_PKG_CLASS_NAME* jthiz = me; \
    XMLVM_CURRENT_CLASS_NAME* thiz = \
        (XMLVM_CURRENT_CLASS_NAME*) (jthiz->fields.org_xmlvm_ios_NSObject.wrappedObjCObj);

#else // begin !XMLVM_NEW_IOS_API

#define XMLVM_VAR_IOS(clazz, var, arg) \
org_xmlvm_iphone_##clazz* j##var = arg; \
clazz* var = (arg == JAVA_NULL) ? nil : (clazz*) (j##var->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj);

#define XMLVM_VAR_THIZ \
    XMLVM_CURRENT_PKG_CLASS_NAME* jthiz = me; \
    XMLVM_CURRENT_CLASS_NAME* thiz = \
        (XMLVM_CURRENT_CLASS_NAME*) (jthiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj);

#define XMLVM_VAR_CFTHIZ \
    XMLVM_CURRENT_PKG_CLASS_NAME* jthiz = me; \
    XMLVM_CURRENT_CLASS_NAME_REF thiz = \
        (XMLVM_CURRENT_CLASS_NAME_REF) (jthiz->fields.org_xmlvm_iphone_CFType.wrappedCFTypeRef);

#endif // end of !XMLVM_NEW_IOS_API

#define XMLVM_VAR_NSString(var, arg) \
java_lang_String* j##var = arg; \
NSString* var = toNSString(arg);

#define XMLVM_VAR_NSRunLoopMode(var, arg) \
    java_lang_String* j##var = arg; \
    NSString* var = toNSString(arg); \
    if      ([NSDefaultRunLoopMode isEqualToString:var]) { [var release]; var = NSDefaultRunLoopMode; } \
    else if ([NSRunLoopCommonModes isEqualToString:var]) { [var release]; var = NSRunLoopCommonModes; } \
    else { [var release]; XMLVM_ERROR("Run Loop Mode not defined in XMLVM. Exact references to the run loop mode's NSString are required. A simple java.lang.String to NSString will not suffice.", __FILE__, __FUNCTION__, __LINE__); }

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
