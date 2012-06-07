package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGContext extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGContextGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGContext() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CGContextSaveGState(CGContextRef c) ;
	 */
	public void saveGState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextRestoreGState(CGContextRef c) ;
	 */
	public void restoreGState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextScaleCTM(CGContextRef c, CGFloat sx, CGFloat sy) ;
	 */
	public void scaleCTM(float sx, float sy){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextTranslateCTM(CGContextRef c, CGFloat tx, CGFloat ty) ;
	 */
	public void translateCTM(float tx, float ty){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextRotateCTM(CGContextRef c, CGFloat angle) ;
	 */
	public void rotateCTM(float angle){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextConcatCTM(CGContextRef c, CGAffineTransform transform) ;
	 */
	public void concatCTM(CGAffineTransform transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGContextGetCTM(CGContextRef c) ;
	 */
	public CGAffineTransform getCTM(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetLineWidth(CGContextRef c, CGFloat width) ;
	 */
	public void setLineWidth(float width){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetLineCap(CGContextRef c, CGLineCap cap) ;
	 */
	public void setLineCap(int cap){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetLineJoin(CGContextRef c, CGLineJoin join) ;
	 */
	public void setLineJoin(int join){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetMiterLimit(CGContextRef c, CGFloat limit) ;
	 */
	public void setMiterLimit(float limit){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetLineDash(CGContextRef c, CGFloat phase, const CGFloat lengths[], size_t count) ;
	 */
	public void setLineDash(float phase, float[] lengths, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFlatness(CGContextRef c, CGFloat flatness) ;
	 */
	public void setFlatness(float flatness){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetAlpha(CGContextRef c, CGFloat alpha) ;
	 */
	public void setAlpha(float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetBlendMode(CGContextRef context, CGBlendMode mode) ;
	 */
	public void setBlendMode(int mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextBeginPath(CGContextRef c) ;
	 */
	public void beginPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextMoveToPoint(CGContextRef c, CGFloat x, CGFloat y) ;
	 */
	public void moveToPoint(float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddLineToPoint(CGContextRef c, CGFloat x, CGFloat y) ;
	 */
	public void addLineToPoint(float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddCurveToPoint(CGContextRef c, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y) ;
	 */
	public void addCurveToPoint(float cp1x, float cp1y, float cp2x, float cp2y, float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddQuadCurveToPoint(CGContextRef c, CGFloat cpx, CGFloat cpy, CGFloat x, CGFloat y) ;
	 */
	public void addQuadCurveToPoint(float cpx, float cpy, float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextClosePath(CGContextRef c) ;
	 */
	public void closePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddRect(CGContextRef c, CGRect rect) ;
	 */
	public void addRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddRects(CGContextRef c, const CGRect rects[], size_t count) ;
	 */
	public void addRects(Reference<CGRect> rects, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddLines(CGContextRef c, const CGPoint points[], size_t count) ;
	 */
	public void addLines(Reference<CGPoint> points, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddEllipseInRect(CGContextRef context, CGRect rect) ;
	 */
	public void addEllipseInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddArc(CGContextRef c, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat endAngle, int clockwise) ;
	 */
	public void addArc(float x, float y, float radius, float startAngle, float endAngle, int clockwise){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddArcToPoint(CGContextRef c, CGFloat x1, CGFloat y1, CGFloat x2, CGFloat y2, CGFloat radius) ;
	 */
	public void addArcToPoint(float x1, float y1, float x2, float y2, float radius){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextAddPath(CGContextRef context, CGPathRef path) ;
	 */
	public void addPath(CGPath path){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextReplacePathWithStrokedPath(CGContextRef c) ;
	 */
	public void replacePathWithStrokedPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGContextIsPathEmpty(CGContextRef context) ;
	 */
	public boolean isPathEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPoint CGContextGetPathCurrentPoint(CGContextRef context) ;
	 */
	public CGPoint getPathCurrentPoint(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGContextGetPathBoundingBox(CGContextRef context) ;
	 */
	public CGRect getPathBoundingBox(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPathRef CGContextCopyPath(CGContextRef context) ;
	 */
	public CGPath copyPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGContextPathContainsPoint(CGContextRef context, CGPoint point, CGPathDrawingMode mode) ;
	 */
	public boolean pathContainsPoint(CGPoint point, int mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawPath(CGContextRef c, CGPathDrawingMode mode) ;
	 */
	public void drawPath(int mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextFillPath(CGContextRef c) ;
	 */
	public void fillPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextEOFillPath(CGContextRef c) ;
	 */
	public void eOFillPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextStrokePath(CGContextRef c) ;
	 */
	public void strokePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextFillRect(CGContextRef c, CGRect rect) ;
	 */
	public void fillRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextFillRects(CGContextRef c, const CGRect rects[], size_t count) ;
	 */
	public void fillRects(Reference<CGRect> rects, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextStrokeRect(CGContextRef c, CGRect rect) ;
	 */
	public void strokeRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextStrokeRectWithWidth(CGContextRef c, CGRect rect, CGFloat width) ;
	 */
	public void strokeRectWithWidth(CGRect rect, float width){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextClearRect(CGContextRef c, CGRect rect) ;
	 */
	public void clearRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextFillEllipseInRect(CGContextRef context, CGRect rect) ;
	 */
	public void fillEllipseInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextStrokeEllipseInRect(CGContextRef context, CGRect rect) ;
	 */
	public void strokeEllipseInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextStrokeLineSegments(CGContextRef c, const CGPoint points[], size_t count) ;
	 */
	public void strokeLineSegments(Reference<CGPoint> points, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextClip(CGContextRef c) ;
	 */
	public void clip(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextEOClip(CGContextRef c) ;
	 */
	public void eOClip(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextClipToMask(CGContextRef c, CGRect rect, CGImageRef mask) ;
	 */
	public void clipToMask(CGRect rect, CGImage mask){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGContextGetClipBoundingBox(CGContextRef c) ;
	 */
	public CGRect getClipBoundingBox(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextClipToRect(CGContextRef c, CGRect rect) ;
	 */
	public void clipToRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextClipToRects(CGContextRef c, const CGRect rects[], size_t count) ;
	 */
	public void clipToRects(Reference<CGRect> rects, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFillColorWithColor(CGContextRef c, CGColorRef color) ;
	 */
	public void setFillColorWithColor(CGColor color){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetStrokeColorWithColor(CGContextRef c, CGColorRef color) ;
	 */
	public void setStrokeColorWithColor(CGColor color){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFillColorSpace(CGContextRef context, CGColorSpaceRef space) ;
	 */
	public void setFillColorSpace(CGColorSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetStrokeColorSpace(CGContextRef context, CGColorSpaceRef space) ;
	 */
	public void setStrokeColorSpace(CGColorSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFillColor(CGContextRef context, const CGFloat components[]) ;
	 */
	public void setFillColor(float[] components){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetStrokeColor(CGContextRef context, const CGFloat components[]) ;
	 */
	public void setStrokeColor(float[] components){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFillPattern(CGContextRef context, CGPatternRef pattern, const CGFloat components[]) ;
	 */
	public void setFillPattern(CGPattern pattern, float[] components){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetStrokePattern(CGContextRef context, CGPatternRef pattern, const CGFloat components[]) ;
	 */
	public void setStrokePattern(CGPattern pattern, float[] components){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetPatternPhase(CGContextRef context, CGSize phase) ;
	 */
	public void setPatternPhase(CGSize phase){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetGrayFillColor(CGContextRef context, CGFloat gray, CGFloat alpha) ;
	 */
	public void setGrayFillColor(float gray, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetGrayStrokeColor(CGContextRef context, CGFloat gray, CGFloat alpha) ;
	 */
	public void setGrayStrokeColor(float gray, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetRGBFillColor(CGContextRef context, CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha) ;
	 */
	public void setRGBFillColor(float red, float green, float blue, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetRGBStrokeColor(CGContextRef context, CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha) ;
	 */
	public void setRGBStrokeColor(float red, float green, float blue, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetCMYKFillColor(CGContextRef context, CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha) ;
	 */
	public void setCMYKFillColor(float cyan, float magenta, float yellow, float black, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetCMYKStrokeColor(CGContextRef context, CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha) ;
	 */
	public void setCMYKStrokeColor(float cyan, float magenta, float yellow, float black, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetRenderingIntent(CGContextRef context, CGColorRenderingIntent intent) ;
	 */
	public void setRenderingIntent(int intent){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawImage(CGContextRef c, CGRect rect, CGImageRef image) ;
	 */
	public void drawImage(CGRect rect, CGImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawTiledImage(CGContextRef c, CGRect rect, CGImageRef image) ;
	 */
	public void drawTiledImage(CGRect rect, CGImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGInterpolationQuality CGContextGetInterpolationQuality(CGContextRef context) ;
	 */
	public int getInterpolationQuality(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetInterpolationQuality(CGContextRef context, CGInterpolationQuality quality) ;
	 */
	public void setInterpolationQuality(int quality){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetShadowWithColor(CGContextRef context, CGSize offset, CGFloat blur, CGColorRef color) ;
	 */
	public void setShadowWithColor(CGSize offset, float blur, CGColor color){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetShadow(CGContextRef context, CGSize offset, CGFloat blur) ;
	 */
	public void setShadow(CGSize offset, float blur){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawLinearGradient(CGContextRef context, CGGradientRef gradient, CGPoint startPoint, CGPoint endPoint, CGGradientDrawingOptions options) ;
	 */
	public void drawLinearGradient(CGGradient gradient, CGPoint startPoint, CGPoint endPoint, int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawRadialGradient(CGContextRef context, CGGradientRef gradient, CGPoint startCenter, CGFloat startRadius, CGPoint endCenter, CGFloat endRadius, CGGradientDrawingOptions options) ;
	 */
	public void drawRadialGradient(CGGradient gradient, CGPoint startCenter, float startRadius, CGPoint endCenter, float endRadius, int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawShading(CGContextRef context, CGShadingRef shading) ;
	 */
	public void drawShading(CGShading shading){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetCharacterSpacing(CGContextRef context, CGFloat spacing) ;
	 */
	public void setCharacterSpacing(float spacing){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetTextPosition(CGContextRef c, CGFloat x, CGFloat y) ;
	 */
	public void setTextPosition(float x, float y){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPoint CGContextGetTextPosition(CGContextRef context) ;
	 */
	public CGPoint getTextPosition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetTextMatrix(CGContextRef c, CGAffineTransform t) ;
	 */
	public void setTextMatrix(CGAffineTransform t){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGContextGetTextMatrix(CGContextRef c) ;
	 */
	public CGAffineTransform getTextMatrix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetTextDrawingMode(CGContextRef c, CGTextDrawingMode mode) ;
	 */
	public void setTextDrawingMode(int mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFont(CGContextRef c, CGFontRef font) ;
	 */
	public void setFont(CGFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetFontSize(CGContextRef c, CGFloat size) ;
	 */
	public void setFontSize(float size){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSelectFont(CGContextRef c, const char *name, CGFloat size, CGTextEncoding textEncoding) ;
	 */
	public void selectFont(byte[] name, float size, int textEncoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextShowGlyphsAtPositions(CGContextRef context, const CGGlyph glyphs[], const CGPoint positions[], size_t count) ;
	 */
	public void showGlyphsAtPositions(short[] glyphs, Reference<CGPoint> positions, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextShowText(CGContextRef c, const char *string, size_t length) ;
	 */
	public void showText(byte[] string, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextShowTextAtPoint(CGContextRef c, CGFloat x, CGFloat y, const char *string, size_t length) ;
	 */
	public void showTextAtPoint(float x, float y, byte[] string, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextShowGlyphs(CGContextRef c, const CGGlyph g[], size_t count) ;
	 */
	public void showGlyphs(short[] g, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextShowGlyphsAtPoint(CGContextRef context, CGFloat x, CGFloat y, const CGGlyph glyphs[], size_t count) ;
	 */
	public void showGlyphsAtPoint(float x, float y, short[] glyphs, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextShowGlyphsWithAdvances(CGContextRef c, const CGGlyph glyphs[], const CGSize advances[], size_t count) ;
	 */
	public void showGlyphsWithAdvances(short[] glyphs, Reference<CGSize> advances, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawPDFPage(CGContextRef c, CGPDFPageRef page) ;
	 */
	public void drawPDFPage(CGPDFPage page){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextBeginPage(CGContextRef c, const CGRect *mediaBox) ;
	 */
	public void beginPage(Reference<CGRect> mediaBox){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextEndPage(CGContextRef c) ;
	 */
	public void endPage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGContextRef CGContextRetain(CGContextRef c) ;
	 */
	public CGContext retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextRelease(CGContextRef c) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextFlush(CGContextRef c) ;
	 */
	public void flush(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSynchronize(CGContextRef c) ;
	 */
	public void synchronize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetShouldAntialias(CGContextRef context, bool shouldAntialias) ;
	 */
	public void setShouldAntialias(boolean shouldAntialias){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetAllowsAntialiasing(CGContextRef context, bool allowsAntialiasing) ;
	 */
	public void setAllowsAntialiasing(boolean allowsAntialiasing){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetShouldSmoothFonts(CGContextRef context, bool shouldSmoothFonts) ;
	 */
	public void setShouldSmoothFonts(boolean shouldSmoothFonts){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetAllowsFontSmoothing(CGContextRef context, bool allowsFontSmoothing) ;
	 */
	public void setAllowsFontSmoothing(boolean allowsFontSmoothing){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetShouldSubpixelPositionFonts(CGContextRef context, bool shouldSubpixelPositionFonts) ;
	 */
	public void setShouldSubpixelPositionFonts(boolean shouldSubpixelPositionFonts){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetAllowsFontSubpixelPositioning(CGContextRef context, bool allowsFontSubpixelPositioning) ;
	 */
	public void setAllowsFontSubpixelPositioning(boolean allowsFontSubpixelPositioning){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetShouldSubpixelQuantizeFonts(CGContextRef context, bool shouldSubpixelQuantizeFonts) ;
	 */
	public void setShouldSubpixelQuantizeFonts(boolean shouldSubpixelQuantizeFonts){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextSetAllowsFontSubpixelQuantization(CGContextRef context, bool allowsFontSubpixelQuantization) ;
	 */
	public void setAllowsFontSubpixelQuantization(boolean allowsFontSubpixelQuantization){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextBeginTransparencyLayer(CGContextRef context, CFDictionaryRef auxiliaryInfo) ;
	 */
	public void beginTransparencyLayer(CFDictionary auxiliaryInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextBeginTransparencyLayerWithRect(CGContextRef context, CGRect rect, CFDictionaryRef auxiliaryInfo) ;
	 */
	public void beginTransparencyLayerWithRect(CGRect rect, CFDictionary auxiliaryInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextEndTransparencyLayer(CGContextRef context) ;
	 */
	public void endTransparencyLayer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGContextGetUserSpaceToDeviceSpaceTransform(CGContextRef context) ;
	 */
	public CGAffineTransform getUserSpaceToDeviceSpaceTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPoint CGContextConvertPointToDeviceSpace(CGContextRef context, CGPoint point) ;
	 */
	public CGPoint convertPointToDeviceSpace(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPoint CGContextConvertPointToUserSpace(CGContextRef context, CGPoint point) ;
	 */
	public CGPoint convertPointToUserSpace(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CGContextConvertSizeToDeviceSpace(CGContextRef context, CGSize size) ;
	 */
	public CGSize convertSizeToDeviceSpace(CGSize size){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CGContextConvertSizeToUserSpace(CGContextRef context, CGSize size) ;
	 */
	public CGSize convertSizeToUserSpace(CGSize size){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGContextConvertRectToDeviceSpace(CGContextRef context, CGRect rect) ;
	 */
	public CGRect convertRectToDeviceSpace(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGContextConvertRectToUserSpace(CGContextRef context, CGRect rect) ;
	 */
	public CGRect convertRectToUserSpace(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawLayerInRect(CGContextRef context, CGRect rect, CGLayerRef layer) ;
	 */
	public void drawLayerInRect(CGRect rect, CGLayer layer){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGContextDrawLayerAtPoint(CGContextRef context, CGPoint point, CGLayerRef layer) ;
	 */
	public void drawLayerAtPoint(CGPoint point, CGLayer layer){
		throw new RuntimeException("Stub");
	}
}
