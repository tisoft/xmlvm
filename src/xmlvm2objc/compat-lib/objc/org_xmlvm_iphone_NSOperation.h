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

// NSOperation
//----------------------------------------------------------------------------
typedef NSOperation org_xmlvm_iphone_NSOperation;
@interface NSOperation (cat_org_xmlvm_iphone_NSOperation)
-(org_xmlvm_iphone_NSOperation*) init__;   
-(void) start__;  
-(void) main__;
-(void) cancel__;  
-(BOOL) isCancelled__;  
-(BOOL) isExecuting__; 
-(BOOL) isFinished__;
-(BOOL) isConcurrent__;
-(BOOL) isReady__; 
-(void) addDependency___org_xmlvm_iphone_NSOperation:(org_xmlvm_iphone_NSOperation*) operation;
-(void) removeDependency___org_xmlvm_iphone_NSOperation:(org_xmlvm_iphone_NSOperation*) operation;
-(java_util_ArrayList*) getDependencies__;  
-(int) getQueuePriority__;
-(void) setQueuePriority___int:(int) priority;   
-(double) getThreadPriority__;
-(void) setThreadPriority___double:(double) priority;
-(void) waitUntilFinished__;

@end
