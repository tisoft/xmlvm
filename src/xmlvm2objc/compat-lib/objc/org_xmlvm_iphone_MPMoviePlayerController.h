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

#import <MediaPlayer/MediaPlayer.h>

#import "xmlvm.h"
#import "org_xmlvm_iphone_NSURL.h"
#import "org_xmlvm_iphone_UIColor.h"



typedef MPMoviePlayerController org_xmlvm_iphone_MPMoviePlayerController;

@interface MPMoviePlayerController (cat_org_xmlvm_iphone_MPMoviePlayerController)
	
+ (org_xmlvm_iphone_MPMoviePlayerController*) initWithContentURL___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)n1;
- (void) play__;
- (void) stop__;
- (org_xmlvm_iphone_NSURL*) getContentURL__;
- (org_xmlvm_iphone_UIColor*) getBackgroundColor__;
- (void) setBackgroundColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)color;
- (double) getInitialPlaybackTime__;
- (void) setInitialPlaybackTime___double :(double)time;
- (int) getScalingMode__;
- (void) setScalingMode___int :(int)mode;
- (int) getMovieControlMode__;
- (void) setMovieControlMode___int :(int)mode;

@end

