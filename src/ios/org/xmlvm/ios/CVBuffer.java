package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CVBuffer {

	/*
	 * Constructors
	 */

	/** Default constructor */
	CVBuffer() {}

	/*
	 * Instance methods
	 */

	/**
	 * CVBufferRef CVBufferRetain(CVBufferRef buffer) ;
	 */
	public CVBuffer retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVBufferRelease(CVBufferRef buffer) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVBufferSetAttachment(CVBufferRef buffer, CFStringRef key, CFTypeRef value, CVAttachmentMode attachmentMode) ;
	 */
	public void setAttachment(String key, byte[] value, int attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CVBufferGetAttachment(CVBufferRef buffer, CFStringRef key, CVAttachmentMode *attachmentMode) ;
	 */
	public byte[] getAttachment(String key, int[] attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVBufferRemoveAttachment(CVBufferRef buffer, CFStringRef key) ;
	 */
	public void removeAttachment(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVBufferRemoveAllAttachments(CVBufferRef buffer) ;
	 */
	public void removeAllAttachments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CVBufferGetAttachments(CVBufferRef buffer, CVAttachmentMode attachmentMode) ;
	 */
	public CFDictionary getAttachments(int attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVBufferSetAttachments(CVBufferRef buffer, CFDictionaryRef theAttachments, CVAttachmentMode attachmentMode) ;
	 */
	public void setAttachments(CFDictionary theAttachments, int attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVBufferPropagateAttachments(CVBufferRef sourceBuffer, CVBufferRef destinationBuffer) ;
	 */
	public void propagateAttachments(CVBuffer destinationBuffer){
		throw new RuntimeException("Stub");
	}
}
