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

#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"
#include <pthread.h>
#import <objc/runtime.h> // For associative references
#import "java_lang_IllegalArgumentException.h"
#import "java_lang_IllegalMonitorStateException.h"

// java.lang.Object
//----------------------------------------------------------------------------
@implementation NSObject (cat_java_lang_Object)

static char memberKey; // key for associative reference for member variables

- (java_lang_Object_members*)getMembers {
	java_lang_Object_members *members = nil;
	@synchronized(self) {
		members = (java_lang_Object_members *)objc_getAssociatedObject(self, &memberKey);
		if (members == nil) {
			members = [[java_lang_Object_members alloc] init];
			objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
			[members release];
		}
	}
	return members;
}

- (NSString*) getName__
{
	NSString* name = [[self getClass__] getName__];
	[name retain];
	return name;
}

- (void) __init_java_lang_Object__
{
}

- (java_lang_Class*) getClass__
{
	java_lang_Class* wrapperClass = [[java_lang_Class alloc] init];
	wrapperClass->clazz = [self class];
	return wrapperClass;
}

- (int) intValue__
{
	return 0;
}

- (int) equals___java_lang_Object: (java_lang_Object*) o
{
	return self == o;
}

- (int) hashCode__
{
	return [self hash];
}

- (NSString*) toString__
{
	return_XMLVM(description)
}

/*****************************************
 * synchronized implementation
 ****************************************/

- (void) syncLock
{
	java_lang_Object_members* members = [self getMembers];

	[[members syncLock] lock];
	@synchronized (self) {
		[members setOwningThread:(NSInteger)pthread_self()];
	}
}

- (void) syncUnlock
{
	java_lang_Object_members* members = [self getMembers];

	@synchronized (self) {
		[members setOwningThread:(NSInteger)-1];
	}
	[[members syncLock] unlock];
}

/**
 * @return true if the lock was acquired or false if the thread already had the lock
 */
- (BOOL) acquireLockRecursive
{
	java_lang_Object_members* members = [self getMembers];

	BOOL acquireLock = FALSE;
	@synchronized (self) {
		acquireLock = ((NSInteger)pthread_self()) != [members owningThread];
	}

	if (acquireLock) {
		[self syncLock];
	}
	// This would be better implemented with an increment method
	[members setRecursiveLocks:[members recursiveLocks] + 1];
	//NSLog(@"---    Locked level %i, Hash (mostly unique): %i", [members recursiveLocks], [[members syncLock] hash]);

	return acquireLock;
}

- (void) releaseLockRecursive
{
	java_lang_Object_members* members = [self getMembers];

	//NSLog(@"--- Unlocking level %i, Hash (mostly unique): %i", [members recursiveLocks], [[members syncLock] hash]);
	// This would be better implemented with an increment method, but use -1
	[members setRecursiveLocks:[members recursiveLocks] - 1];
	//if (acquireLock) {
	if ([members recursiveLocks] == 0) {
		[self syncUnlock];
	}
}

/*****************************************
 * wait / notify implementation
 ****************************************/

/**
 * Add the thread id to the "wait" list & return it
 */
- (NSInteger) enqueueThreadId
{
	NSInteger threadId = (NSInteger)pthread_self();
	[[[self getMembers] threads] addObject:[[NSNumber alloc] initWithInteger:threadId]];
	return threadId;
}

/**
 * Verify that a synchronized lock is obtained. If it is not, throw an exception.
 */
- (void) checkSynchronized
{
	java_lang_Object_members* members = [self getMembers];

	BOOL ownsObjectMonitor = FALSE;
	@synchronized (self) {
		ownsObjectMonitor = ((NSInteger)pthread_self()) == [members owningThread];
	}
	if (!ownsObjectMonitor) {
		java_lang_IllegalMonitorStateException* ex = [[java_lang_IllegalMonitorStateException alloc] init];
		[ex __init_java_lang_IllegalMonitorStateException___java_lang_String:[NSMutableString stringWithString:@"the current thread is not the owner of the object's monitor"]];
		@throw ex;
	}
}

/**
 * Remove a thread from the list of threads to be notified. This is only required for wait(long) when a timeout occurs.
 * Since the index does not remain consistent, we must find the thread by id.
 */
- (BOOL) removeThreadNotification:(NSInteger) threadId
{
	java_lang_Object_members* members = [self getMembers];

	int i = 0;
	BOOL found = false;
	while (!found && i < [[members threads] count]) {
		if ([[[members threads] objectAtIndex:i] integerValue] == threadId) {
			found = true;

			[[members threads] removeObjectAtIndex:i];
			if (i <= [members notifyAllMaxIndex]) {
				[members incrementNotifyAllMaxIndex:-1];
			}
		} else {
			i++;
		}
	}
	return found;
}

+ (int) getRand:(int) min:(int) max
{
	return (arc4random() % (max - min + 1)) + min;
}

/**
 * Release the current thread's lock and notify the next thread, if any.
 */
- (void) unlockAndNotifyNext
{
	java_lang_Object_members* members = [self getMembers];

	if ([members notifyAllMaxIndex] >= 0) {

		// This can be any random value from 0 to notifyAllMaxIndex inclusive
		int indexToUnlock = [java_lang_Object getRand: 0 : [members notifyAllMaxIndex]];

		// Find the next thread to unlock
		NSInteger nextThreadToUnlock = [[[members threads] objectAtIndex:indexToUnlock] integerValue];

		// Remove the thread from the list of threads to be notified
		[[members threads] removeObjectAtIndex:indexToUnlock];
		[members incrementNotifyAllMaxIndex:-1];

		//NSLog(@"(ALL) Unlocking %i", nextThreadToUnlock);
		[[members notifyLock] unlockWithCondition:nextThreadToUnlock];
	} else {
		[[members notifyLock] unlockWithCondition:-1];
	}
}

- (void) unlockAndNotifySingle
{
	java_lang_Object_members* members = [self getMembers];

	// If called after a notifyAll(), but before all have been notified, notify() should only
	// notify a thread that would not otherwise be notified by the previous notifyAll().
	if ([[members threads] count] > [members notifyAllMaxIndex] + 1) {
		// This can be any random value from notifyAllMaxIndex + 1 to threads.size() exclusive
		int indexToUnlock = [java_lang_Object getRand: [members notifyAllMaxIndex] + 1: [[members threads] count] - 1];

		// Find the next thread to unlock
		NSInteger nextThreadToUnlock = [[[members threads] objectAtIndex:indexToUnlock] integerValue];

		// Remove the thread from the list of threads to be notified
		[[members threads] removeObjectAtIndex:indexToUnlock];

		// There is no need to decrement notifyAllMaxIndex since the notified index is greater than the max for notifyAll

		//NSLog(@"(ONE) Unlocking %i", nextThreadToUnlock);
		[[members notifyLock] unlockWithCondition:nextThreadToUnlock];
	} else {
		[[members notifyLock] unlockWithCondition:-1];
	}
}

/**
 * @return the number of recursive synchronized locks on this object when wait() or wait(long) was called 
 */
- (int) releaseLockBeforeWait
{
	java_lang_Object_members* members = [self getMembers];

	int numLocks = [members recursiveLocks];
	[members setRecursiveLocks:0];
	[self syncUnlock];

	return numLocks;
}

/**
 * @param numLocks the number of recursive synchronized lock to reacquire after a wait() or wait(long) has awakened
 */
- (void) acquireLockAfterWait:(int)numLocks
{
	java_lang_Object_members* members = [self getMembers];

	[self syncLock];
	[members setRecursiveLocks:numLocks];
}

- (void) wait__
{
	[self checkSynchronized];

	java_lang_Object_members* members = [self getMembers];

	NSInteger threadId = [self enqueueThreadId];

	int numLocks = [self releaseLockBeforeWait];
	[[members notifyLock] lockWhenCondition:threadId];
	[self acquireLockAfterWait:numLocks];

	[self unlockAndNotifyNext];
}

- (void) wait___long: (long)timeout
{
	//NSLog(@"Waiting %i", timeout);
	if (timeout < 0L) {
		java_lang_IllegalArgumentException* ex = [[java_lang_IllegalArgumentException alloc] init];
		[ex __init_java_lang_IllegalArgumentException___java_lang_String:[NSMutableString stringWithString:@"the value of timeout is negative"]];
		@throw ex;
	} else if (timeout == 0L) {
		[self wait__];
	} else {

		[self checkSynchronized];

		java_lang_Object_members* members = [self getMembers];

		NSDate* date = [NSDate dateWithTimeIntervalSinceNow:timeout / 1000.0];

		NSInteger threadId = [self enqueueThreadId];

		//NSLog(@"Locking before date on condition %i", threadId);

		int numLocks = [self releaseLockBeforeWait];
		BOOL locked = [[members notifyLock] lockWhenCondition:threadId beforeDate:date];
		[self acquireLockAfterWait:numLocks];
/*
		if (locked) {
			NSLog(@"Timed out? false");
		} else {
			NSLog(@"Timed out? true");
		}
*/
		// If it timed out
		if (!locked) {
			// Remove the thread from the list of threads to be notified
			[self removeThreadNotification:threadId];

			// There is a chance that another thread tried to notify this one
			// after it timed out and before "acquireLockAfterWait" acquired
			// the lock. The following will check if that occurred so that
			// notify doesn't break. I.e. the NSConditionLock has a condition
			// for this thread, so NO other thread would be notified going forward
			// if this wasn't handled.

			NSDate* smallTimeout = [NSDate dateWithTimeIntervalSinceNow:0.0];
			locked = [[members notifyLock] lockWhenCondition:threadId beforeDate:smallTimeout];
			if (locked) {
				// Another thread did try to notify this thread
				// after this thread already timed out
				NSLog(@"Tardy notification handled on thread %i", threadId);
			} else {
				// Lock without a condition
				[[members notifyLock] lockWhenCondition:-1];
			}
		}

		[self unlockAndNotifyNext];
	}
}

- (void) notify__
{
	[self checkSynchronized];

	java_lang_Object_members* members = [self getMembers];

	[[members notifyLock] lockWhenCondition:-1];
	[self unlockAndNotifySingle];
}

- (void) notifyAll__
{
	[self checkSynchronized];

	java_lang_Object_members* members = [self getMembers];

	[[members notifyLock] lockWhenCondition:-1];
	// Any thread waiting to be notified can now be notified, but NOT any threads that are waiting after this notification, even if before the notifications complete.
	[members setNotifyAllMaxIndex:[[members threads] count] - 1];
	[self unlockAndNotifyNext];
}

/****************************************/

//- (void)dealloc {
//
//// TODO is it okay to have this method since this IS currently a category of NSObject? I.e. I want to make sure the real dealloc is called & I can't call super dealloc on NSObject
//
//	objc_setAssociatedObject(self, &memberKey, nil, OBJC_ASSOCIATION_ASSIGN);
//	[super dealloc];
//}

@end

@implementation java_lang_Object_members

@synthesize recursiveLocks;
@synthesize owningThread;
@synthesize syncLock;
@synthesize threads;
@synthesize notifyLock;
@synthesize notifyAllMaxIndex;

- (id) init
{
	[super init];
	recursiveLocks = 0;
	owningThread = -1;
	syncLock = [[NSLock alloc] init];

	threads = [[NSMutableArray alloc] initWithCapacity:0]; // It is initialized with an initialCapacity of 0 since most Objects won't use wait/notify
	notifyLock = [[NSConditionLock alloc] initWithCondition:-1];
	notifyAllMaxIndex = -1;
	return self;
}

- (void) incrementNotifyAllMaxIndex: (int) increment
{
	notifyAllMaxIndex += increment;
}

- (void) dealloc
{
	[syncLock release];
	[notifyLock release];
	[threads release];
	[super dealloc];
}

@end
