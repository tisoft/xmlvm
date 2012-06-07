package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIBezierPath extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIBezierPath *)bezierPath;
	 */
	public static UIBezierPath bezierPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIBezierPath *)bezierPathWithRect:(CGRect)rect;
	 */
	public static UIBezierPath bezierPathWithRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIBezierPath *)bezierPathWithOvalInRect:(CGRect)rect;
	 */
	public static UIBezierPath bezierPathWithOvalInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIBezierPath *)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius;
	 */
	public static UIBezierPath bezierPathWithRoundedRect(CGRect rect, float cornerRadius){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIBezierPath *)bezierPathWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;
	 */
	public static UIBezierPath bezierPathWithRoundedRect(CGRect rect, int corners, CGSize cornerRadii){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIBezierPath *)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise;
	 */
	public static UIBezierPath bezierPathWithArcCenter(CGPoint center, float radius, float startAngle, float endAngle, boolean clockwise){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIBezierPath *)bezierPathWithCGPath:(CGPathRef)CGPath;
	 */
	public static UIBezierPath bezierPathWithCGPath(CGPath CGPath){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIBezierPath() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CGPathRef CGPath;
	 */
	public CGPath getCGPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPathRef CGPath;
	 */
	public void setCGPath(CGPath CGPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly,getter=isEmpty) BOOL empty;
	 */
	public boolean isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGRect bounds;
	 */
	public CGRect getBounds(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGPoint currentPoint;
	 */
	public CGPoint getCurrentPoint(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat lineWidth;
	 */
	public float getLineWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat lineWidth;
	 */
	public void setLineWidth(float lineWidth){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGLineCap lineCapStyle;
	 */
	public int getLineCapStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGLineCap lineCapStyle;
	 */
	public void setLineCapStyle(int lineCapStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGLineJoin lineJoinStyle;
	 */
	public int getLineJoinStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGLineJoin lineJoinStyle;
	 */
	public void setLineJoinStyle(int lineJoinStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat miterLimit;
	 */
	public float getMiterLimit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat miterLimit;
	 */
	public void setMiterLimit(float miterLimit){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat flatness;
	 */
	public float getFlatness(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat flatness;
	 */
	public void setFlatness(float flatness){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL usesEvenOddFillRule;
	 */
	public boolean getUsesEvenOddFillRule(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL usesEvenOddFillRule;
	 */
	public void setUsesEvenOddFillRule(boolean usesEvenOddFillRule){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)moveToPoint:(CGPoint)point;
	 */
	public void moveToPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addLineToPoint:(CGPoint)point;
	 */
	public void addLineToPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2;
	 */
	public void addCurveToPoint(CGPoint endPoint, CGPoint controlPoint1, CGPoint controlPoint2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint;
	 */
	public void addQuadCurveToPoint(CGPoint endPoint, CGPoint controlPoint){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise ;
	 */
	public void addArcWithCenter(CGPoint center, float radius, float startAngle, float endAngle, boolean clockwise){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)closePath;
	 */
	public void closePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllPoints;
	 */
	public void removeAllPoints(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendPath:(UIBezierPath *)bezierPath;
	 */
	public void appendPath(UIBezierPath bezierPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)applyTransform:(CGAffineTransform)transform;
	 */
	public void applyTransform(CGAffineTransform transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsPoint:(CGPoint)point;
	 */
	public boolean containsPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLineDash:(const CGFloat *)pattern count:(NSInteger)count phase:(CGFloat)phase;
	 */
	public void setLineDash(float[] pattern, int count, float phase){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getLineDash:(CGFloat *)pattern count:(NSInteger *)count phase:(CGFloat *)phase;
	 */
	public void getLineDash(float[] pattern, int[] count, float[] phase){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)fill;
	 */
	public void fill(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stroke;
	 */
	public void stroke(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)fillWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
	 */
	public void fillWithBlendMode(int blendMode, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)strokeWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
	 */
	public void strokeWithBlendMode(int blendMode, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addClip;
	 */
	public void addClip(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
