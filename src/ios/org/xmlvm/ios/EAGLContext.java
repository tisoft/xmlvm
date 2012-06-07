package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EAGLContext extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL) setCurrentContext:(EAGLContext*) context;
	 */
	public static boolean setCurrentContext(EAGLContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (EAGLContext*) currentContext;
	 */
	public static EAGLContext  currentContext(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id) initWithAPI:(EAGLRenderingAPI) api;
	 */
	public EAGLContext(int api) {}

	/**
	 * - (id) initWithAPI:(EAGLRenderingAPI) api sharegroup:(EAGLSharegroup*) sharegroup;
	 */
	public EAGLContext(int api, EAGLSharegroup sharegroup) {}

	/** Default constructor */
	public EAGLContext() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) EAGLRenderingAPI API;
	 */
	public int getAPI(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) EAGLSharegroup* sharegroup;
	 */
	public EAGLSharegroup getSharegroup(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)renderbufferStorage:(NSUInteger)target fromDrawable:(id<EAGLDrawable>)drawable;
	 */
	public boolean renderbufferStorage(int target, org.xmlvm.ios.EAGLDrawable drawable){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentRenderbuffer:(NSUInteger)target;
	 */
	public boolean presentRenderbuffer(int target){
		throw new RuntimeException("Stub");
	}
}
