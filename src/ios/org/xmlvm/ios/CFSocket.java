package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFSocket {

	/*
	 * Static methods
	 */

	/**
	 * SInt32 CFSocketStreamSOCKSGetErrorSubdomain(const CFStreamError* error);
	 */
	public static int streamSOCKSGetErrorSubdomain(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFSocketStreamSOCKSGetError(const CFStreamError* error);
	 */
	public static int streamSOCKSGetError(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFSocketStreamPairSetSecurityProtocol( CFReadStreamRef socketReadStream, CFWriteStreamRef socketWriteStream, CFStreamSocketSecurityProtocol securityProtocol) ;
	 */
	public static byte streamPairSetSecurityProtocol(CFReadStream socketReadStream, CFWriteStream socketWriteStream, int securityProtocol){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFSocketGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketRef CFSocketCreateWithNative(CFAllocatorRef allocator, CFSocketNativeHandle sock, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context);
	 */
	public static CFSocket createWithNative(CFAllocator allocator, int sock, long callBackTypes, Object callout, Reference<CFSocketContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketRef CFSocketCreateWithSocketSignature(CFAllocatorRef allocator, const CFSocketSignature *signature, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context);
	 */
	public static CFSocket createWithSocketSignature(CFAllocator allocator, Reference<CFSocketSignature> signature, long callBackTypes, Object callout, Reference<CFSocketContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketRef CFSocketCreateConnectedToSocketSignature(CFAllocatorRef allocator, const CFSocketSignature *signature, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context, CFTimeInterval timeout);
	 */
	public static CFSocket createConnectedToSocketSignature(CFAllocator allocator, Reference<CFSocketSignature> signature, long callBackTypes, Object callout, Reference<CFSocketContext> context, double timeout){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef CFSocketCreateRunLoopSource(CFAllocatorRef allocator, CFSocketRef s, CFIndex order);
	 */
	public static CFRunLoopSource createRunLoopSource(CFAllocator allocator, CFSocket s, long order){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketRegisterValue(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, CFPropertyListRef value);
	 */
	public static long registerValue(Reference<CFSocketSignature> nameServerSignature, double timeout, String name, CFPropertyList value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketCopyRegisteredValue(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, CFPropertyListRef *value, CFDataRef *nameServerAddress);
	 */
	public static long copyRegisteredValue(Reference<CFSocketSignature> nameServerSignature, double timeout, String name, CFPropertyList value, Reference<CFData> nameServerAddress){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketRegisterSocketSignature(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, const CFSocketSignature *signature);
	 */
	public static long registerSocketSignature(Reference<CFSocketSignature> nameServerSignature, double timeout, String name, Reference<CFSocketSignature> signature){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketCopyRegisteredSocketSignature(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, CFSocketSignature *signature, CFDataRef *nameServerAddress);
	 */
	public static long copyRegisteredSocketSignature(Reference<CFSocketSignature> nameServerSignature, double timeout, String name, Reference<CFSocketSignature> signature, Reference<CFData> nameServerAddress){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketUnregister(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name);
	 */
	public static long unregister(Reference<CFSocketSignature> nameServerSignature, double timeout, String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSocketSetDefaultNameRegistryPortNumber(UInt16 port);
	 */
	public static void setDefaultNameRegistryPortNumber(short port){
		throw new RuntimeException("Stub");
	}

	/**
	 * UInt16 CFSocketGetDefaultNameRegistryPortNumber(void);
	 */
	public static short getDefaultNameRegistryPortNumber(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFSocketRef CFSocketCreate(CFAllocatorRef allocator, SInt32 protocolFamily, SInt32 socketType, SInt32 protocol, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context);
	 */
	public CFSocket(CFAllocator allocator, int protocolFamily, int socketType, int protocol, long callBackTypes, Object callout, Reference<CFSocketContext> context) {}

	/** Default constructor */
	public CFSocket() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFSocketError CFSocketSetAddress(CFSocketRef s, CFDataRef address);
	 */
	public long setAddress(CFData address){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketConnectToAddress(CFSocketRef s, CFDataRef address, CFTimeInterval timeout);
	 */
	public long connectToAddress(CFData address, double timeout){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSocketInvalidate(CFSocketRef s);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFSocketIsValid(CFSocketRef s);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFSocketCopyAddress(CFSocketRef s);
	 */
	public CFData copyAddress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFSocketCopyPeerAddress(CFSocketRef s);
	 */
	public CFData copyPeerAddress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSocketGetContext(CFSocketRef s, CFSocketContext *context);
	 */
	public void getContext(Reference<CFSocketContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketNativeHandle CFSocketGetNative(CFSocketRef s);
	 */
	public int getNative(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFOptionFlags CFSocketGetSocketFlags(CFSocketRef s);
	 */
	public long getSocketFlags(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSocketSetSocketFlags(CFSocketRef s, CFOptionFlags flags);
	 */
	public void setSocketFlags(long flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSocketDisableCallBacks(CFSocketRef s, CFOptionFlags callBackTypes);
	 */
	public void disableCallBacks(long callBackTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSocketEnableCallBacks(CFSocketRef s, CFOptionFlags callBackTypes);
	 */
	public void enableCallBacks(long callBackTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSocketError CFSocketSendData(CFSocketRef s, CFDataRef address, CFDataRef data, CFTimeInterval timeout);
	 */
	public long sendData(CFData address, CFData data, double timeout){
		throw new RuntimeException("Stub");
	}
}
