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


#define UIVIEWCONTROLLER_CALLBACKS - (void) loadView { [self loadView__];}\
- (void) loadView__ { [super loadView]; }\
\
- (void) viewDidLoad__ { [super viewDidLoad]; }\
- (void) viewDidLoad { [self viewDidLoad__];}\
- (void) viewDidUnload__ { [super viewDidUnload]; }\
- (void) viewDidUnload { [self viewDidUnload__]; }\
\
- (void) viewWillAppear___boolean :(int)anim { [super viewWillAppear:anim]; }\
- (void) viewWillAppear:(BOOL)anim { [self viewWillAppear___boolean:anim]; }\
- (void) viewWillDisappear___boolean :(int)anim { [super viewWillDisappear:anim]; }\
- (void) viewWillDisappear:(BOOL)anim { [self viewWillDisappear___boolean:anim]; }\
- (void) viewDidAppear___boolean :(int)anim{ [super viewDidAppear:anim]; }\
- (void) viewDidAppear:(BOOL)anim { [self viewDidAppear___boolean:anim]; }\
- (void) viewDidDisappear___boolean :(int)anim{ [super viewDidDisappear:anim]; }\
- (void) viewDidDisappear:(BOOL)anim { [self viewDidDisappear___boolean:anim]; }\
\
- (int) shouldAutorotateToInterfaceOrientation___int :(int)orientation { return [super shouldAutorotateToInterfaceOrientation:orientation]; }\
- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation { return [self shouldAutorotateToInterfaceOrientation___int:orientation]; }\
- (int) shouldAutorotate__ { return [super shouldAutorotate]; }\
- (BOOL) shouldAutorotate { return [self shouldAutorotate__]; }\
- (int) preferredInterfaceOrientationForPresentation__ {    return [super preferredInterfaceOrientationForPresentation]; }\
- (int) preferredInterfaceOrientationForPresentation {    return [self preferredInterfaceOrientationForPresentation__]; }\
- (int) supportedInterfaceOrientations__ {    return [super supportedInterfaceOrientations]; }\
- (int) supportedInterfaceOrientations {    return [self supportedInterfaceOrientations__]; }
