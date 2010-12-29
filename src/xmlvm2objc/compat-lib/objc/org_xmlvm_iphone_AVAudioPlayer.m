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



@interface AVAudioPlayer_members : NSObject {
	AVAudioPlayerDelegateWrapper* delegate;
}

@property (nonatomic, retain) AVAudioPlayerDelegateWrapper* delegate;

- (void) dealloc;

@end


@implementation AVAudioPlayer_members

@synthesize delegate;

- (void) dealloc
{
	[delegate release];
	[super dealloc];
}

@end



@implementation AVAudioPlayer (cat_org_xmlvm_iphone_AVAudioPlayer)

+ (AVAudioPlayer*) audioPlayerWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder
			: (org_xmlvm_iphone_NSURL*) url
			: (org_xmlvm_iphone_NSErrorHolder*) outError
{
	id player = [[AVAudioPlayer alloc] initWithContentsOfURL: url error: &(outError->error_org_xmlvm_iphone_NSError)];
	return XMLVM_NIL2NULL(player);
}

+ (AVAudioPlayer*) audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder
			: (org_xmlvm_iphone_NSData*) data
			: (org_xmlvm_iphone_NSErrorHolder*) outError
{
	id player = [[AVAudioPlayer alloc] initWithData: data error: &(outError->error_org_xmlvm_iphone_NSError)];
	if (player == nil) {
		[data release];
	}

	return XMLVM_NIL2NULL(player);
}

static char memberKey; // key for associative reference for member variables

- (AVAudioPlayer_members*) getMembers
{
	AVAudioPlayer_members *members = nil;
	@synchronized(self) {
		members = (AVAudioPlayer_members *)objc_getAssociatedObject(self, &memberKey);
		if (members == nil) {
			members = [[AVAudioPlayer_members alloc] init];
			objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
			[members release];
		}
	}
	return members;
}

- (BOOL) play__
{
	return [self play];
}

- (BOOL) playAtTime___double: (double) time
{
	return [self playAtTime: time];
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
	AVAudioPlayer_members* m = [self getMembers];

	if (delegate != JAVA_NULL) {
		AVAudioPlayerDelegateWrapper* wrapper = [[AVAudioPlayerDelegateWrapper alloc] initWithDelegate: delegate];
		self.delegate = wrapper;
		m.delegate = wrapper;
		[wrapper release];
	}
	else {
		self.delegate = nil;
	}
}
			
- (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setNumberOfLoops___int
			: (int) numberOfLoops
{
	[self setNumberOfLoops:numberOfLoops];
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

- (int) getNumberOfChannels__
{
	return [self numberOfChannels];
}

- (double) getDuration__
{
	return [self duration];
}

- (org_xmlvm_iphone_NSURL*) getURL__
{
	return_XMLVM(url)
}

- (org_xmlvm_iphone_NSData*) getData__
{
	return_XMLVM(data)
}

@end

