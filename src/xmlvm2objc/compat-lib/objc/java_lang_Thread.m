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
	return self;
}

- (id) initWithCurrentThread
{
	[super init];
	thread = [[NSThread currentThread] retain];
	runnable = nil;
	[threadMap setObject:self forKey:[NSValue valueWithNonretainedObject:thread]];
	return self;
}

- (void) dealloc
{
	[threadMap removeObjectForKey:[NSValue valueWithNonretainedObject:thread]];
	[thread release];
	[runnable release];
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

+ (void) sleep___long: (long) millis
{
	[NSThread sleepForTimeInterval: (double) millis / 1000.0];
}

+ (java_lang_Thread*) currentThread__
{
	NSValue* key = [NSValue valueWithNonretainedObject:[NSThread currentThread]];
	java_lang_Thread* javaCurrentThread = [threadMap objectForKey:key];
	return javaCurrentThread != nil ? [javaCurrentThread retain] : [[java_lang_Thread alloc] initWithCurrentThread];
}

@end
