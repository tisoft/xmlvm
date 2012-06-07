package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNetwork {

	/*
	 * Static methods
	 */

	/**
	 * void CFHTTPReadStreamSetRedirectsAutomatically( CFReadStreamRef httpStream, Boolean shouldAutoRedirect) ;
	 */
	public static void CFHTTPReadStreamSetRedirectsAutomatically(CFReadStream httpStream, byte shouldAutoRedirect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStreamCreatePairWithSocketToCFHost( CFAllocatorRef alloc, CFHostRef host, SInt32 port, CFReadStreamRef * readStream, CFWriteStreamRef * writeStream) ;
	 */
	public static void CFStreamCreatePairWithSocketToCFHost(CFAllocator alloc, CFHost host, int port, Reference<CFReadStream> readStream, Reference<CFWriteStream> writeStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFNetworkCopyProxiesForAutoConfigurationScript( CFStringRef proxyAutoConfigurationScript, CFURLRef targetURL, CFErrorRef * error) ;
	 */
	public static CFArray CFNetworkCopyProxiesForAutoConfigurationScript(String proxyAutoConfigurationScript, CFURL targetURL, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFFTPCreateParsedResourceListing( CFAllocatorRef alloc, const UInt8 * buffer, CFIndex bufferLength, CFDictionaryRef * parsed) ;
	 */
	public static long CFFTPCreateParsedResourceListing(CFAllocator alloc, byte[] buffer, long bufferLength, Reference<CFDictionary> parsed){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStreamCreatePairWithSocketToNetService( CFAllocatorRef alloc, CFNetServiceRef service, CFReadStreamRef * readStream, CFWriteStreamRef * writeStream) ;
	 */
	public static void CFStreamCreatePairWithSocketToNetService(CFAllocator alloc, CFNetService service, Reference<CFReadStream> readStream, Reference<CFWriteStream> writeStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef CFNetworkExecuteProxyAutoConfigurationScript( CFStringRef proxyAutoConfigurationScript, CFURLRef targetURL, CFProxyAutoConfigurationResultCallback cb, CFStreamClientContext * clientContext) ;
	 */
	public static CFRunLoopSource CFNetworkExecuteProxyAutoConfigurationScript(String proxyAutoConfigurationScript, CFURL targetURL, Object cb, Reference<CFStreamClientContext> clientContext){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef CFNetworkExecuteProxyAutoConfigurationURL( CFURLRef proxyAutoConfigURL, CFURLRef targetURL, CFProxyAutoConfigurationResultCallback cb, CFStreamClientContext * clientContext) ;
	 */
	public static CFRunLoopSource CFNetworkExecuteProxyAutoConfigurationURL(CFURL proxyAutoConfigURL, CFURL targetURL, Object cb, Reference<CFStreamClientContext> clientContext){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFNetworkCopyProxiesForURL( CFURLRef url, CFDictionaryRef proxySettings) ;
	 */
	public static CFArray CFNetworkCopyProxiesForURL(CFURL url, CFDictionary proxySettings){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFNetworkCopySystemProxySettings( void ) ;
	 */
	public static CFDictionary CFNetworkCopySystemProxySettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFHTTPReadStreamSetProxy( CFReadStreamRef httpStream, CFStringRef proxyHost, CFIndex proxyPort) ;
	 */
	public static void CFHTTPReadStreamSetProxy(CFReadStream httpStream, String proxyHost, long proxyPort){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFNetwork() {}
}
