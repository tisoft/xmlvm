package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSSimpleCString extends NSString {

	/*
	 * Constructors
	 */
	public NSSimpleCString(short[] characters, int length, boolean freeBuffer) {
		super(characters, length, freeBuffer);
	}
	public NSSimpleCString(short[] characters, int length) {
		super(characters, length);
	}
	public NSSimpleCString(byte[] nullTerminatedCString, NSString.CStringNullTerminated cstringnullterminated) {
		super(nullTerminatedCString, cstringnullterminated);
	}
	public NSSimpleCString(String aString, NSString.Type type) {
		super(aString, type);
	}
	public NSSimpleCString(String... format) {
		super(format);
	}
	public NSSimpleCString(String format, byte[] argList) {
		super(format, argList);
	}
	public NSSimpleCString(String format, Object... locale) {
		super(format, locale);
	}
	public NSSimpleCString(String format, Object locale, byte[] argList) {
		super(format, locale, argList);
	}
	public NSSimpleCString(NSData data, int encoding) {
		super(data, encoding);
	}
	public NSSimpleCString(byte[] bytes, int len, int encoding) {
		super(bytes, len, encoding);
	}
	public NSSimpleCString(byte[] bytes, int len, int encoding, boolean freeBuffer) {
		super(bytes, len, encoding, freeBuffer);
	}
	public NSSimpleCString(byte[] nullTerminatedCString, int encoding, NSString.CString cstring) {
		super(nullTerminatedCString, encoding, cstring);
	}
	public NSSimpleCString(NSURL url, int enc, Reference<NSError> error) {
		super(url, enc, error);
	}
	public NSSimpleCString(String path, int enc, Reference<NSError> error) {
		super(path, enc, error);
	}
	public NSSimpleCString(NSURL url, int[] enc, Reference<NSError> error) {
		super(url, enc, error);
	}
	public NSSimpleCString(String path, int[] enc, Reference<NSError> error) {
		super(path, enc, error);
	}
	public NSSimpleCString(NSURL url) {
		super(url);
	}
	public NSSimpleCString(byte[] bytes, int length, boolean freeBuffer) {
		super(bytes, length, freeBuffer);
	}

	/** Default constructor */
	public NSSimpleCString() {
		super();
	}
}
