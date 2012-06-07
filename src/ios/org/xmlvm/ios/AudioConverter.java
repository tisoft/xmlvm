package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioConverter {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus AudioConverterNewSpecific( const AudioStreamBasicDescription* inSourceFormat, const AudioStreamBasicDescription* inDestinationFormat, UInt32 inNumberClassDescriptions, const AudioClassDescription* inClassDescriptions, AudioConverterRef* outAudioConverter) ;
	 */
	public static int newSpecific(Reference<AudioStreamBasicDescription> inSourceFormat, Reference<AudioStreamBasicDescription> inDestinationFormat, int inNumberClassDescriptions, Reference<AudioClassDescription> inClassDescriptions, AudioConverter outAudioConverter){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus AudioConverterNew( const AudioStreamBasicDescription* inSourceFormat, const AudioStreamBasicDescription* inDestinationFormat, AudioConverterRef* outAudioConverter) ;
	 */
	public AudioConverter(Reference<AudioStreamBasicDescription> inSourceFormat, Reference<AudioStreamBasicDescription> inDestinationFormat, AudioConverter outAudioConverter) {}

	/** Default constructor */
	public AudioConverter() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus AudioConverterDispose( AudioConverterRef inAudioConverter) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterReset( AudioConverterRef inAudioConverter) ;
	 */
	public int reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterGetPropertyInfo( AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32* outSize, Boolean* outWritable) ;
	 */
	public int getPropertyInfo(int inPropertyID, int[] outSize, byte[] outWritable){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterGetProperty( AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32* ioPropertyDataSize, void* outPropertyData) ;
	 */
	public int getProperty(int inPropertyID, int[] ioPropertyDataSize, byte[] outPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterSetProperty( AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32 inPropertyDataSize, const void* inPropertyData) ;
	 */
	public int setProperty(int inPropertyID, int inPropertyDataSize, byte[] inPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterFillBuffer( AudioConverterRef inAudioConverter, AudioConverterInputDataProc inInputDataProc, void* inInputDataProcUserData, UInt32* ioOutputDataSize, void* outOutputData) ;
	 */
	public int fillBuffer(Object inInputDataProc, byte[] inInputDataProcUserData, int[] ioOutputDataSize, byte[] outOutputData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterConvertBuffer( AudioConverterRef inAudioConverter, UInt32 inInputDataSize, const void* inInputData, UInt32* ioOutputDataSize, void* outOutputData) ;
	 */
	public int convertBuffer(int inInputDataSize, byte[] inInputData, int[] ioOutputDataSize, byte[] outOutputData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioConverterFillComplexBuffer( AudioConverterRef inAudioConverter, AudioConverterComplexInputDataProc inInputDataProc, void* inInputDataProcUserData, UInt32* ioOutputDataPacketSize, AudioBufferList* outOutputData, AudioStreamPacketDescription* outPacketDescription) ;
	 */
	public int fillComplexBuffer(Object inInputDataProc, byte[] inInputDataProcUserData, int[] ioOutputDataPacketSize, Reference<AudioBufferList> outOutputData, Reference<AudioStreamPacketDescription> outPacketDescription){
		throw new RuntimeException("Stub");
	}
}
