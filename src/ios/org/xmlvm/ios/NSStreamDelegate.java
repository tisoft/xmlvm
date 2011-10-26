package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSStreamDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)stream:(NSStream *)aStream handleEvent:(NSStreamEvent)eventCode;
	 */
	public abstract void stream(NSStream aStream, int eventCode);
}
