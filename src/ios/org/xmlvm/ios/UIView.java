package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIView extends UIResponder {

	/*
	 * Static methods
	 */

	/**
	 * + (Class)layerClass;
	 */
	public static Class layerClass(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)beginAnimations:(NSString *)animationID context:(void *)context;
	 */
	public static void beginAnimations(String animationID, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)commitAnimations;
	 */
	public static void commitAnimations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationDelegate:(id)delegate;
	 */
	public static void setAnimationDelegate(Object delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationWillStartSelector:(SEL)selector;
	 */
	public static void setAnimationWillStartSelector(SEL selector){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationDidStopSelector:(SEL)selector;
	 */
	public static void setAnimationDidStopSelector(SEL selector){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationDuration:(NSTimeInterval)duration;
	 */
	public static void setAnimationDuration(double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationDelay:(NSTimeInterval)delay;
	 */
	public static void setAnimationDelay(double delay){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationStartDate:(NSDate *)startDate;
	 */
	public static void setAnimationStartDate(NSDate startDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationCurve:(UIViewAnimationCurve)curve;
	 */
	public static void setAnimationCurve(int curve){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationRepeatCount:(float)repeatCount;
	 */
	public static void setAnimationRepeatCount(float repeatCount){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationRepeatAutoreverses:(BOOL)repeatAutoreverses;
	 */
	public static void setAnimationRepeatAutoreverses(boolean repeatAutoreverses){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationBeginsFromCurrentState:(BOOL)fromCurrentState;
	 */
	public static void setAnimationBeginsFromCurrentState(boolean fromCurrentState){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationTransition:(UIViewAnimationTransition)transition forView:(UIView *)view cache:(BOOL)cache;
	 */
	public static void setAnimationTransition(int transition, UIView view, boolean cache){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationsEnabled:(BOOL)enabled;
	 */
	public static void setAnimationsEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)areAnimationsEnabled;
	 */
	public static boolean areAnimationsEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion ;
	 */
	public static void animateWithDuration(double duration, double delay, int options, Object animations, Object completion){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion ;
	 */
	public static void animateWithDuration(double duration, Object animations, Object completion){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations ;
	 */
	public static void animateWithDuration(double duration, Object animations){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)transitionWithView:(UIView *)view duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion ;
	 */
	public static void transitionWithView(UIView view, double duration, int options, Object animations, Object completion){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)transitionFromView:(UIView *)fromView toView:(UIView *)toView duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion ;
	 */
	public static void transitionFromView(UIView fromView, UIView toView, double duration, int options, Object completion){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithFrame:(CGRect)frame;
	 */
	public UIView(CGRect frame) {}

	/** Default constructor */
	UIView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
	 */
	public boolean isUserInteractionEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
	 */
	public void setUserInteractionEnabled(boolean userInteractionEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger tag;
	 */
	public int getTag(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger tag;
	 */
	public void setTag(int tag){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) CALayer *layer;
	 */
	public CALayer getLayer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect frame;
	 */
	public CGRect getFrame(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect frame;
	 */
	public void setFrame(CGRect frame){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect bounds;
	 */
	public CGRect getBounds(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect bounds;
	 */
	public void setBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint center;
	 */
	public CGPoint getCenter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint center;
	 */
	public void setCenter(CGPoint center){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform transform;
	 */
	public CGAffineTransform getTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform transform;
	 */
	public void setTransform(CGAffineTransform transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat contentScaleFactor ;
	 */
	public float getContentScaleFactor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat contentScaleFactor ;
	 */
	public void setContentScaleFactor(float contentScaleFactor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isMultipleTouchEnabled) BOOL multipleTouchEnabled;
	 */
	public boolean isMultipleTouchEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isMultipleTouchEnabled) BOOL multipleTouchEnabled;
	 */
	public void setMultipleTouchEnabled(boolean multipleTouchEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isExclusiveTouch) BOOL exclusiveTouch;
	 */
	public boolean isExclusiveTouch(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isExclusiveTouch) BOOL exclusiveTouch;
	 */
	public void setExclusiveTouch(boolean exclusiveTouch){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL autoresizesSubviews;
	 */
	public boolean getAutoresizesSubviews(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL autoresizesSubviews;
	 */
	public void setAutoresizesSubviews(boolean autoresizesSubviews){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIViewAutoresizing autoresizingMask;
	 */
	public int getAutoresizingMask(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIViewAutoresizing autoresizingMask;
	 */
	public void setAutoresizingMask(int autoresizingMask){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIView *superview;
	 */
	public UIView getSuperview(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,copy) NSArray *subviews;
	 */
	public List getSubviews(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIWindow *window;
	 */
	public UIWindow getWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL clipsToBounds;
	 */
	public boolean getClipsToBounds(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL clipsToBounds;
	 */
	public void setClipsToBounds(boolean clipsToBounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) UIColor *backgroundColor;
	 */
	public UIColor getBackgroundColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) UIColor *backgroundColor;
	 */
	public void setBackgroundColor(UIColor backgroundColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat alpha;
	 */
	public float getAlpha(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat alpha;
	 */
	public void setAlpha(float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isOpaque) BOOL opaque;
	 */
	public boolean isOpaque(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isOpaque) BOOL opaque;
	 */
	public void setOpaque(boolean opaque){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL clearsContextBeforeDrawing;
	 */
	public boolean getClearsContextBeforeDrawing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL clearsContextBeforeDrawing;
	 */
	public void setClearsContextBeforeDrawing(boolean clearsContextBeforeDrawing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHidden) BOOL hidden;
	 */
	public boolean isHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHidden) BOOL hidden;
	 */
	public void setHidden(boolean hidden){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIViewContentMode contentMode;
	 */
	public int getContentMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIViewContentMode contentMode;
	 */
	public void setContentMode(int contentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect contentStretch ;
	 */
	public CGRect getContentStretch(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect contentStretch ;
	 */
	public void setContentStretch(CGRect contentStretch){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *gestureRecognizers ;
	 */
	public List getGestureRecognizers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *gestureRecognizers ;
	 */
	public void setGestureRecognizers(List gestureRecognizers){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewPrintFormatter *)viewPrintFormatter;
	 */
	public UIViewPrintFormatter viewPrintFormatter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawRect:(CGRect)rect forViewPrintFormatter:(UIViewPrintFormatter *)formatter;
	 */
	public void drawRect(CGRect rect, UIViewPrintFormatter formatter){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)endEditing:(BOOL)force;
	 */
	public boolean endEditing(boolean force){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event;
	 */
	public UIView hitTest(CGPoint point, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event;
	 */
	public boolean pointInside(CGPoint point, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)convertPoint:(CGPoint)point toView:(UIView *)view;
	 */
	public CGPoint convertPointToView(CGPoint point, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)convertPoint:(CGPoint)point fromView:(UIView *)view;
	 */
	public CGPoint convertPointFromView(CGPoint point, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)convertRect:(CGRect)rect toView:(UIView *)view;
	 */
	public CGRect convertRectToView(CGRect rect, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)convertRect:(CGRect)rect fromView:(UIView *)view;
	 */
	public CGRect convertRectFromView(CGRect rect, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)sizeThatFits:(CGSize)size;
	 */
	public CGSize sizeThatFits(CGSize size){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sizeToFit;
	 */
	public void sizeToFit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFromSuperview;
	 */
	public void removeFromSuperview(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;
	 */
	public void insertSubview(UIView view, int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)exchangeSubviewAtIndex:(NSInteger)index1 withSubviewAtIndex:(NSInteger)index2;
	 */
	public void exchangeSubviewAtIndex(int index1, int index2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addSubview:(UIView *)view;
	 */
	public void addSubview(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;
	 */
	public void insertSubviewBelowSubview(UIView view, UIView siblingSubview){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview;
	 */
	public void insertSubviewAboveSubview(UIView view, UIView siblingSubview){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)bringSubviewToFront:(UIView *)view;
	 */
	public void bringSubviewToFront(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sendSubviewToBack:(UIView *)view;
	 */
	public void sendSubviewToBack(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didAddSubview:(UIView *)subview;
	 */
	public void didAddSubview(UIView subview){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willRemoveSubview:(UIView *)subview;
	 */
	public void willRemoveSubview(UIView subview){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willMoveToSuperview:(UIView *)newSuperview;
	 */
	public void willMoveToSuperview(UIView newSuperview){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didMoveToSuperview;
	 */
	public void didMoveToSuperview(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willMoveToWindow:(UIWindow *)newWindow;
	 */
	public void willMoveToWindow(UIWindow newWindow){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didMoveToWindow;
	 */
	public void didMoveToWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isDescendantOfView:(UIView *)view;
	 */
	public boolean isDescendantOfView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIView *)viewWithTag:(NSInteger)tag;
	 */
	public UIView viewWithTag(int tag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNeedsLayout;
	 */
	public void setNeedsLayout(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)layoutIfNeeded;
	 */
	public void layoutIfNeeded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)layoutSubviews;
	 */
	public void layoutSubviews(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawRect:(CGRect)rect;
	 */
	public void drawRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNeedsDisplay;
	 */
	public void setNeedsDisplay(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNeedsDisplayInRect:(CGRect)rect;
	 */
	public void setNeedsDisplayInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer ;
	 */
	public void addGestureRecognizer(UIGestureRecognizer gestureRecognizer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer ;
	 */
	public void removeGestureRecognizer(UIGestureRecognizer gestureRecognizer){
		throw new RuntimeException("Stub");
	}
}
