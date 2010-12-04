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

#import "xmlvm.h"

@class java_lang_Class;
@class java_lang_String;


typedef NSObject java_lang_Object;

@interface NSObject (cat_java_lang_Object) 
//- (id) autorelease;
- (void) __init_java_lang_Object__;
- (java_lang_Class*) getClass__;
- (int) equals___java_lang_Object: (java_lang_Object*) o;
- (int) hashCode__;
- (java_lang_String*) toString__;

- (BOOL) acquireLockRecursive;
- (void) releaseLockRecursive;

- (void) wait__;
- (void) wait___long: (JAVA_LONG)timeout;
- (void) notify__;
- (void) notifyAll__;

- (void) interruptWait: (NSInteger)threadId;

@end

@interface java_lang_Object_members : NSObject {
	//////////////////////////////////////////////////////
	// The following members are synchronization
	//////////////////////////////////////////////////////

	NSLock* syncLock; // When synchronizing on "this", it will actually use "syncLock"
	int recursiveLocks; // the number of recursive locks. If only synchronized once, this is 1
	NSInteger owningThread; // the thread that owns the lock or -1 for none

	//////////////////////////////////////////////////////
	// The following members are for wait(), wait(long), notify(), notifyAll()
	//////////////////////////////////////////////////////

	// Array of ids representing threads waiting. This id is also the condition
	// on which they will lock.  It is initialized with an initialCapacity of 0
	// since most Objects won't use wait/notify
	NSMutableArray* threads;
	// if a notifyAll occurs, notify every thread at or before or this index
	int notifyAllMaxIndex;
	NSConditionLock* notifyLock;

	//////////////////////////////////////////////////////
	//////////////////////////////////////////////////////
}

// For synchronization
@property (nonatomic, retain) NSLock* syncLock;
@property (nonatomic) int recursiveLocks;
@property (nonatomic) NSInteger owningThread;

// For wait(), wait(long), notify(), notifyAll()
@property (nonatomic, retain) NSMutableArray* threads;
@property (nonatomic) int notifyAllMaxIndex;
@property (nonatomic, retain) NSConditionLock* notifyLock;

- (void) incrementNotifyAllMaxIndex: (int) increment;

@end
