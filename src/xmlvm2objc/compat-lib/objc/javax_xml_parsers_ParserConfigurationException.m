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


#import "javax_xml_parsers_ParserConfigurationException.h"

// javax.xml.parsers.ParserConfigurationException
//----------------------------------------------------------------------------
@implementation javax_xml_parsers_ParserConfigurationException

- (id) init
{
    return [self initWithName: @"javax_xml_parsers_ParserConfigurationException" reason: nil userInfo: nil];
}

- (void) __init_javax_xml_parsers_ParserConfigurationException__
{
    // Do nothing
}

- (void) __init_javax_xml_parsers_ParserConfigurationException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_javax_xml_parsers_ParserConfigurationException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (javax_xml_parsers_ParserConfigurationException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace__
{
}

@end
