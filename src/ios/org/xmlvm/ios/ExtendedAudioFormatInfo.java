package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ExtendedAudioFormatInfo {

	/*
	 * Variables
	 */
	 public AudioStreamBasicDescription mASBD;
	 public byte[] mMagicCookie;
	 public int mMagicCookieSize;
	 public AudioClassDescription mClassDescription;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public ExtendedAudioFormatInfo() {}
}
