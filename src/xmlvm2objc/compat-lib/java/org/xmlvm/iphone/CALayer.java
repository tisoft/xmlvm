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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly(references = { NSArray.class })
public class CALayer extends NSObject {

    private HashMap<String, CAAnimation> animation;
    private UIView                       delegate;
    private CGPoint                      anchorPoint;


    public static CALayer layer() {
        return new CALayer();
    }

    public CALayer() {
        animation = new HashMap<String, CAAnimation>();
        anchorPoint = new CGPoint(0.5f, 0.5f);
    }

    /**
     * @propertyCGRect bounds;
     */
    public CGRect getBounds(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGRect bounds;
     */
    public void setBounds(CGRect bounds){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGPoint position;
     */
    public CGPoint getPosition(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGPoint position;
     */
    public void setPosition(CGPoint position){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat zPosition;
     */
    public float getZPosition(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat zPosition;
     */
    public void setZPosition(float zPosition){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGPoint anchorPoint;
     */
    public CGPoint getAnchorPoint(){
        return anchorPoint;
    }

    /**
     * @propertyCGPoint anchorPoint;
     */
    public void setAnchorPoint(CGPoint anchorPoint){
        this.anchorPoint = anchorPoint;
    }

    /**
     * @propertyCGFloat anchorPointZ;
     */
    public float getAnchorPointZ(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat anchorPointZ;
     */
    public void setAnchorPointZ(float anchorPointZ){
        throw new RuntimeException("Stub");
    }

//    /**
//     * @propertyCATransform3D transform;
//     */
//    public CATransform3D getTransform(){
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * @propertyCATransform3D transform;
//     */
//    public void setTransform(CATransform3D transform){
//        throw new RuntimeException("Stub");
//    }

    /**
     * @propertyCGRect frame;
     */
    public CGRect getFrame(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGRect frame;
     */
    public void setFrame(CGRect frame){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isHidden) BOOL hidden;
     */
    public boolean isHidden(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isHidden) BOOL hidden;
     */
    public void setHidden(boolean hidden){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isDoubleSided) BOOL doubleSided;
     */
    public boolean isDoubleSided(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isDoubleSided) BOOL doubleSided;
     */
    public void setDoubleSided(boolean doubleSided){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isGeometryFlipped) BOOL geometryFlipped;
     */
    public boolean isGeometryFlipped(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isGeometryFlipped) BOOL geometryFlipped;
     */
    public void setGeometryFlipped(boolean geometryFlipped){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(readonly) CALayer *superlayer;
     */
    public CALayer getSuperlayer(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSArray *sublayers;
     */
    public List<CALayer> getSublayers(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSArray *sublayers;
     */
    public void setSublayers(List<CALayer> sublayers){
        throw new RuntimeException("Stub");
    }

//    /**
//     * @propertyCATransform3D sublayerTransform;
//     */
//    public CATransform3D getSublayerTransform(){
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * @propertyCATransform3D sublayerTransform;
//     */
//    public void setSublayerTransform(CATransform3D sublayerTransform){
//        throw new RuntimeException("Stub");
//    }

    /**
     * @property(retain) CALayer *mask;
     */
    public CALayer getMask(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(retain) CALayer *mask;
     */
    public void setMask(CALayer mask){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyBOOL masksToBounds;
     */
    public boolean getMasksToBounds(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyBOOL masksToBounds;
     */
    public void setMasksToBounds(boolean masksToBounds){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(retain) id contents;
     */
    public Object getContents(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(retain) id contents;
     */
    public void setContents(Object contents){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGRect contentsRect;
     */
    public CGRect getContentsRect(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGRect contentsRect;
     */
    public void setContentsRect(CGRect contentsRect){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *contentsGravity;
     */
    public String getContentsGravity(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *contentsGravity;
     */
    public void setContentsGravity(String contentsGravity){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat contentsScale;
     */
    public float getContentsScale(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat contentsScale;
     */
    public void setContentsScale(float contentsScale){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGRect contentsCenter;
     */
    public CGRect getContentsCenter(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGRect contentsCenter;
     */
    public void setContentsCenter(CGRect contentsCenter){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *minificationFilter, *magnificationFilter;
     */
    public String getMagnificationFilter(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *minificationFilter, *magnificationFilter;
     */
    public void setMagnificationFilter(String magnificationFilter){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *minificationFilter, *magnificationFilter;
     */
    public String getMinificationFilter(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *minificationFilter, *magnificationFilter;
     */
    public void setMinificationFilter(String minificationFilter){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyfloat minificationFilterBias;
     */
    public float getMinificationFilterBias(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyfloat minificationFilterBias;
     */
    public void setMinificationFilterBias(float minificationFilterBias){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isOpaque) BOOL opaque;
     */
    public boolean isOpaque(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(getter=isOpaque) BOOL opaque;
     */
    public void setOpaque(boolean opaque){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyBOOL needsDisplayOnBoundsChange;
     */
    public boolean getNeedsDisplayOnBoundsChange(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyBOOL needsDisplayOnBoundsChange;
     */
    public void setNeedsDisplayOnBoundsChange(boolean needsDisplayOnBoundsChange){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyunsigned int edgeAntialiasingMask;
     */
    public int getEdgeAntialiasingMask(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyunsigned int edgeAntialiasingMask;
     */
    public void setEdgeAntialiasingMask(int edgeAntialiasingMask){
        throw new RuntimeException("Stub");
    }

//    /**
//     * @propertyCGColorRef backgroundColor;
//     */
//    public CGColor getBackgroundColor(){
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * @propertyCGColorRef backgroundColor;
//     */
//    public void setBackgroundColor(CGColor backgroundColor){
//        throw new RuntimeException("Stub");
//    }

    /**
     * @propertyCGFloat cornerRadius;
     */
    public float getCornerRadius(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat cornerRadius;
     */
    public void setCornerRadius(float cornerRadius){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat borderWidth;
     */
    public float getBorderWidth(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat borderWidth;
     */
    public void setBorderWidth(float borderWidth){
        throw new RuntimeException("Stub");
    }

//    /**
//     * @propertyCGColorRef borderColor;
//     */
//    public CGColor getBorderColor(){
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * @propertyCGColorRef borderColor;
//     */
//    public void setBorderColor(CGColor borderColor){
//        throw new RuntimeException("Stub");
//    }

    /**
     * @propertyfloat opacity;
     */
    public float getOpacity(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyfloat opacity;
     */
    public void setOpacity(float opacity){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(retain) id compositingFilter;
     */
    public Object getCompositingFilter(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(retain) id compositingFilter;
     */
    public void setCompositingFilter(Object compositingFilter){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSArray *filters;
     */
    public List getFilters(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSArray *filters;
     */
    public void setFilters(List filters){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSArray *backgroundFilters;
     */
    public List getBackgroundFilters(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSArray *backgroundFilters;
     */
    public void setBackgroundFilters(List backgroundFilters){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyBOOL shouldRasterize;
     */
    public boolean getShouldRasterize(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyBOOL shouldRasterize;
     */
    public void setShouldRasterize(boolean shouldRasterize){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat rasterizationScale;
     */
    public float getRasterizationScale(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat rasterizationScale;
     */
    public void setRasterizationScale(float rasterizationScale){
        throw new RuntimeException("Stub");
    }

//    /**
//     * @propertyCGColorRef shadowColor;
//     */
//    public CGColor getShadowColor(){
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * @propertyCGColorRef shadowColor;
//     */
//    public void setShadowColor(CGColor shadowColor){
//        throw new RuntimeException("Stub");
//    }

    /**
     * @propertyfloat shadowOpacity;
     */
    public float getShadowOpacity(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyfloat shadowOpacity;
     */
    public void setShadowOpacity(float shadowOpacity){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGSize shadowOffset;
     */
    public CGSize getShadowOffset(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGSize shadowOffset;
     */
    public void setShadowOffset(CGSize shadowOffset){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat shadowRadius;
     */
    public float getShadowRadius(){
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyCGFloat shadowRadius;
     */
    public void setShadowRadius(float shadowRadius){
        throw new RuntimeException("Stub");
    }

//    /**
//     * @propertyCGPathRef shadowPath;
//     */
//    public CGPath getShadowPath(){
//        throw new RuntimeException("Stub");
//    }
//
//    /**
//     * @propertyCGPathRef shadowPath;
//     */
//    public void setShadowPath(CGPath shadowPath){
//        throw new RuntimeException("Stub");
//    }

    /**
     * @property(copy) NSDictionary *actions;
     */
    public NSDictionary getActions(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSDictionary *actions;
     */
    public void setActions(NSDictionary actions){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *name;
     */
    public String getName(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSString *name;
     */
    public void setName(String name){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(assign) id delegate;
     */
    public UIView getDelegate(){
        return delegate;
    }

    /**
     * @property(assign) id delegate;
     */
    public void setDelegate(UIView delegate){
        this.delegate = delegate;
    }

    /**
     * @property(copy) NSDictionary *style;
     */
    public NSDictionary getStyle(){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(copy) NSDictionary *style;
     */
    public void setStyle(NSDictionary style){
        throw new RuntimeException("Stub");
    }

    /**
     * @property(readonly) CGRect visibleRect;
     */
    public CGRect getVisibleRect(){
        throw new RuntimeException("Stub");
    }

    /*
     * Instance methods
     */

    /**
     * - (id)presentationLayer;
     */
    public CALayer presentationLayer(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (id)modelLayer;
     */
    public Object modelLayer(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)shouldArchiveValueForKey:(NSString *)key;
     */
    public boolean shouldArchiveValueForKey(String key){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGAffineTransform)affineTransform;
     */
    public CGAffineTransform affineTransform(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)setAffineTransform:(CGAffineTransform)m;
     */
    public void setAffineTransform(CGAffineTransform m){
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)contentsAreFlipped;
     */
    public boolean contentsAreFlipped(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)removeFromSuperlayer;
     */
    public void removeFromSuperlayer(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)addSublayer:(CALayer *)layer;
     */
    public void addSublayer(CALayer layer){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)insertSublayer:(CALayer *)layer atIndex:(unsigned)idx;
     */
    public void insertSublayer(CALayer layer, int idx){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)insertSublayer:(CALayer *)layer below:(CALayer *)sibling;
     */
    public void insertSublayerBelow(CALayer layer, CALayer sibling){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)insertSublayer:(CALayer *)layer above:(CALayer *)sibling;
     */
    public void insertSublayerAbove(CALayer layer, CALayer sibling){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)replaceSublayer:(CALayer *)layer with:(CALayer *)layer2;
     */
    public void replaceSublayer(CALayer layer, CALayer layer2){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGPoint)convertPoint:(CGPoint)p fromLayer:(CALayer *)l;
     */
    public CGPoint convertPointFromLayer(CGPoint p, CALayer l){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGPoint)convertPoint:(CGPoint)p toLayer:(CALayer *)l;
     */
    public CGPoint convertPointToLayer(CGPoint p, CALayer l){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGRect)convertRect:(CGRect)r fromLayer:(CALayer *)l;
     */
    public CGRect convertRectFromLayer(CGRect r, CALayer l){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGRect)convertRect:(CGRect)r toLayer:(CALayer *)l;
     */
    public CGRect convertRectToLayer(CGRect r, CALayer l){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CFTimeInterval)convertTime:(CFTimeInterval)t fromLayer:(CALayer *)l;
     */
    public double convertTimeFromLayer(double t, CALayer l){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CFTimeInterval)convertTime:(CFTimeInterval)t toLayer:(CALayer *)l;
     */
    public double convertTimeToLayer(double t, CALayer l){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CALayer *)hitTest:(CGPoint)p;
     */
    public CALayer hitTest(CGPoint p){
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)containsPoint:(CGPoint)p;
     */
    public boolean containsPoint(CGPoint p){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)display;
     */
    public void display(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)setNeedsDisplay;
     */
    public void setNeedsDisplay(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)setNeedsDisplayInRect:(CGRect)r;
     */
    public void setNeedsDisplayInRect(CGRect r){
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)needsDisplay;
     */
    public boolean needsDisplay(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)displayIfNeeded;
     */
    public void displayIfNeeded(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)drawInContext:(CGContextRef)ctx;
     */
    public void drawInContext(CGContext ctx){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)renderInContext:(CGContextRef)ctx;
     */
    public void renderInContext(CGContext ctx){
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGSize)preferredFrameSize;
     */
    public CGSize preferredFrameSize(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)setNeedsLayout;
     */
    public void setNeedsLayout(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)needsLayout;
     */
    public boolean needsLayout(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)layoutIfNeeded;
     */
    public void layoutIfNeeded(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)layoutSublayers;
     */
    public void layoutSublayers(){
        throw new RuntimeException("Stub");
    }

    /**
     * - (id<CAAction>)actionForKey:(NSString *)event;
     */
    public CAAction actionForKey(String event){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)addAnimation:(CAAnimation *)anim forKey:(NSString *)key;
     */
    public void addAnimation(CAAnimation anim, String key){
        this.animation.put(key, anim);
    }

    /**
     * - (void)removeAllAnimations;
     */
    public void removeAllAnimations(){
        animation.clear();
    }

    /**
     * - (void)removeAnimationForKey:(NSString *)key;
     */
    public void removeAnimationForKey(String key){
        animation.remove(key);
    }

    /**
     * - (NSArray *)animationKeys;
     */
    public List<String> animationKeys(){
        return new ArrayList<String>(animation.keySet());
    }

    /**
     * - (CAAnimation *)animationForKey:(NSString *)key;
     */
    public CAAnimation animationForKey(String key){
        return animation.get(key);
    }

    /**
     * - (void)scrollPoint:(CGPoint)p;
     */
    public void scrollPoint(CGPoint p){
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)scrollRectToVisible:(CGRect)r;
     */
    public void scrollRectToVisible(CGRect r){
        throw new RuntimeException("Stub");
    }
}
