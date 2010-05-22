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

#import <MediaPlayer/MediaPlayer.h>

#import "xmlvm.h"
#import "org_xmlvm_iphone_NSURL.h"
#import "org_xmlvm_iphone_UIColor.h"

/** @author teras */

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

