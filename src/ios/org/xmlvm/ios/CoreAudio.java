package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CoreAudio {

	/*
	 * Static methods
	 */

	/**
	 * inline void FillOutASBDForLPCM(AudioStreamBasicDescription& outASBD, Float64 inSampleRate, UInt32 inChannelsPerFrame, UInt32 inValidBitsPerChannel, UInt32 inTotalBitsPerChannel, bool inIsFloat, bool inIsBigEndian, bool inIsNonInterleaved = false);
	 */
	public static void FillOutASBDForLPCM(AudioStreamBasicDescription outASBD, double inSampleRate, int inChannelsPerFrame, int inValidBitsPerChannel, int inTotalBitsPerChannel, boolean inIsFloat, boolean inIsBigEndian, boolean inIsNonInterleaved){
		throw new RuntimeException("Stub");
	}

	/**
	 * inline void FillOutAudioTimeStampWithHostTime(AudioTimeStamp& outATS, UInt64 inHostTime);
	 */
	public static void FillOutAudioTimeStampWithHostTime(AudioTimeStamp outATS, long inHostTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * inline void FillOutAudioTimeStampWithSampleAndHostTime(AudioTimeStamp& outATS, Float64 inSampleTime, UInt64 inHostTime);
	 */
	public static void FillOutAudioTimeStampWithSampleAndHostTime(AudioTimeStamp outATS, double inSampleTime, long inHostTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * inline void FillOutAudioTimeStampWithSampleTime(AudioTimeStamp& outATS, Float64 inSampleTime);
	 */
	public static void FillOutAudioTimeStampWithSampleTime(AudioTimeStamp outATS, double inSampleTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * inline UInt32 CalculateLPCMFlags(UInt32 inValidBitsPerChannel, UInt32 inTotalBitsPerChannel, bool inIsFloat, bool inIsBigEndian, bool inIsNonInterleaved = false);
	 */
	public static int CalculateLPCMFlags(int inValidBitsPerChannel, int inTotalBitsPerChannel, boolean inIsFloat, boolean inIsBigEndian, boolean inIsNonInterleaved){
		throw new RuntimeException("Stub");
	}

	/**
	 * inline bool IsAudioFormatNativeEndian(const AudioStreamBasicDescription& f);
	 */
	public static boolean IsAudioFormatNativeEndian(AudioStreamBasicDescription f){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CoreAudio() {}
}
