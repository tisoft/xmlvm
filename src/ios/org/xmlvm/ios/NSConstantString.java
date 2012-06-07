package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSConstantString extends NSSimpleCString {

	/*
	 * Constructors
	 */
	public NSConstantString(short[] characters, int length, boolean freeBuffer) {
		super(characters, length, freeBuffer);
	}
	public NSConstantString(short[] characters, int length) {
		super(characters, length);
	}
	public NSConstantString(byte[] nullTerminatedCString, NSString.CStringNullTerminated cstringnullterminated) {
		super(nullTerminatedCString, cstringnullterminated);
	}
	public NSConstantString(String aString, NSString.Type type) {
		super(aString, type);
	}
	public NSConstantString(String... format) {
		super(format);
	}
	public NSConstantString(String format, byte[] argList) {
		super(format, argList);
	}
	public NSConstantString(String format, Object... locale) {
		super(format, locale);
	}
	public NSConstantString(String format, Object locale, byte[] argList) {
		super(format, locale, argList);
	}
	public NSConstantString(NSData data, int encoding) {
		super(data, encoding);
	}
	public NSConstantString(byte[] bytes, int len, int encoding) {
		super(bytes, len, encoding);
	}
	public NSConstantString(byte[] bytes, int len, int encoding, boolean freeBuffer) {
		super(bytes, len, encoding, freeBuffer);
	}
	public NSConstantString(byte[] nullTerminatedCString, int encoding, NSString.CString cstring) {
		super(nullTerminatedCString, encoding, cstring);
	}
	public NSConstantString(NSURL url, int enc, Reference<NSError> error) {
		super(url, enc, error);
	}
	public NSConstantString(String path, int enc, Reference<NSError> error) {
		super(path, enc, error);
	}
	public NSConstantString(NSURL url, int[] enc, Reference<NSError> error) {
		super(url, enc, error);
	}
	public NSConstantString(String path, int[] enc, Reference<NSError> error) {
		super(path, enc, error);
	}
	public NSConstantString(NSURL url) {
		super(url);
	}
	public NSConstantString(byte[] bytes, int length, boolean freeBuffer) {
		super(bytes, length, freeBuffer);
	}

	/** Default constructor */
	public NSConstantString() {
		super();
	}
}
