package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKMapRect {

	/*
	 * Variables
	 */
	 public MKMapPoint origin;
	 public MKMapSize size;

	/*
	 * Constructors
	 */

	/**
	 * MKMapRect MKMapRectMake(double x, double y, double width, double height);
	 */
	public MKMapRect(double x, double y, double width, double height) {}

	/** Default constructor */
	MKMapRect() {}

	/*
	 * Instance methods
	 */

	/**
	 * double MKMapRectGetMinX(MKMapRect rect);
	 */
	public double getMinX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetMinY(MKMapRect rect);
	 */
	public double getMinY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetMidX(MKMapRect rect);
	 */
	public double getMidX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetMidY(MKMapRect rect);
	 */
	public double getMidY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetMaxX(MKMapRect rect);
	 */
	public double getMaxX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetMaxY(MKMapRect rect);
	 */
	public double getMaxY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetWidth(MKMapRect rect);
	 */
	public double getWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double MKMapRectGetHeight(MKMapRect rect);
	 */
	public double getHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectEqualToRect(MKMapRect rect1, MKMapRect rect2);
	 */
	public boolean equalToRect(MKMapRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectIsNull(MKMapRect rect);
	 */
	public boolean isNull(){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectIsEmpty(MKMapRect rect);
	 */
	public boolean isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2);
	 */
	public MKMapRect union(MKMapRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * MKMapRect MKMapRectIntersection(MKMapRect rect1, MKMapRect rect2);
	 */
	public MKMapRect intersection(MKMapRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * MKMapRect MKMapRectInset(MKMapRect rect, double dx, double dy);
	 */
	public MKMapRect inset(double dx, double dy){
		throw new RuntimeException("Stub");
	}

	/**
	 * MKMapRect MKMapRectOffset(MKMapRect rect, double dx, double dy);
	 */
	public MKMapRect offset(double dx, double dy){
		throw new RuntimeException("Stub");
	}

	/**
	 * void MKMapRectDivide(MKMapRect rect, MKMapRect *slice, MKMapRect *remainder, double amount, CGRectEdge edge);
	 */
	public void divide(Reference<MKMapRect> slice, Reference<MKMapRect> remainder, double amount, int edge){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectContainsPoint(MKMapRect rect, MKMapPoint point);
	 */
	public boolean containsPoint(MKMapPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectContainsRect(MKMapRect rect1, MKMapRect rect2);
	 */
	public boolean containsRect(MKMapRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectIntersectsRect(MKMapRect rect1, MKMapRect rect2);
	 */
	public boolean intersectsRect(MKMapRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * BOOL MKMapRectSpans180thMeridian(MKMapRect rect);
	 */
	public boolean spans180thMeridian(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MKMapRect MKMapRectRemainder(MKMapRect rect);
	 */
	public MKMapRect remainder(){
		throw new RuntimeException("Stub");
	}
}
