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

@implementation java_lang_Thread 

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
	return self;
}

- (void) dealloc
{
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
	[runnable run__];
	[self release];
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
	return [[java_lang_Thread alloc] initWithCurrentThread];
}

@end
