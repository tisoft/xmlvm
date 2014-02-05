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

#import "org_xmlvm_iphone_UILocalNotification.h"


@implementation UILocalNotification (cat_org_xmlvm_iphone_UILocalNotification)
- (void) __init_org_xmlvm_iphone_UILocalNotification__
{
}

- (java_lang_String*) getAlertAction__
{
    return_XMLVM(alertAction)
}

- (void) setAlertAction___java_lang_String :(java_lang_String*)n1
{
    [self setAlertAction:XMLVM_NULL2NIL(n1)];
}

- (java_lang_String*) getAlertBody__{
    return_XMLVM(alertBody)
}

- (void) setAlertBody___java_lang_String :(java_lang_String*)n1
{
    [self setAlertBody:XMLVM_NULL2NIL(n1)];
}

- (java_lang_String*) getAlertLaunchImage__
{
    return_XMLVM(alertLaunchImage)
}

- (void) setAlertLaunchImage___java_lang_String :(java_lang_String*)n1
{
    [self setAlertLaunchImage:XMLVM_NULL2NIL(n1)];
}

- (int) getApplicationIconBadgeNumber__
{
    return [self applicationIconBadgeNumber];
}

- (void) setApplicationIconBadgeNumber___int :(int)n1
{
    [self setApplicationIconBadgeNumber:n1];
}

- (org_xmlvm_iphone_NSDate*) getFireDate__
{
    return_XMLVM(fireDate)
}

- (void) setFireDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)n1
{
    [self setFireDate___org_xmlvm_iphone_NSDate:XMLVM_NULL2NIL(n1)];
}

- (int) isHasAction__
{
    return [self hasAction];
}

- (void) setHasAction___boolean :(int)n1
{
    [self setHasAction:n1];
}

- (org_xmlvm_iphone_NSCalendar*) getRepeatCalendar__
{
    return_XMLVM(repeatCalendar)
}

- (void) setRepeatCalendar___org_xmlvm_iphone_NSCalendar :(org_xmlvm_iphone_NSCalendar*)n1
{
    [self setRepeatCalendar:XMLVM_NULL2NIL(n1)];
}

- (int) getRepeatInterval__
{
    return [self repeatInterval];
}

- (void) setRepeatInterval___int :(int)n1
{
    [self setRepeatInterval:n1];
}

- (java_lang_String*) getSoundName__
{
    return_XMLVM(soundName)
}

- (void) setSoundName___java_lang_String :(java_lang_String*)n1
{
    [self setSoundName:XMLVM_NULL2NIL(n1)];
}

- (org_xmlvm_iphone_NSTimeZone*) getTimeZone__
{
    return_XMLVM(timeZone)
}

- (void) setTimeZone___org_xmlvm_iphone_NSTimeZone :(org_xmlvm_iphone_NSTimeZone*)n1
{
    [self setTimeZone:XMLVM_NULL2NIL(n1)];
}

- (java_util_Map*) getUserInfo__
{
    return_XMLVM(userInfo)
}

- (void) setUserInfo___java_util_Map :(java_util_Map*)n1
{
    [self setUserInfo:XMLVM_NULL2NIL(n1)];
}

@end
