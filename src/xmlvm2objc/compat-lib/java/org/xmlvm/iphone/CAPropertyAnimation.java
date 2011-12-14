/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */
package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public abstract class CAPropertyAnimation extends CAAnimation {

	/*
	 * Static methods
	 */

	/**
	 * + (id)animationWithKeyPath:(NSString *)path;
	 */
	public static CAPropertyAnimation animationWithKeyPath(String path){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CAPropertyAnimation() {}

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

//	/**
//	 * @property(retain) CAValueFunction *valueFunction;
//	 */
//	public CAValueFunction getValueFunction(){
//		throw new RuntimeException("Stub");
//	}
//
//	/**
//	 * @property(retain) CAValueFunction *valueFunction;
//	 */
//	public void setValueFunction(CAValueFunction valueFunction){
//		throw new RuntimeException("Stub");
//	}
}
