package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CAPropertyAnimation extends CAAnimation {

	/*
	 * Static methods
	 */

	/**
	 * + (id)animationWithKeyPath:(NSString *)path;
	 */
	public static Object animationWithKeyPath(String path){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CAPropertyAnimation() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(copy) NSString *keyPath;
	 */
	public String getKeyPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *keyPath;
	 */
	public void setKeyPath(String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isAdditive) BOOL additive;
	 */
	public boolean isAdditive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isAdditive) BOOL additive;
	 */
	public void setAdditive(boolean additive){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isCumulative) BOOL cumulative;
	 */
	public boolean isCumulative(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isCumulative) BOOL cumulative;
	 */
	public void setCumulative(boolean cumulative){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) CAValueFunction *valueFunction;
	 */
	public CAValueFunction getValueFunction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) CAValueFunction *valueFunction;
	 */
	public void setValueFunction(CAValueFunction valueFunction){
		throw new RuntimeException("Stub");
	}
}
