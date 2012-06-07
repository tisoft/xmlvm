package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSXMLParser extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url;
	 */
	public NSXMLParser(NSURL url) {}

	/**
	 * - (id)initWithData:(NSData *)data;
	 */
	public NSXMLParser(NSData data) {}

	/** Default constructor */
	public NSXMLParser() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (id <NSXMLParserDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSXMLParserDelegate delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDelegate:(id <NSXMLParserDelegate>)delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSXMLParserDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShouldProcessNamespaces:(BOOL)shouldProcessNamespaces;
	 */
	public void setShouldProcessNamespaces(boolean shouldProcessNamespaces){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShouldReportNamespacePrefixes:(BOOL)shouldReportNamespacePrefixes;
	 */
	public void setShouldReportNamespacePrefixes(boolean shouldReportNamespacePrefixes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShouldResolveExternalEntities:(BOOL)shouldResolveExternalEntities;
	 */
	public void setShouldResolveExternalEntities(boolean shouldResolveExternalEntities){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)shouldProcessNamespaces;
	 */
	public boolean shouldProcessNamespaces(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)shouldReportNamespacePrefixes;
	 */
	public boolean shouldReportNamespacePrefixes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)shouldResolveExternalEntities;
	 */
	public boolean shouldResolveExternalEntities(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)parse;
	 */
	public boolean parse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)abortParsing;
	 */
	public void abortParsing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSError *)parserError;
	 */
	public NSError parserError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)publicID;
	 */
	public String publicID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)systemID;
	 */
	public String systemID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)lineNumber;
	 */
	public int lineNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)columnNumber;
	 */
	public int columnNumber(){
		throw new RuntimeException("Stub");
	}
}
