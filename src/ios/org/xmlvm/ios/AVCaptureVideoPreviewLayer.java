package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureVideoPreviewLayer extends CALayer {

	/*
	 * Static methods
	 */

	/**
	 * + (id)layerWithSession:(AVCaptureSession *)session;
	 */
	public static Object layerWithSession(AVCaptureSession session){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithSession:(AVCaptureSession *)session;
	 */
	public AVCaptureVideoPreviewLayer(AVCaptureSession session) {}

	/** Default constructor */
	AVCaptureVideoPreviewLayer() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain) AVCaptureSession *session;
	 */
	public AVCaptureSession getSession(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) AVCaptureSession *session;
	 */
	public void setSession(AVCaptureSession session){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *videoGravity;
	 */
	public String getVideoGravity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *videoGravity;
	 */
	public void setVideoGravity(String videoGravity){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isOrientationSupported) BOOL orientationSupported;
	 */
	public boolean isOrientationSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureVideoOrientation orientation;
	 */
	public int getOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureVideoOrientation orientation;
	 */
	public void setOrientation(int orientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isMirroringSupported) BOOL mirroringSupported;
	 */
	public boolean isMirroringSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL automaticallyAdjustsMirroring;
	 */
	public boolean getAutomaticallyAdjustsMirroring(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL automaticallyAdjustsMirroring;
	 */
	public void setAutomaticallyAdjustsMirroring(boolean automaticallyAdjustsMirroring){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isMirrored) BOOL mirrored;
	 */
	public boolean isMirrored(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isMirrored) BOOL mirrored;
	 */
	public void setMirrored(boolean mirrored){
		throw new RuntimeException("Stub");
	}
}
