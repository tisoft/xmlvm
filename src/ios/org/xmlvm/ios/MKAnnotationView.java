package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKAnnotationView extends UIView {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier;
	 */
	public MKAnnotationView(MKAnnotation annotation, String reuseIdentifier) {}

	/** Default constructor */
	MKAnnotationView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *reuseIdentifier;
	 */
	public String getReuseIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) id <MKAnnotation> annotation;
	 */
	public MKAnnotation getAnnotation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) id <MKAnnotation> annotation;
	 */
	public void setAnnotation(MKAnnotation annotation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) UIImage *image;
	 */
	public UIImage getImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) UIImage *image;
	 */
	public void setImage(UIImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint centerOffset;
	 */
	public CGPoint getCenterOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint centerOffset;
	 */
	public void setCenterOffset(CGPoint centerOffset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint calloutOffset;
	 */
	public CGPoint getCalloutOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint calloutOffset;
	 */
	public void setCalloutOffset(CGPoint calloutOffset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isHighlighted) BOOL highlighted;
	 */
	public boolean isHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isHighlighted) BOOL highlighted;
	 */
	public void setHighlighted(boolean highlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isSelected) BOOL selected;
	 */
	public boolean isSelected(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isSelected) BOOL selected;
	 */
	public void setSelected(boolean selected){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL canShowCallout;
	 */
	public boolean getCanShowCallout(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL canShowCallout;
	 */
	public void setCanShowCallout(boolean canShowCallout){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) UIView *leftCalloutAccessoryView;
	 */
	public UIView getLeftCalloutAccessoryView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) UIView *leftCalloutAccessoryView;
	 */
	public void setLeftCalloutAccessoryView(UIView leftCalloutAccessoryView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) UIView *rightCalloutAccessoryView;
	 */
	public UIView getRightCalloutAccessoryView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) UIView *rightCalloutAccessoryView;
	 */
	public void setRightCalloutAccessoryView(UIView rightCalloutAccessoryView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isDraggable) BOOL draggable ;
	 */
	public boolean isDraggable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isDraggable) BOOL draggable ;
	 */
	public void setDraggable(boolean draggable){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKAnnotationViewDragState dragState ;
	 */
	public int getDragState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKAnnotationViewDragState dragState ;
	 */
	public void setDragState(int dragState){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)prepareForReuse;
	 */
	public void prepareForReuse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSelected:(BOOL)selected animated:(BOOL)animated;
	 */
	public void setSelected(boolean selected, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDragState:(MKAnnotationViewDragState)newDragState animated:(BOOL)animated ;
	 */
	public void setDragState(int newDragState, boolean animated){
		throw new RuntimeException("Stub");
	}
}
