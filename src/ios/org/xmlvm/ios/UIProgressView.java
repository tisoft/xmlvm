package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIProgressView extends UIView {

	/*
	 * Constructors
	 */
	public UIProgressView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithProgressViewStyle:(UIProgressViewStyle)style;
	 */
	public UIProgressView(int style) {}

	/** Default constructor */
	public UIProgressView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) UIProgressViewStyle progressViewStyle;
	 */
	public int getProgressViewStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIProgressViewStyle progressViewStyle;
	 */
	public void setProgressViewStyle(int progressViewStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float progress;
	 */
	public float getProgress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float progress;
	 */
	public void setProgress(float progress){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
