package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioQueue {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus AudioQueueNewOutput( const AudioStreamBasicDescription *inFormat, AudioQueueOutputCallback inCallbackProc, void * inUserData, CFRunLoopRef inCallbackRunLoop, CFStringRef inCallbackRunLoopMode, UInt32 inFlags, AudioQueueRef * outAQ) ;
	 */
	public static int newOutput(Reference<AudioStreamBasicDescription> inFormat, Object inCallbackProc, byte[] inUserData, CFRunLoop inCallbackRunLoop, String inCallbackRunLoopMode, int inFlags, AudioQueue outAQ){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueNewInput( const AudioStreamBasicDescription *inFormat, AudioQueueInputCallback inCallbackProc, void * inUserData, CFRunLoopRef inCallbackRunLoop, CFStringRef inCallbackRunLoopMode, UInt32 inFlags, AudioQueueRef * outAQ) ;
	 */
	public static int newInput(Reference<AudioStreamBasicDescription> inFormat, Object inCallbackProc, byte[] inUserData, CFRunLoop inCallbackRunLoop, String inCallbackRunLoopMode, int inFlags, AudioQueue outAQ){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioQueue() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus AudioQueueNewOutputWithDispatchQueue(AudioQueueRef * outAQ, const AudioStreamBasicDescription *inFormat, UInt32 inFlags, dispatch_queue_t inCallbackDispatchQueue, AudioQueueOutputCallbackBlock inCallbackBlock) ;
	 */
	public int newOutputWithDispatchQueue(Reference<AudioStreamBasicDescription> inFormat, int inFlags, Object inCallbackDispatchQueue, Object inCallbackBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueNewInputWithDispatchQueue(AudioQueueRef * outAQ, const AudioStreamBasicDescription *inFormat, UInt32 inFlags, dispatch_queue_t inCallbackDispatchQueue, AudioQueueInputCallbackBlock inCallbackBlock) ;
	 */
	public int newInputWithDispatchQueue(Reference<AudioStreamBasicDescription> inFormat, int inFlags, Object inCallbackDispatchQueue, Object inCallbackBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueDispose( AudioQueueRef inAQ, Boolean inImmediate) ;
	 */
	public int dispose(byte inImmediate){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueAllocateBuffer( AudioQueueRef inAQ, UInt32 inBufferByteSize, AudioQueueBufferRef * outBuffer) ;
	 */
	public int allocateBuffer(int inBufferByteSize, Reference<AudioQueueBuffer>[] outBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueAllocateBufferWithPacketDescriptions( AudioQueueRef inAQ, UInt32 inBufferByteSize, UInt32 inNumberPacketDescriptions, AudioQueueBufferRef * outBuffer) ;
	 */
	public int allocateBufferWithPacketDescriptions(int inBufferByteSize, int inNumberPacketDescriptions, Reference<AudioQueueBuffer>[] outBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueFreeBuffer( AudioQueueRef inAQ, AudioQueueBufferRef inBuffer) ;
	 */
	public int freeBuffer(Reference<AudioQueueBuffer> inBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueEnqueueBuffer( AudioQueueRef inAQ, AudioQueueBufferRef inBuffer, UInt32 inNumPacketDescs, const AudioStreamPacketDescription *inPacketDescs) ;
	 */
	public int enqueueBuffer(Reference<AudioQueueBuffer> inBuffer, int inNumPacketDescs, Reference<AudioStreamPacketDescription> inPacketDescs){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueEnqueueBufferWithParameters( AudioQueueRef inAQ, AudioQueueBufferRef inBuffer, UInt32 inNumPacketDescs, const AudioStreamPacketDescription * inPacketDescs, UInt32 inTrimFramesAtStart, UInt32 inTrimFramesAtEnd, UInt32 inNumParamValues, const AudioQueueParameterEvent * inParamValues, const AudioTimeStamp * inStartTime, AudioTimeStamp * outActualStartTime) ;
	 */
	public int enqueueBufferWithParameters(Reference<AudioQueueBuffer> inBuffer, int inNumPacketDescs, Reference<AudioStreamPacketDescription> inPacketDescs, int inTrimFramesAtStart, int inTrimFramesAtEnd, int inNumParamValues, Reference<AudioQueueParameterEvent> inParamValues, Reference<AudioTimeStamp> inStartTime, Reference<AudioTimeStamp> outActualStartTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueStart( AudioQueueRef inAQ, const AudioTimeStamp * inStartTime) ;
	 */
	public int start(Reference<AudioTimeStamp> inStartTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueuePrime( AudioQueueRef inAQ, UInt32 inNumberOfFramesToPrepare, UInt32 * outNumberOfFramesPrepared) ;
	 */
	public int prime(int inNumberOfFramesToPrepare, int[] outNumberOfFramesPrepared){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueStop( AudioQueueRef inAQ, Boolean inImmediate) ;
	 */
	public int stop(byte inImmediate){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueuePause( AudioQueueRef inAQ) ;
	 */
	public int pause(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueFlush( AudioQueueRef inAQ) ;
	 */
	public int flush(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueReset( AudioQueueRef inAQ) ;
	 */
	public int reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueGetParameter( AudioQueueRef inAQ, AudioQueueParameterID inParamID, AudioQueueParameterValue * outValue) ;
	 */
	public int getParameter(int inParamID, float[] outValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueSetParameter( AudioQueueRef inAQ, AudioQueueParameterID inParamID, AudioQueueParameterValue inValue) ;
	 */
	public int setParameter(int inParamID, float inValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueGetProperty( AudioQueueRef inAQ, AudioQueuePropertyID inID, void * outData, UInt32 * ioDataSize) ;
	 */
	public int getProperty(int inID, byte[] outData, int[] ioDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueSetProperty( AudioQueueRef inAQ, AudioQueuePropertyID inID, const void * inData, UInt32 inDataSize) ;
	 */
	public int setProperty(int inID, byte[] inData, int inDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueGetPropertySize( AudioQueueRef inAQ, AudioQueuePropertyID inID, UInt32 * outDataSize) ;
	 */
	public int getPropertySize(int inID, int[] outDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueAddPropertyListener( AudioQueueRef inAQ, AudioQueuePropertyID inID, AudioQueuePropertyListenerProc inProc, void * inUserData) ;
	 */
	public int addPropertyListener(int inID, Object inProc, byte[] inUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueRemovePropertyListener( AudioQueueRef inAQ, AudioQueuePropertyID inID, AudioQueuePropertyListenerProc inProc, void * inUserData) ;
	 */
	public int removePropertyListener(int inID, Object inProc, byte[] inUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueCreateTimeline( AudioQueueRef inAQ, AudioQueueTimelineRef * outTimeline) ;
	 */
	public int createTimeline(AudioQueueTimeline outTimeline){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueDisposeTimeline( AudioQueueRef inAQ, AudioQueueTimelineRef inTimeline) ;
	 */
	public int disposeTimeline(AudioQueueTimeline inTimeline){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueGetCurrentTime( AudioQueueRef inAQ, AudioQueueTimelineRef inTimeline, AudioTimeStamp * outTimeStamp, Boolean * outTimelineDiscontinuity) ;
	 */
	public int getCurrentTime(AudioQueueTimeline inTimeline, Reference<AudioTimeStamp> outTimeStamp, byte[] outTimelineDiscontinuity){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueDeviceGetCurrentTime( AudioQueueRef inAQ, AudioTimeStamp *outTimeStamp) ;
	 */
	public int deviceGetCurrentTime(Reference<AudioTimeStamp> outTimeStamp){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueDeviceTranslateTime( AudioQueueRef inAQ, const AudioTimeStamp * inTime, AudioTimeStamp * outTime) ;
	 */
	public int deviceTranslateTime(Reference<AudioTimeStamp> inTime, Reference<AudioTimeStamp> outTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueDeviceGetNearestStartTime(AudioQueueRef inAQ, AudioTimeStamp * ioRequestedStartTime, UInt32 inFlags) ;
	 */
	public int deviceGetNearestStartTime(Reference<AudioTimeStamp> ioRequestedStartTime, int inFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueSetOfflineRenderFormat( AudioQueueRef inAQ, const AudioStreamBasicDescription *inFormat, const AudioChannelLayout *inLayout) ;
	 */
	public int setOfflineRenderFormat(Reference<AudioStreamBasicDescription> inFormat, Reference<AudioChannelLayout> inLayout){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioQueueOfflineRender( AudioQueueRef inAQ, const AudioTimeStamp * inTimestamp, AudioQueueBufferRef ioBuffer, UInt32 inNumberFrames) ;
	 */
	public int offlineRender(Reference<AudioTimeStamp> inTimestamp, Reference<AudioQueueBuffer> ioBuffer, int inNumberFrames){
		throw new RuntimeException("Stub");
	}
}
