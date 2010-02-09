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
#import "org_xmlvm_iphone_AVAudioPlayerDelegate.h"
#import "org_xmlvm_iphone_NSURL.h"
#import "org_xmlvm_iphone_NSErrorHolder.h"

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


typedef AVAudioPlayer org_xmlvm_iphone_AVAudioPlayer;
@interface AVAudioPlayer (cat_org_xmlvm_iphone_AVAudioPlayer)

+ (AVAudioPlayer*) initWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder
			: (org_xmlvm_iphone_NSURL*) url
			: (org_xmlvm_iphone_NSErrorHolder*) outError;
			
- (void) play__;

- (void) stop__;

- (void) setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate
			: (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) delegate;
			
- (id<org_xmlvm_iphone_AVAudioPlayerDelegate>) getDelegate__;

- (void) setNumberOfLoops___int
			: (int) numberOfLoops;
			
- (int) getNumberOfLoops__;
		
@end

