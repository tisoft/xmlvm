package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioUnit {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus AudioUnitSetParameter( AudioUnit inUnit, AudioUnitParameterID inID, AudioUnitScope inScope, AudioUnitElement inElement, AudioUnitParameterValue inValue, UInt32 inBufferOffsetInFrames) ;
	 */
	public static int AudioUnitSetParameter(ComponentInstanceRecord inUnit, int inID, int inScope, int inElement, float inValue, int inBufferOffsetInFrames){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitGetParameter( AudioUnit inUnit, AudioUnitParameterID inID, AudioUnitScope inScope, AudioUnitElement inElement, AudioUnitParameterValue * outValue) ;
	 */
	public static int AudioUnitGetParameter(ComponentInstanceRecord inUnit, int inID, int inScope, int inElement, float[] outValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitRemoveRenderNotify( AudioUnit inUnit, AURenderCallback inProc, void * inProcUserData) ;
	 */
	public static int AudioUnitRemoveRenderNotify(ComponentInstanceRecord inUnit, Object inProc, byte[] inProcUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioOutputUnitStop( AudioUnit ci) ;
	 */
	public static int AudioOutputUnitStop(ComponentInstanceRecord ci){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitInitialize( AudioUnit inUnit) ;
	 */
	public static int AudioUnitInitialize(ComponentInstanceRecord inUnit){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitSetProperty( AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitScope inScope, AudioUnitElement inElement, const void * inData, UInt32 inDataSize) ;
	 */
	public static int AudioUnitSetProperty(ComponentInstanceRecord inUnit, int inID, int inScope, int inElement, byte[] inData, int inDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitAddRenderNotify( AudioUnit inUnit, AURenderCallback inProc, void * inProcUserData) ;
	 */
	public static int AudioUnitAddRenderNotify(ComponentInstanceRecord inUnit, Object inProc, byte[] inProcUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitAddPropertyListener( AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitPropertyListenerProc inProc, void * inProcUserData) ;
	 */
	public static int AudioUnitAddPropertyListener(ComponentInstanceRecord inUnit, int inID, Object inProc, byte[] inProcUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioOutputUnitStart( AudioUnit ci) ;
	 */
	public static int AudioOutputUnitStart(ComponentInstanceRecord ci){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitRemovePropertyListenerWithUserData( AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitPropertyListenerProc inProc, void * inProcUserData) ;
	 */
	public static int AudioUnitRemovePropertyListenerWithUserData(ComponentInstanceRecord inUnit, int inID, Object inProc, byte[] inProcUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitUninitialize( AudioUnit inUnit) ;
	 */
	public static int AudioUnitUninitialize(ComponentInstanceRecord inUnit){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitRemovePropertyListener( AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitPropertyListenerProc inProc) ;
	 */
	public static int AudioUnitRemovePropertyListener(ComponentInstanceRecord inUnit, int inID, Object inProc){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitGetPropertyInfo( AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitScope inScope, AudioUnitElement inElement, UInt32 * outDataSize, Boolean * outWritable) ;
	 */
	public static int AudioUnitGetPropertyInfo(ComponentInstanceRecord inUnit, int inID, int inScope, int inElement, int[] outDataSize, byte[] outWritable){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitReset( AudioUnit inUnit, AudioUnitScope inScope, AudioUnitElement inElement) ;
	 */
	public static int AudioUnitReset(ComponentInstanceRecord inUnit, int inScope, int inElement){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitGetProperty( AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitScope inScope, AudioUnitElement inElement, void * outData, UInt32 * ioDataSize) ;
	 */
	public static int AudioUnitGetProperty(ComponentInstanceRecord inUnit, int inID, int inScope, int inElement, byte[] outData, int[] ioDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitRender( AudioUnit inUnit, AudioUnitRenderActionFlags * ioActionFlags, const AudioTimeStamp * inTimeStamp, UInt32 inOutputBusNumber, UInt32 inNumberFrames, AudioBufferList * ioData) ;
	 */
	public static int AudioUnitRender(ComponentInstanceRecord inUnit, int[] ioActionFlags, Reference<AudioTimeStamp> inTimeStamp, int inOutputBusNumber, int inNumberFrames, Reference<AudioBufferList> ioData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioUnitScheduleParameters( AudioUnit inUnit, const AudioUnitParameterEvent * inParameterEvent, UInt32 inNumParamEvents) ;
	 */
	public static int AudioUnitScheduleParameters(ComponentInstanceRecord inUnit, Reference<AudioUnitParameterEvent> inParameterEvent, int inNumParamEvents){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioUnit() {}
}
