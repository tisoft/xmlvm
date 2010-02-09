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
#import "org_xmlvm_iphone_NSError.h"

@class org_xmlvm_iphone_AVAudioPlayer;


@protocol org_xmlvm_iphone_AVAudioPlayerDelegate

- (void) audioPlayerDidFinishPlaying___org_xmlvm_iphone_AVAudioPlayer_boolean
			: (org_xmlvm_iphone_AVAudioPlayer*) player
			: (BOOL) successfully;

- (void) audioPlayerDecodeErrorDidOccur___org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_NSError
			: (org_xmlvm_iphone_AVAudioPlayer*) player
			: (org_xmlvm_iphone_NSError*) error;
			
- (void) audioPlayerBeginInterruption___org_xmlvm_iphone_AVAudioPlayer
			: (org_xmlvm_iphone_AVAudioPlayer*) player;

- (void) audioPlayerEndInterruption___org_xmlvm_iphone_AVAudioPlayer
			: (org_xmlvm_iphone_AVAudioPlayer*) player;

@end
