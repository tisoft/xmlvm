package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSString.class})
public class UIImage extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIImage *)imageNamed:(NSString *)name;
	 */
	public static UIImage imageNamed(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIImage *)imageWithContentsOfFile:(NSString *)path;
	 */
	public static UIImage imageWithContentsOfFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIImage *)imageWithData:(NSData *)data;
	 */
	public static UIImage imageWithData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIImage *)imageWithCGImage:(CGImageRef)imageRef;
	 */
	public static UIImage imageWithCGImage(CGImage imageRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIImage *)imageWithCGImage:(CGImageRef)imageRef scale:(CGFloat)scale orientation:(UIImageOrientation)orientation ;
	 */
	public static UIImage imageWithCGImage(CGImage imageRef, float scale, int orientation){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path;
	 */
	public UIImage(String path) {}

	/**
	 * - (id)initWithData:(NSData *)data;
	 */
	public UIImage(NSData data) {}

	/**
	 * - (id)initWithCGImage:(CGImageRef)imageRef;
	 */
	public UIImage(CGImage imageRef) {}

	/**
	 * - (id)initWithCGImage:(CGImageRef)imageRef scale:(CGFloat)scale orientation:(UIImageOrientation)orientation ;
	 */
	public UIImage(CGImage imageRef, float scale, int orientation) {}

	/** Default constructor */
	public UIImage() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) CGSize size;
	 */
	public CGSize getSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGImageRef CGImage;
	 */
	public CGImage getCGImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIImageOrientation imageOrientation;
	 */
	public int getImageOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat scale ;
	 */
	public float getScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSInteger leftCapWidth;
	 */
	public int getLeftCapWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSInteger topCapHeight;
	 */
	public int getTopCapHeight(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)drawAtPoint:(CGPoint)point;
	 */
	public void drawAtPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
	 */
	public void drawAtPoint(CGPoint point, int blendMode, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawInRect:(CGRect)rect;
	 */
	public void drawInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
	 */
	public void drawInRect(CGRect rect, int blendMode, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawAsPatternInRect:(CGRect)rect;
	 */
	public void drawAsPatternInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight;
	 */
	public UIImage stretchableImageWithLeftCapWidth(int leftCapWidth, int topCapHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSData *UIImagePNGRepresentation(UIImage *image);
	 */
	public NSData pNGRepresentation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSData *UIImageJPEGRepresentation(UIImage *image, CGFloat compressionQuality);
	 */
	public NSData jPEGRepresentation(float compressionQuality){
		throw new RuntimeException("Stub");
	}

	/**
	 * void UIImageWriteToSavedPhotosAlbum(UIImage *image, id completionTarget, SEL completionSelector, void *contextInfo);
	 */
	public void writeToSavedPhotosAlbum(Object completionTarget, SEL completionSelector, byte[] contextInfo){
		throw new RuntimeException("Stub");
	}
}
