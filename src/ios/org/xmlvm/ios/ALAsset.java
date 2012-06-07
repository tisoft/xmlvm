package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ALAsset extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public ALAsset() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (id)valueForProperty:(NSString *)property;
	 */
	public Object valueForProperty(String property){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (ALAssetRepresentation *)defaultRepresentation;
	 */
	public ALAssetRepresentation defaultRepresentation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (ALAssetRepresentation *)representationForUTI:(NSString *)representationUTI;
	 */
	public ALAssetRepresentation representationForUTI(String representationUTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGImageRef)thumbnail;
	 */
	public CGImage thumbnail(){
		throw new RuntimeException("Stub");
	}
}
