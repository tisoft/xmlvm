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
#import "org_xmlvm_iphone_NSError.h"

@class org_xmlvm_iphone_AVAudioPlayer;


@protocol org_xmlvm_iphone_AVAudioPlayerDelegate <NSObject>

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

@interface org_xmlvm_iphone_AVAudioPlayerDelegate : java_lang_Object <org_xmlvm_iphone_AVAudioPlayerDelegate>
@end
