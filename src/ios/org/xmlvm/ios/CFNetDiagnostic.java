package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNetDiagnostic {

	/*
	 * Static methods
	 */

	/**
	 * CFNetDiagnosticRef CFNetDiagnosticCreateWithStreams( CFAllocatorRef alloc, CFReadStreamRef readStream, CFWriteStreamRef writeStream) ;
	 */
	public static CFNetDiagnostic createWithStreams(CFAllocator alloc, CFReadStream readStream, CFWriteStream writeStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNetDiagnosticRef CFNetDiagnosticCreateWithURL( CFAllocatorRef alloc, CFURLRef url) ;
	 */
	public static CFNetDiagnostic createWithURL(CFAllocator alloc, CFURL url){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFNetDiagnostic() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFNetDiagnosticSetName( CFNetDiagnosticRef details, CFStringRef name) ;
	 */
	public void setName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNetDiagnosticStatus CFNetDiagnosticDiagnoseProblemInteractively(CFNetDiagnosticRef details) ;
	 */
	public long diagnoseProblemInteractively(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNetDiagnosticStatus CFNetDiagnosticCopyNetworkStatusPassively( CFNetDiagnosticRef details, CFStringRef * description) ;
	 */
	public long copyNetworkStatusPassively(String description){
		throw new RuntimeException("Stub");
	}
}
