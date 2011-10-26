package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSUndoManager extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSUndoManager() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginUndoGrouping;
	 */
	public void beginUndoGrouping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endUndoGrouping;
	 */
	public void endUndoGrouping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)groupingLevel;
	 */
	public int groupingLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)disableUndoRegistration;
	 */
	public void disableUndoRegistration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enableUndoRegistration;
	 */
	public void enableUndoRegistration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isUndoRegistrationEnabled;
	 */
	public boolean isUndoRegistrationEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)groupsByEvent;
	 */
	public boolean groupsByEvent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setGroupsByEvent:(BOOL)groupsByEvent;
	 */
	public void setGroupsByEvent(boolean groupsByEvent){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLevelsOfUndo:(NSUInteger)levels;
	 */
	public void setLevelsOfUndo(int levels){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)levelsOfUndo;
	 */
	public int levelsOfUndo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRunLoopModes:(NSArray *)runLoopModes;
	 */
	public void setRunLoopModes(List runLoopModes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)runLoopModes;
	 */
	public List runLoopModes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)undo;
	 */
	public void undo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)redo;
	 */
	public void redo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)undoNestedGroup;
	 */
	public void undoNestedGroup(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canUndo;
	 */
	public boolean canUndo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canRedo;
	 */
	public boolean canRedo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isUndoing;
	 */
	public boolean isUndoing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isRedoing;
	 */
	public boolean isRedoing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllActions;
	 */
	public void removeAllActions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllActionsWithTarget:(id)target;
	 */
	public void removeAllActionsWithTarget(Object target){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)anObject;
	 */
	public void registerUndoWithTarget(Object target, SEL selector, Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)prepareWithInvocationTarget:(id)target;
	 */
	public Object prepareWithInvocationTarget(Object target){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)undoActionName;
	 */
	public String undoActionName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)redoActionName;
	 */
	public String redoActionName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setActionName:(NSString *)actionName;
	 */
	public void setActionName(String actionName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)undoMenuItemTitle;
	 */
	public String undoMenuItemTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)redoMenuItemTitle;
	 */
	public String redoMenuItemTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)undoMenuTitleForUndoActionName:(NSString *)actionName;
	 */
	public String undoMenuTitleForUndoActionName(String actionName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)redoMenuTitleForUndoActionName:(NSString *)actionName;
	 */
	public String redoMenuTitleForUndoActionName(String actionName){
		throw new RuntimeException("Stub");
	}
}
