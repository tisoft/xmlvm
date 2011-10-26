package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSXMLParserDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)parserDidStartDocument:(NSXMLParser *)parser;
	 */
	public abstract void parserDidStartDocument(NSXMLParser parser);

	/**
	 * - (void)parserDidEndDocument:(NSXMLParser *)parser;
	 */
	public abstract void parserDidEndDocument(NSXMLParser parser);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundNotationDeclarationWithName:(NSString *)name publicID:(NSString *)publicID systemID:(NSString *)systemID;
	 */
	public abstract void foundNotationDeclarationWithName(NSXMLParser parser, String name, String publicID, String systemID);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundUnparsedEntityDeclarationWithName:(NSString *)name publicID:(NSString *)publicID systemID:(NSString *)systemID notationName:(NSString *)notationName;
	 */
	public abstract void foundUnparsedEntityDeclarationWithName(NSXMLParser parser, String name, String publicID, String systemID, String notationName);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundAttributeDeclarationWithName:(NSString *)attributeName forElement:(NSString *)elementName type:(NSString *)type defaultValue:(NSString *)defaultValue;
	 */
	public abstract void foundAttributeDeclarationWithName(NSXMLParser parser, String attributeName, String elementName, String type, String defaultValue);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundElementDeclarationWithName:(NSString *)elementName model:(NSString *)model;
	 */
	public abstract void foundElementDeclarationWithName(NSXMLParser parser, String elementName, String model);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundInternalEntityDeclarationWithName:(NSString *)name value:(NSString *)value;
	 */
	public abstract void foundInternalEntityDeclarationWithName(NSXMLParser parser, String name, String value);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundExternalEntityDeclarationWithName:(NSString *)name publicID:(NSString *)publicID systemID:(NSString *)systemID;
	 */
	public abstract void foundExternalEntityDeclarationWithName(NSXMLParser parser, String name, String publicID, String systemID);

	/**
	 * - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;
	 */
	public abstract void didStartElement(NSXMLParser parser, String elementName, String namespaceURI, String qName, Map attributeDict);

	/**
	 * - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName;
	 */
	public abstract void didEndElement(NSXMLParser parser, String elementName, String namespaceURI, String qName);

	/**
	 * - (void)parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI;
	 */
	public abstract void didStartMappingPrefix(NSXMLParser parser, String prefix, String namespaceURI);

	/**
	 * - (void)parser:(NSXMLParser *)parser didEndMappingPrefix:(NSString *)prefix;
	 */
	public abstract void didEndMappingPrefix(NSXMLParser parser, String prefix);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string;
	 */
	public abstract void foundCharacters(NSXMLParser parser, String string);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundIgnorableWhitespace:(NSString *)whitespaceString;
	 */
	public abstract void foundIgnorableWhitespace(NSXMLParser parser, String whitespaceString);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundProcessingInstructionWithTarget:(NSString *)target data:(NSString *)data;
	 */
	public abstract void foundProcessingInstructionWithTarget(NSXMLParser parser, String target, String data);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundComment:(NSString *)comment;
	 */
	public abstract void foundComment(NSXMLParser parser, String comment);

	/**
	 * - (void)parser:(NSXMLParser *)parser foundCDATA:(NSData *)CDATABlock;
	 */
	public abstract void foundCDATA(NSXMLParser parser, NSData CDATABlock);

	/**
	 * - (NSData *)parser:(NSXMLParser *)parser resolveExternalEntityName:(NSString *)name systemID:(NSString *)systemID;
	 */
	public abstract NSData resolveExternalEntityName(NSXMLParser parser, String name, String systemID);

	/**
	 * - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError;
	 */
	public abstract void parseErrorOccurred(NSXMLParser parser, NSError parseError);

	/**
	 * - (void)parser:(NSXMLParser *)parser validationErrorOccurred:(NSError *)validationError;
	 */
	public abstract void validationErrorOccurred(NSXMLParser parser, NSError validationError);
}
