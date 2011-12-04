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
 
#import "xmlvm.h"
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_NSOperation.h"

// NSOperationQueue
//----------------------------------------------------------------------------
typedef NSOperationQueue org_xmlvm_iphone_NSOperationQueue;
@interface NSOperationQueue (cat_org_xmlvm_iphone_NSOperationQueue)

- (void) addOperation___org_xmlvm_iphone_NSOperation:(org_xmlvm_iphone_NSOperation *) operation;
- (void) addOperationsWaitUntilFinished___java_util_ArrayList_boolean :(java_util_ArrayList*)operations: (int)wait;   
- (void) addOperationWithBlock__;    
- (java_util_ArrayList*) getOperations__;   
- (int) getOperationCount__;   
- (void) cancelAllOperations__;  
- (void) waitUntilAllOperationsAreFinished__;  
- (int) getMaxConcurrentOperationCount__;
- (void) setMaxConcurrentOperationCount___int: (int)count;   
- (void) setSuspended___boolean: (int)suspend;    
- (BOOL) isSuspended__;   
- (void) setName___java_lang_String: (java_lang_String*) name;    
- (java_lang_String*) getName__;   
+ (org_xmlvm_iphone_NSOperationQueue*) getCurrentQueue__;   
+ (org_xmlvm_iphone_NSOperationQueue*) getMainQueue__;

@end
