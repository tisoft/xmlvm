package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFHTTPMessage {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFHTTPMessageGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHTTPMessageRef CFHTTPMessageCreateRequest( CFAllocatorRef alloc, CFStringRef requestMethod, CFURLRef url, CFStringRef httpVersion) ;
	 */
	public static CFHTTPMessage createRequest(CFAllocator alloc, String requestMethod, CFURL url, String httpVersion){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHTTPMessageRef CFHTTPMessageCreateResponse( CFAllocatorRef alloc, CFIndex statusCode, CFStringRef statusDescription, CFStringRef httpVersion) ;
	 */
	public static CFHTTPMessage createResponse(CFAllocator alloc, long statusCode, String statusDescription, String httpVersion){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHTTPMessageRef CFHTTPMessageCreateEmpty( CFAllocatorRef alloc, Boolean isRequest) ;
	 */
	public static CFHTTPMessage createEmpty(CFAllocator alloc, byte isRequest){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHTTPMessageRef CFHTTPMessageCreateCopy( CFAllocatorRef alloc, CFHTTPMessageRef message) ;
	 */
	public static CFHTTPMessage createCopy(CFAllocator alloc, CFHTTPMessage message){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFHTTPMessage() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFHTTPMessageApplyCredentials( CFHTTPMessageRef request, CFHTTPAuthenticationRef auth, CFStringRef username, CFStringRef password, CFStreamError * error) ;
	 */
	public byte applyCredentials(CFHTTPAuthentication auth, String username, String password, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPMessageApplyCredentialDictionary( CFHTTPMessageRef request, CFHTTPAuthenticationRef auth, CFDictionaryRef dict, CFStreamError * error) ;
	 */
	public byte applyCredentialDictionary(CFHTTPAuthentication auth, CFDictionary dict, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPMessageIsRequest(CFHTTPMessageRef message) ;
	 */
	public byte isRequest(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFHTTPMessageCopyVersion(CFHTTPMessageRef message) ;
	 */
	public String copyVersion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFHTTPMessageCopyBody(CFHTTPMessageRef message) ;
	 */
	public CFData copyBody(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFHTTPMessageSetBody( CFHTTPMessageRef message, CFDataRef bodyData) ;
	 */
	public void setBody(CFData bodyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFHTTPMessageCopyHeaderFieldValue( CFHTTPMessageRef message, CFStringRef headerField) ;
	 */
	public String copyHeaderFieldValue(String headerField){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFHTTPMessageCopyAllHeaderFields(CFHTTPMessageRef message) ;
	 */
	public CFDictionary copyAllHeaderFields(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFHTTPMessageSetHeaderFieldValue( CFHTTPMessageRef message, CFStringRef headerField, CFStringRef value) ;
	 */
	public void setHeaderFieldValue(String headerField, String value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPMessageAppendBytes( CFHTTPMessageRef message, const UInt8 * newBytes, CFIndex numBytes) ;
	 */
	public byte appendBytes(byte[] newBytes, long numBytes){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPMessageIsHeaderComplete(CFHTTPMessageRef message) ;
	 */
	public byte isHeaderComplete(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFHTTPMessageCopySerializedMessage(CFHTTPMessageRef request) ;
	 */
	public CFData copySerializedMessage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFHTTPMessageCopyRequestURL(CFHTTPMessageRef request) ;
	 */
	public CFURL copyRequestURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFHTTPMessageCopyRequestMethod(CFHTTPMessageRef request) ;
	 */
	public String copyRequestMethod(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPMessageAddAuthentication( CFHTTPMessageRef request, CFHTTPMessageRef authenticationFailureResponse, CFStringRef username, CFStringRef password, CFStringRef authenticationScheme, Boolean forProxy) ;
	 */
	public byte addAuthentication(CFHTTPMessage authenticationFailureResponse, String username, String password, String authenticationScheme, byte forProxy){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFHTTPMessageGetResponseStatusCode(CFHTTPMessageRef response) ;
	 */
	public long getResponseStatusCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFHTTPMessageCopyResponseStatusLine(CFHTTPMessageRef response) ;
	 */
	public String copyResponseStatusLine(){
		throw new RuntimeException("Stub");
	}
}
