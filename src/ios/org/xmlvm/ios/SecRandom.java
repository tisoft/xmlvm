package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SecRandom {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SecRandom() {}

	/*
	 * Instance methods
	 */

	/**
	 * int SecRandomCopyBytes(SecRandomRef rnd, size_t count, uint8_t *bytes) ;
	 */
	public int copyBytes(int count, byte[] bytes){
		throw new RuntimeException("Stub");
	}
}
