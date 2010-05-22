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

#import "org_xmlvm_iphone_MPMoviePlayerController.h"

/** @author teras */

@implementation org_xmlvm_iphone_MPMoviePlayerController (cat_org_xmlvm_iphone_MPMoviePlayerController)

+ (org_xmlvm_iphone_MPMoviePlayerController*) initWithContentURL___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)url
{
	return [[org_xmlvm_iphone_MPMoviePlayerController alloc] initWithContentURL:url];
}

- (void) play__
{
	[self play];
}

- (void) stop__
{
	[self stop];
}

- (org_xmlvm_iphone_NSURL*) getContentURL__
{
	return_XMLVM(contentURL)
}

- (org_xmlvm_iphone_UIColor*) getBackgroundColor__
{
	return_XMLVM(backgroundColor)
}

- (void) setBackgroundColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)color
{
	[self setBackgroundColor:color];
}

- (double) getInitialPlaybackTime__
{
	return [self initialPlaybackTime];
}

- (void) setInitialPlaybackTime___double :(double)time
{
	[self setInitialPlaybackTime:time];
}

- (int) getScalingMode__
{
	return [self scalingMode];
}

- (void) setScalingMode___int :(int)mode
{
	[self setScalingMode:mode];
}

- (int) getMovieControlMode__
{
	return [self movieControlMode];
}

- (void) setMovieControlMode___int :(int)mode
{
	[self setMovieControlMode:mode];
}

@end

