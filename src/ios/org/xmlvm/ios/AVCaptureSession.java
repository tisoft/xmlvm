package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureSession extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureSession() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, copy) NSString *sessionPreset;
	 */
	public String getSessionPreset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *sessionPreset;
	 */
	public void setSessionPreset(String sessionPreset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *inputs;
	 */
	public List getInputs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *outputs;
	 */
	public List getOutputs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isRunning) BOOL running;
	 */
	public boolean isRunning(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isInterrupted) BOOL interrupted;
	 */
	public boolean isInterrupted(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)canSetSessionPreset:(NSString*)preset;
	 */
	public boolean canSetSessionPreset(String preset){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canAddInput:(AVCaptureInput *)input;
	 */
	public boolean canAddInput(AVCaptureInput input){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addInput:(AVCaptureInput *)input;
	 */
	public void addInput(AVCaptureInput input){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeInput:(AVCaptureInput *)input;
	 */
	public void removeInput(AVCaptureInput input){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canAddOutput:(AVCaptureOutput *)output;
	 */
	public boolean canAddOutput(AVCaptureOutput output){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addOutput:(AVCaptureOutput *)output;
	 */
	public void addOutput(AVCaptureOutput output){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeOutput:(AVCaptureOutput *)output;
	 */
	public void removeOutput(AVCaptureOutput output){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginConfiguration;
	 */
	public void beginConfiguration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)commitConfiguration;
	 */
	public void commitConfiguration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startRunning;
	 */
	public void startRunning(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopRunning;
	 */
	public void stopRunning(){
		throw new RuntimeException("Stub");
	}
}
