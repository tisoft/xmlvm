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

/** @author teras */

#define UIVIEWCONTROLLER_CALLBACKS_INC - (void) loadView__;\
- (void) viewDidLoad__;\
- (void) viewDidUnload__;\
- (void) viewWillAppear___boolean :(int)anim;\
- (void) viewDidAppear___boolean :(int)anim;\
- (void) viewWillDisappear___boolean :(int)anim;\
- (void) viewDidDisappear___boolean :(int)anim;

#define UIVIEWCONTROLLER_CALLBACKS - (void) loadView { [self loadView__];}\
- (void) loadView__ { [super loadView]; }\
- (void) viewDidLoad__ { [super viewDidLoad]; }\
- (void) viewDidUnload__ { [super viewDidUnload]; }\
- (void) viewWillAppear___boolean :(int)anim { [super viewWillAppear:anim]; }\
- (void) viewWillDisappear___boolean :(int)anim { [super viewWillDisappear:anim]; }\
- (void) viewDidAppear___boolean :(int)anim{ [super viewDidAppear:anim]; }\
- (void) viewDidDisappear___boolean :(int)anim{ [super viewDidDisappear:anim]; }\
\
- (void) viewDidLoad { [self viewDidLoad__];}\
- (void) viewDidUnload { [self viewDidUnload__]; }\
- (void) viewWillAppear:(BOOL)anim { [self viewWillAppear___boolean:anim]; }\
- (void) viewWillDisappear:(BOOL)anim { [self viewWillDisappear___boolean:anim]; }\
- (void) viewDidAppear:(BOOL)anim { [self viewDidAppear___boolean:anim]; }\
- (void) viewDidDisappear:(BOOL)anim { [self viewDidDisappear___boolean:anim]; }\
\
- (int) shouldAutorotateToInterfaceOrientation___int :(int)orientation {\
return [super shouldAutorotateToInterfaceOrientation:orientation];\
}\
-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation {\
return [self shouldAutorotateToInterfaceOrientation___int:orientation];\
}
