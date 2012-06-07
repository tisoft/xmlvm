package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "CAMediaTiming")
public interface CAMediaTiming {

	/*
	 * Properties
	 */

	/**
	 * @propertyCFTimeInterval beginTime;
	 */
	public abstract double getBeginTime();

	/**
	 * @propertyCFTimeInterval beginTime;
	 */
	public abstract void setBeginTime(double beginTime);

	/**
	 * @propertyCFTimeInterval duration;
	 */
	public abstract double getDuration();

	/**
	 * @propertyCFTimeInterval duration;
	 */
	public abstract void setDuration(double duration);

	/**
	 * @propertyfloat speed;
	 */
	public abstract float getSpeed();

	/**
	 * @propertyfloat speed;
	 */
	public abstract void setSpeed(float speed);

	/**
	 * @propertyCFTimeInterval timeOffset;
	 */
	public abstract double getTimeOffset();

	/**
	 * @propertyCFTimeInterval timeOffset;
	 */
	public abstract void setTimeOffset(double timeOffset);

	/**
	 * @propertyfloat repeatCount;
	 */
	public abstract float getRepeatCount();

	/**
	 * @propertyfloat repeatCount;
	 */
	public abstract void setRepeatCount(float repeatCount);

	/**
	 * @propertyCFTimeInterval repeatDuration;
	 */
	public abstract double getRepeatDuration();

	/**
	 * @propertyCFTimeInterval repeatDuration;
	 */
	public abstract void setRepeatDuration(double repeatDuration);

	/**
	 * @propertyBOOL autoreverses;
	 */
	public abstract boolean getAutoreverses();

	/**
	 * @propertyBOOL autoreverses;
	 */
	public abstract void setAutoreverses(boolean autoreverses);

	/**
	 * @property(copy) NSString *fillMode;
	 */
	public abstract String getFillMode();

	/**
	 * @property(copy) NSString *fillMode;
	 */
	public abstract void setFillMode(String fillMode);
}
