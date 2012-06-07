package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CAAnimation extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)animation;
	 */
	public static CAAnimation animation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)defaultValueForKey:(NSString *)key;
	 */
	public static Object defaultValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CAAnimation() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(retain) CAMediaTimingFunction *timingFunction;
	 */
	public CAMediaTimingFunction getTimingFunction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) CAMediaTimingFunction *timingFunction;
	 */
	public void setTimingFunction(CAMediaTimingFunction timingFunction){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) id delegate;
	 */
	public Object getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) id delegate;
	 */
	public void setDelegate(Object delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isRemovedOnCompletion) BOOL removedOnCompletion;
	 */
	public boolean isRemovedOnCompletion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isRemovedOnCompletion) BOOL removedOnCompletion;
	 */
	public void setRemovedOnCompletion(boolean removedOnCompletion){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)shouldArchiveValueForKey:(NSString *)key;
	 */
	public boolean shouldArchiveValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */

	/**
	 * @propertyCFTimeInterval beginTime;
	 */
	public double getBeginTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval beginTime;
	 */
	public void setBeginTime(double beginTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval duration;
	 */
	public double getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval duration;
	 */
	public void setDuration(double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat speed;
	 */
	public float getSpeed(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat speed;
	 */
	public void setSpeed(float speed){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval timeOffset;
	 */
	public double getTimeOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval timeOffset;
	 */
	public void setTimeOffset(double timeOffset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat repeatCount;
	 */
	public float getRepeatCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat repeatCount;
	 */
	public void setRepeatCount(float repeatCount){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval repeatDuration;
	 */
	public double getRepeatDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCFTimeInterval repeatDuration;
	 */
	public void setRepeatDuration(double repeatDuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyBOOL autoreverses;
	 */
	public boolean getAutoreverses(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyBOOL autoreverses;
	 */
	public void setAutoreverses(boolean autoreverses){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *fillMode;
	 */
	public String getFillMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *fillMode;
	 */
	public void setFillMode(String fillMode){
		throw new RuntimeException("Stub");
	}
}
