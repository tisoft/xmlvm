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

#import "org_xmlvm_iphone_MPMoviePlayerController.h"



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

