package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIThruConnectionParams {

	/*
	 * Variables
	 */
	 public int version;
	 public int numSources;
	 public int numDestinations;
	 public byte highVelocity;
	 public byte lowVelocity;
	 public byte highNote;
	 public byte lowNote;
	 public MIDITransform noteNumber;
	 public MIDITransform velocity;
	 public MIDITransform keyPressure;
	 public MIDITransform channelPressure;
	 public MIDITransform programChange;
	 public MIDITransform pitchBend;
	 public byte filterOutSysEx;
	 public byte filterOutMTC;
	 public byte filterOutBeatClock;
	 public byte filterOutTuneRequest;
	 public byte filterOutAllControls;
	 public short numControlTransforms;
	 public short numMaps;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIThruConnectionParams() {}

	/*
	 * Instance methods
	 */

	/**
	 * void MIDIThruConnectionParamsInitialize( MIDIThruConnectionParams * inConnectionParams ) ;
	 */
	public void initialize(){
		throw new RuntimeException("Stub");
	}
}
