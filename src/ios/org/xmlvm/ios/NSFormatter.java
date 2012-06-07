package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSFormatter extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSFormatter() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)stringForObjectValue:(id)obj;
	 */
	public String stringForObjectValue(Object obj){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAttributedString *)attributedStringForObjectValue:(id)obj withDefaultAttributes:(NSDictionary *)attrs;
	 */
	public NSAttributedString attributedStringForObjectValue(Object obj, Map attrs){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)editingStringForObjectValue:(id)obj;
	 */
	public String editingStringForObjectValue(Object obj){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getObjectValue:(out id *)obj forString:(NSString *)string errorDescription:(out NSString **)error;
	 */
	public boolean getObjectValue(Object[] obj, String string, Reference<String> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isPartialStringValid:(NSString *)partialString newEditingString:(NSString **)newString errorDescription:(NSString **)error;
	 */
	public boolean isPartialStringValid(String partialString, Reference<String> newString, Reference<String> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isPartialStringValid:(NSString **)partialStringPtr proposedSelectedRange:(NSRangePointer)proposedSelRangePtr originalString:(NSString *)origString originalSelectedRange:(NSRange)origSelRange errorDescription:(NSString **)error;
	 */
	public boolean isPartialStringValid(Reference<String> partialStringPtr, Reference<NSRange> proposedSelRangePtr, String origString, NSRange origSelRange, Reference<String> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
