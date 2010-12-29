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


#import "org_xmlvm_iphone_NSXMLParserDelegate.h"

// NSXMLParserDelegate
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSXMLParserDelegate

- (void) __init_org_xmlvm_iphone_NSXMLParserDelegate__
{
}

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI
{
	[self didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String
	  :parser
	  :prefix
	  :namespaceURI];
}

- (void) didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) prefix
     :(java_lang_String*) namespaceURI
{
}

- (void) parser:(NSXMLParser *)parser
         didStartElement:(NSString *)elementName
         namespaceURI:(NSString *)namespaceURI
         qualifiedName:(NSString *)qualifiedName
         attributes:(NSDictionary *)attributeDict
{
	[self didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map
	  :parser
	  :elementName
	  :(namespaceURI == nil ? JAVA_NULL : namespaceURI)
	  :(qualifiedName == nil ? elementName : qualifiedName)
	  :attributeDict];
}

- (void) didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) elementName
     :(java_lang_String*) namespaceURI
     :(java_lang_String*) qualifiedName
     :(java_util_Map*) attributeDict
{
}

- (void) parser:(NSXMLParser *)parser
         didEndElement:(NSString *)elementName
         namespaceURI:(NSString *)namespaceURI
         qualifiedName:(NSString *)qualifiedName
{
	[self didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String
	  :parser
	  :elementName
	  :(namespaceURI == nil ? JAVA_NULL : namespaceURI)
	  :(qualifiedName == nil ? elementName : qualifiedName)];
}

- (void) didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) elementName
     :(java_lang_String*) namespaceURI
     :(java_lang_String*) qualifiedName
{
}

- (void) parser:(NSXMLParser *)parser
         foundCharacters:(NSString *)string
{
	[self foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String:parser:string];
}

- (void) foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) characters
{
}

- (void)parser:(NSXMLParser *)parser
	foundCDATA:(NSData *)CDATABlock
{
	[self foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData:parser :CDATABlock];
}

- (void) foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData
     :(org_xmlvm_iphone_NSXMLParser*)parser
     :(org_xmlvm_iphone_NSData*)CDATABlock
{
}

@end

