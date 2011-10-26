package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface AVAudioSessionDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginInterruption;
	 */
	public abstract void beginInterruption();

	/**
	 * - (void)endInterruptionWithFlags:(NSUInteger)flags ;
	 */
	public abstract void endInterruptionWithFlags(int flags);

	/**
	 * - (void)endInterruption;
	 */
	public abstract void endInterruption();

	/**
	 * - (void)inputIsAvailableChanged:(BOOL)isInputAvailable;
	 */
	public abstract void inputIsAvailableChanged(boolean isInputAvailable);
}
