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

#import "java_lang_Thread.h"
#include <pthread.h>

static NSMutableDictionary* threadMap;

@implementation java_lang_Thread 

+ (void) initialize
{
	threadMap = [[NSMutableDictionary alloc] init];
}

- (id) init
{
	[super init];
	thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadCallback:) object:nil];
	runnable = [self retain];
	interrupted = FALSE;
	waitingObj = NULL; // no need for [NSNull null] since this object is never referenced by generated source code
	[threadMap setObject:self forKey:[NSValue valueWithNonretainedObject:thread]];
	return self;
}

- (id) initWithCurrentThread
{
	[super init];
	thread = [[NSThread currentThread] retain];
	runnable = nil;
	interrupted = FALSE;
	waitingObj = NULL; // no need for [NSNull null] since this object is never referenced by generated source code
	[threadMap setObject:self forKey:[NSValue valueWithNonretainedObject:thread]];
	return self;
}

- (void) dealloc
{
	[threadMap removeObjectForKey:[NSValue valueWithNonretainedObject:thread]];
	[thread release];
	[runnable release];
	[waitingObj release];
	[super dealloc];
}

- (void) __init_java_lang_Thread__
{
}

- (void) __init_java_lang_Thread___java_lang_Runnable: (id<java_lang_Runnable>) r
{
	[r retain];
	[runnable release];
	runnable = r;
}

- (void) threadCallback: (id) arg
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	m_pthread_t = pthread_self();
	[runnable run__];
	[self release];
	[pool release];
}

- (void) run__
{
	// Will be overridden in derived class
}

- (void) start__
{
	[self retain];
	[thread start];
}

- (void) join__
{
	// TODO throw InterruptedException if interrupted and clear the interrupted status

	// TODO don't do busy-wait
	while (![thread isFinished]) {
		[NSThread sleepForTimeInterval:0.1];
	}
}

+ (void) sleep___long: (long) millis
{
	// TODO throw InterruptedException if interrupted and clear the interrupted status

	[NSThread sleepForTimeInterval: (double) millis / 1000.0];
}

+ (java_lang_Thread*) currentThread__
{
	NSValue* key = [NSValue valueWithNonretainedObject:[NSThread currentThread]];
	java_lang_Thread* javaCurrentThread = [threadMap objectForKey:key];

	// javaCurrentThread will NOT be null if the thread was created using java_lang_Thread since it is added to threadMap in the constructor.
	// However, if this is the main thread or the thread was created without java_lang_Thread, it could be null.
	if (javaCurrentThread == nil) {
		javaCurrentThread = [[java_lang_Thread alloc] initWithCurrentThread];
	} else {
		[javaCurrentThread retain];
	}

	return javaCurrentThread;
}

/**
 * Set the object on which the thread is waiting. This should ONLY be called within java_lang_Object's wait(), wait(long) or wait(long, int).
 * @param obj the object the thread is synchronized and waiting on (this is used to interrupt a wait). This can be NULL
 */
- (void) setWaitingObject: (java_lang_Object*) obj {
	@synchronized (self) {
		waitingObj = obj;
	}
}

- (void) interrupt__ {
	java_lang_Object* objectForInterrupt = NULL;
	@synchronized (self) {
		interrupted = TRUE;

		// If in a wait(), wait(long), wait(long, int)
		if (waitingObj != NULL) {
			objectForInterrupt = waitingObj;
		}
		// If in a join(), join(long), join(long, int), sleep(long) or sleep(long, int)
//		else if (?) {
// TODO throw an InterruptedException from the thread where it's sleeping or joining and clear the interrupted status. Although this is a reference to the thread, this code is not actually running in that thread. Otherwise, it couldn't be sleeping or joining.
// TODO if a Thread has already been interrupted before sleeping or joining, it still throws an InterruptedException when it attempts to sleep or join
//		}
		else {
			// Thread is not waiting, sleeping or joining.
			// Do nothing. Thread is now marked interrupted.
		}
	}

	// Interrupt the "wait" outside of the synchronized block.
	// Otherwise, a deadlock could occur.
	if (objectForInterrupt != NULL) {
		NSInteger threadId = (NSInteger)m_pthread_t;
		[objectForInterrupt interruptWait:threadId];
	}
}

- (void) setInterrupted:(BOOL)isInterrupted {
	@synchronized (self) {
		interrupted = isInterrupted;
	}
}

/**
 * Clear the current thread's interrupted status and return the previous value
 * @return TRUE if the thread was already interrupted, else false
 */
+ (BOOL) interrupted__ {
	BOOL result = FALSE;
	java_lang_Thread* t = [java_lang_Thread currentThread__];
	@synchronized (t) {
		result = [t isInterrupted__];
		[t setInterrupted: FALSE];
	}
	return result;
}

- (BOOL) isInterrupted__ {
	BOOL result = FALSE;
	@synchronized (self) {
		result = interrupted;
	}
	return result;
}

- (java_lang_String*) getName__ {
	id name = [thread name];
	if (name == NULL) {
		name = @"";
	}
	return name;
}

- (void) setName___java_lang_String:(java_lang_String*)name {
	[thread setName:name];
}

@end
