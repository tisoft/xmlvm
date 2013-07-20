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
#import "java_io_FileDescriptor.h"
#import "org_xmlvm_iphone_AVAudioPlayerDelegate.h"
#import "org_xmlvm_iphone_NSURL.h"
#import "org_xmlvm_iphone_NSErrorHolder.h"
#import "org_xmlvm_iphone_NSData.h"

@interface AVAudioPlayerDelegateWrapper : NSObject<AVAudioPlayerDelegate> {
	id<org_xmlvm_iphone_AVAudioPlayerDelegate> delegate;
}

- (id) initWithDelegate: (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) d;

- (void) dealloc;

- (void) audioPlayerDidFinishPlaying
			: (AVAudioPlayer*) player succesfully
			: (BOOL) flag;

- (void) audioPlayerDecodeErrorDidOccur
			: (AVAudioPlayer*) player error
			: (NSError*) error;
			
- (void) audioPlayerBeginInterruption
			: (AVAudioPlayer*) player;

- (void) audioPlayerEndInterruption
			: (AVAudioPlayer*) player;

- (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) getDelegate;

@end


#define org_xmlvm_iphone_AVAudioPlayer AVAudioPlayer
@interface AVAudioPlayer (cat_org_xmlvm_iphone_AVAudioPlayer)

+ (AVAudioPlayer*) audioPlayerWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder
			: (org_xmlvm_iphone_NSURL*) url
			: (org_xmlvm_iphone_NSErrorHolder*) outError;
			
+ (AVAudioPlayer*) audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder
			: (org_xmlvm_iphone_NSData*) data
			: (org_xmlvm_iphone_NSErrorHolder*) outError;

- (BOOL) play__;

- (BOOL) playAtTime___double: (double) time;

- (void) stop__;

- (void) pause__;

- (void) setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate
			: (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) delegate;
			
- (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) getDelegate__;

- (void) setNumberOfLoops___int: (int) numberOfLoops;
			
- (int) getNumberOfLoops__;

- (BOOL) isPlaying__;

- (void) setCurrentTime___double: (double) currentTime;

- (double) getCurrentTime__;

- (void) prepareToPlay__;
		
- (void) setVolume___float: (float) volume;

- (float) getVolume__;

- (int) getNumberOfChannels__;
- (double) getDuration__;
- (org_xmlvm_iphone_NSURL*) getURL__;
- (org_xmlvm_iphone_NSData*) getData__;

@end
