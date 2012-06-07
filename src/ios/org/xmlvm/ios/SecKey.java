package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SecKey {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SecKeyGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecKeyGeneratePair(CFDictionaryRef parameters, SecKeyRef *publicKey, SecKeyRef *privateKey) ;
	 */
	public static int generatePair(CFDictionary parameters, Reference<SecKey> publicKey, Reference<SecKey> privateKey){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SecKey() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus SecKeyRawSign( SecKeyRef key, SecPadding padding, const uint8_t *dataToSign, size_t dataToSignLen, uint8_t *sig, size_t *sigLen) ;
	 */
	public int rawSign(int padding, byte[] dataToSign, int dataToSignLen, byte[] sig, int[] sigLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecKeyRawVerify( SecKeyRef key, SecPadding padding, const uint8_t *signedData, size_t signedDataLen, const uint8_t *sig, size_t sigLen) ;
	 */
	public int rawVerify(int padding, byte[] signedData, int signedDataLen, byte[] sig, int sigLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecKeyEncrypt( SecKeyRef key, SecPadding padding, const uint8_t *plainText, size_t plainTextLen, uint8_t *cipherText, size_t *cipherTextLen) ;
	 */
	public int encrypt(int padding, byte[] plainText, int plainTextLen, byte[] cipherText, int[] cipherTextLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecKeyDecrypt( SecKeyRef key, SecPadding padding, const uint8_t *cipherText, size_t cipherTextLen, uint8_t *plainText, size_t *plainTextLen) ;
	 */
	public int decrypt(int padding, byte[] cipherText, int cipherTextLen, byte[] plainText, int[] plainTextLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t SecKeyGetBlockSize(SecKeyRef key) ;
	 */
	public int getBlockSize(){
		throw new RuntimeException("Stub");
	}
}
