package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CGAffineTransform.class})
public class CGPath extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGPathGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGMutablePathRef CGPathCreateMutable(void) ;
	 */
	public static CGPath createMutable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathMoveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y) ;
	 */
	public static void moveToPoint(CGPath path, Reference<CGAffineTransform> m, float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddLineToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y) ;
	 */
	public static void addLineToPoint(CGPath path, Reference<CGAffineTransform> m, float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddQuadCurveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat cpx, CGFloat cpy, CGFloat x, CGFloat y) ;
	 */
	public static void addQuadCurveToPoint(CGPath path, Reference<CGAffineTransform> m, float cpx, float cpy, float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddCurveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y) ;
	 */
	public static void addCurveToPoint(CGPath path, Reference<CGAffineTransform> m, float cp1x, float cp1y, float cp2x, float cp2y, float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathCloseSubpath(CGMutablePathRef path) ;
	 */
	public static void closeSubpath(CGPath path){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddRect(CGMutablePathRef path, const CGAffineTransform *m, CGRect rect) ;
	 */
	public static void addRect(CGPath path, Reference<CGAffineTransform> m, CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddRects(CGMutablePathRef path, const CGAffineTransform *m, const CGRect rects[], size_t count) ;
	 */
	public static void addRects(CGPath path, Reference<CGAffineTransform> m, Reference<CGRect> rects, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddLines(CGMutablePathRef path, const CGAffineTransform *m, const CGPoint points[], size_t count) ;
	 */
	public static void addLines(CGPath path, Reference<CGAffineTransform> m, Reference<CGPoint> points, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddEllipseInRect(CGMutablePathRef path, const CGAffineTransform *m, CGRect rect) ;
	 */
	public static void addEllipseInRect(CGPath path, Reference<CGAffineTransform> m, CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddArc(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat endAngle, bool clockwise) ;
	 */
	public static void addArc(CGPath path, Reference<CGAffineTransform> m, float x, float y, float radius, float startAngle, float endAngle, boolean clockwise){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddArcToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x1, CGFloat y1, CGFloat x2, CGFloat y2, CGFloat radius) ;
	 */
	public static void addArcToPoint(CGPath path, Reference<CGAffineTransform> m, float x1, float y1, float x2, float y2, float radius){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathAddPath(CGMutablePathRef path1, const CGAffineTransform *m, CGPathRef path2) ;
	 */
	public static void addPath(CGPath path1, Reference<CGAffineTransform> m, CGPath path2){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGPath() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPathRef CGPathCreateCopy(CGPathRef path) ;
	 */
	public CGPath createCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGMutablePathRef CGPathCreateMutableCopy(CGPathRef path) ;
	 */
	public CGPath createMutableCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPathRef CGPathRetain(CGPathRef path) ;
	 */
	public CGPath retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathRelease(CGPathRef path) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPathEqualToPath(CGPathRef path1, CGPathRef path2) ;
	 */
	public boolean equalToPath(CGPath path2){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPathIsEmpty(CGPathRef path) ;
	 */
	public boolean isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPathIsRect(CGPathRef path, CGRect *rect) ;
	 */
	public boolean isRect(Reference<CGRect> rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPoint CGPathGetCurrentPoint(CGPathRef path) ;
	 */
	public CGPoint getCurrentPoint(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGPathGetBoundingBox(CGPathRef path) ;
	 */
	public CGRect getBoundingBox(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGPathGetPathBoundingBox(CGPathRef path) ;
	 */
	public CGRect getPathBoundingBox(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPathContainsPoint(CGPathRef path, const CGAffineTransform *m, CGPoint point, bool eoFill) ;
	 */
	public boolean containsPoint(Reference<CGAffineTransform> m, CGPoint point, boolean eoFill){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPathApply(CGPathRef path, void *info, CGPathApplierFunction function) ;
	 */
	public void apply(byte[] info, Object function){
		throw new RuntimeException("Stub");
	}
}
