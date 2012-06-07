package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSXMLParserDelegate")
public interface NSXMLParserDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)parserDidStartDocument:(NSXMLParser *)parser;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parserDidStartDocument", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser")
	})
	public abstract void parserDidStartDocument(NSXMLParser parser);

	/**
	 * - (void)parserDidEndDocument:(NSXMLParser *)parser;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parserDidEndDocument", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser")
	})
	public abstract void parserDidEndDocument(NSXMLParser parser);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundNotationDeclarationWithName:(NSString *)name publicID:(NSString *)publicID systemID:(NSString *)systemID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundNotationDeclarationWithName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "publicID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "systemID")
	})
	public abstract void foundNotationDeclarationWithName(NSXMLParser parser, String name, String publicID, String systemID);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundUnparsedEntityDeclarationWithName:(NSString *)name publicID:(NSString *)publicID systemID:(NSString *)systemID notationName:(NSString *)notationName;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundUnparsedEntityDeclarationWithName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "publicID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "systemID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "notationName")
	})
	public abstract void foundUnparsedEntityDeclarationWithName(NSXMLParser parser, String name, String publicID, String systemID, String notationName);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundAttributeDeclarationWithName:(NSString *)attributeName forElement:(NSString *)elementName type:(NSString *)type defaultValue:(NSString *)defaultValue;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundAttributeDeclarationWithName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "forElement"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "type"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "defaultValue")
	})
	public abstract void foundAttributeDeclarationWithName(NSXMLParser parser, String attributeName, String elementName, String type, String defaultValue);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundElementDeclarationWithName:(NSString *)elementName model:(NSString *)model;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundElementDeclarationWithName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "model")
	})
	public abstract void foundElementDeclarationWithName(NSXMLParser parser, String elementName, String model);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundInternalEntityDeclarationWithName:(NSString *)name value:(NSString *)value;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundInternalEntityDeclarationWithName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "value")
	})
	public abstract void foundInternalEntityDeclarationWithName(NSXMLParser parser, String name, String value);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundExternalEntityDeclarationWithName:(NSString *)name publicID:(NSString *)publicID systemID:(NSString *)systemID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundExternalEntityDeclarationWithName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "publicID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "systemID")
	})
	public abstract void foundExternalEntityDeclarationWithName(NSXMLParser parser, String name, String publicID, String systemID);

	/**
	 * - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didStartElement"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "namespaceURI"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "qualifiedName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "attributes")
	})
	public abstract void didStartElement(NSXMLParser parser, String elementName, String namespaceURI, String qName, Map attributeDict);

	/**
	 * - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didEndElement"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "namespaceURI"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "qualifiedName")
	})
	public abstract void didEndElement(NSXMLParser parser, String elementName, String namespaceURI, String qName);

	/**
	 * - (void)parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didStartMappingPrefix"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "toURI")
	})
	public abstract void didStartMappingPrefix(NSXMLParser parser, String prefix, String namespaceURI);

	/**
	 * - (void)parser:(NSXMLParser *)parser didEndMappingPrefix:(NSString *)prefix;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didEndMappingPrefix")
	})
	public abstract void didEndMappingPrefix(NSXMLParser parser, String prefix);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundCharacters")
	})
	public abstract void foundCharacters(NSXMLParser parser, String string);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundIgnorableWhitespace:(NSString *)whitespaceString;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundIgnorableWhitespace")
	})
	public abstract void foundIgnorableWhitespace(NSXMLParser parser, String whitespaceString);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundProcessingInstructionWithTarget:(NSString *)target data:(NSString *)data;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundProcessingInstructionWithTarget"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "data")
	})
	public abstract void foundProcessingInstructionWithTarget(NSXMLParser parser, String target, String data);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundComment:(NSString *)comment;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "foundComment")
	})
	public abstract void foundComment(NSXMLParser parser, String comment);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundCDATA:(NSData *)CDATABlock;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "foundCDATA")
	})
	public abstract void foundCDATA(NSXMLParser parser, NSData CDATABlock);

	/**
	 * - (NSData *)parser:(NSXMLParser *)parser resolveExternalEntityName:(NSString *)name systemID:(NSString *)systemID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "resolveExternalEntityName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "systemID")
	})
	public abstract NSData resolveExternalEntityName(NSXMLParser parser, String name, String systemID);

	/**
	 * - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "parseErrorOccurred")
	})
	public abstract void parseErrorOccurred(NSXMLParser parser, NSError parseError);

	/**
	 * - (void)parser:(NSXMLParser *)parser validationErrorOccurred:(NSError *)validationError;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "parser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSXMLParser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "validationErrorOccurred")
	})
	public abstract void validationErrorOccurred(NSXMLParser parser, NSError validationError);
}
