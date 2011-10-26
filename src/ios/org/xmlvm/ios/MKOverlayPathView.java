package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKOverlayPathView extends MKOverlayView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	MKOverlayPathView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(retain) UIColor *fillColor;
	 */
	public UIColor getFillColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) UIColor *fillColor;
	 */
	public void setFillColor(UIColor fillColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) UIColor *strokeColor;
	 */
	public UIColor getStrokeColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) UIColor *strokeColor;
	 */
	public void setStrokeColor(UIColor strokeColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGFloat lineWidth;
	 */
	public float getLineWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGFloat lineWidth;
	 */
	public void setLineWidth(float lineWidth){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGLineJoin lineJoin;
	 */
	public int getLineJoin(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGLineJoin lineJoin;
	 */
	public void setLineJoin(int lineJoin){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGLineCap lineCap;
	 */
	public int getLineCap(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGLineCap lineCap;
	 */
	public void setLineCap(int lineCap){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGFloat miterLimit;
	 */
	public float getMiterLimit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGFloat miterLimit;
	 */
	public void setMiterLimit(float miterLimit){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGFloat lineDashPhase;
	 */
	public float getLineDashPhase(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGFloat lineDashPhase;
	 */
	public void setLineDashPhase(float lineDashPhase){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSArray *lineDashPattern;
	 */
	public List getLineDashPattern(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSArray *lineDashPattern;
	 */
	public void setLineDashPattern(List lineDashPattern){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGPathRef path;
	 */
	public CGPath getPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyCGPathRef path;
	 */
	public void setPath(CGPath path){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)createPath;
	 */
	public void createPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)invalidatePath;
	 */
	public void invalidatePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale;
	 */
	public void applyStrokePropertiesToContext(CGContext context, float zoomScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)applyFillPropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale;
	 */
	public void applyFillPropertiesToContext(CGContext context, float zoomScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)strokePath:(CGPathRef)path inContext:(CGContextRef)context;
	 */
	public void strokePath(CGPath path, CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)fillPath:(CGPathRef)path inContext:(CGContextRef)context;
	 */
	public void fillPath(CGPath path, CGContext context){
		throw new RuntimeException("Stub");
	}
}
