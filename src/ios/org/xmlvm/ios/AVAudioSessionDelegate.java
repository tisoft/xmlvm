package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "AVAudioSessionDelegate")
public interface AVAudioSessionDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginInterruption;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "beginInterruption", params = {
	})
	public abstract void beginInterruption();

	/**
	 * - (void)endInterruptionWithFlags:(NSUInteger)flags ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "endInterruptionWithFlags", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true)
	})
	public abstract void endInterruptionWithFlags(int flags);

	/**
	 * - (void)endInterruption;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "endInterruption", params = {
	})
	public abstract void endInterruption();

	/**
	 * - (void)inputIsAvailableChanged:(BOOL)isInputAvailable;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "inputIsAvailableChanged", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true)
	})
	public abstract void inputIsAvailableChanged(boolean isInputAvailable);
}
