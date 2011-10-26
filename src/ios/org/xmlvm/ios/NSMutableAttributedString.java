package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableAttributedString extends NSAttributedString {

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSMutableAttributedString() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)str;
	 */
	public void replaceCharactersInRange(NSRange range, String str){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAttributes:(NSDictionary *)attrs range:(NSRange)range;
	 */
	public void setAttributes(Map attrs, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMutableString *)mutableString;
	 */
	public NSMutableString mutableString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addAttribute:(NSString *)name value:(id)value range:(NSRange)range;
	 */
	public void addAttribute(String name, Object value, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addAttributes:(NSDictionary *)attrs range:(NSRange)range;
	 */
	public void addAttributes(Map attrs, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAttribute:(NSString *)name range:(NSRange)range;
	 */
	public void removeAttribute(String name, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceCharactersInRange:(NSRange)range withAttributedString:(NSAttributedString *)attrString;
	 */
	public void replaceCharactersInRange(NSRange range, NSAttributedString attrString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertAttributedString:(NSAttributedString *)attrString atIndex:(NSUInteger)loc;
	 */
	public void insertAttributedString(NSAttributedString attrString, int loc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendAttributedString:(NSAttributedString *)attrString;
	 */
	public void appendAttributedString(NSAttributedString attrString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteCharactersInRange:(NSRange)range;
	 */
	public void deleteCharactersInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAttributedString:(NSAttributedString *)attrString;
	 */
	public void setAttributedString(NSAttributedString attrString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginEditing;
	 */
	public void beginEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endEditing;
	 */
	public void endEditing(){
		throw new RuntimeException("Stub");
	}
}
