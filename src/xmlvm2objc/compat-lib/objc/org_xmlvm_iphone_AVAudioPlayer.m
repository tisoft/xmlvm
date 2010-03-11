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

#import "org_xmlvm_iphone_AVAudioPlayer.h"

@implementation AVAudioPlayerDelegateWrapper

- (id) initWithDelegate: (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) d
{
	[super init];
	self->delegate = [d retain];
	return self;
}

- (void) dealloc
{
	[delegate release];
	[super dealloc];
}


- (void) audioPlayerDidFinishPlaying
			: (AVAudioPlayer*) player successfully
			: (BOOL) flag
{
	[delegate audioPlayerDidFinishPlaying___org_xmlvm_iphone_AVAudioPlayer_boolean
			: player
			: flag];
}

- (void) audioPlayerDecodeErrorDidOccur
			: (AVAudioPlayer*) player error
			: (NSError*) error
{
	[delegate audioPlayerDecodeErrorDidOccur___org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_NSError
			: player
			: error];
}
			
- (void) audioPlayerBeginInterruption
			: (AVAudioPlayer*) player
{
	[delegate audioPlayerBeginInterruption___org_xmlvm_iphone_AVAudioPlayer
			: player];
}

- (void) audioPlayerEndInterruption
			: (AVAudioPlayer*) player
{
	[delegate audioPlayerEndInterruption___org_xmlvm_iphone_AVAudioPlayer
			: player];
}

- (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) getDelegate
{
	return delegate;
}

@end


@implementation AVAudioPlayer (cat_org_xmlvm_iphone_AVAudioPlayer)

+ (AVAudioPlayer*) initWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder
			: (org_xmlvm_iphone_NSURL*) url
			: (org_xmlvm_iphone_NSErrorHolder*) outError
{
	return [[AVAudioPlayer alloc] initWithContentsOfURL: url error: &(outError->error_org_xmlvm_iphone_NSError)];
}

+ (AVAudioPlayer*) initWithContentsOfFileDescriptor___java_io_FileDescriptor_long_long_org_xmlvm_iphone_NSErrorHolder
			: (java_io_FileDescriptor*) fd
			: (long) offset
			: (long) length
			: (org_xmlvm_iphone_NSErrorHolder*) outError
{
	NSFileHandle* fileHandle = [fd getFileHandle];
	if (offset > 0 ) {
		[fileHandle seekToFileOffset: offset];
	}
	
	NSData* data = [fileHandle readDataOfLength: length];
	AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithData: data error: &(outError->error_org_xmlvm_iphone_NSError)];
	[outError->error_org_xmlvm_iphone_NSError retain];
	return player != nil ? player : [NSNull null];
}

- (void) play__
{
	[self play];
}

- (void) stop__
{
	[self stop];
}

- (void) pause__
{
	[self pause];
}

- (void) setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate
			: (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) delegate
{
	if (delegate != [NSNull null]) {
		AVAudioPlayerDelegateWrapper* wrapper = [[AVAudioPlayerDelegateWrapper alloc] initWithDelegate: delegate];
		self.delegate = wrapper;
	}
	else {
		self.delegate = nil;
	}
}
			
- (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) getDelegate__
{
	return [[self.delegate getDelegate] retain];
}

- (void) setNumberOfLoops___int
			: (int) numberOfLoops
{
	self.numberOfLoops = numberOfLoops;
}
			
- (int) getNumberOfLoops__
{
	return self.numberOfLoops;
}

- (BOOL) isPlaying__
{
	return self.playing;
}

- (void) setCurrentTime___double
            : (double) currentTime
{
	self.currentTime = currentTime;
}

- (double) getCurrentTime__
{
	return self.currentTime;
}

- (void) prepareToPlay__
{
	[self prepareToPlay];
}

- (void) setVolume___float: (float) volume
{
	self.volume = volume;
}

- (float) getVolume__
{
	return self.volume;
}

@end

