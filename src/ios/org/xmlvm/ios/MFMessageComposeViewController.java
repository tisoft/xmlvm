package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MFMessageComposeViewController extends UINavigationController {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canSendText ;
	 */
	public static boolean canSendText(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MFMessageComposeViewController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<MFMessageComposeViewControllerDelegate> messageComposeDelegate ;
	 */
	public MFMessageComposeViewControllerDelegate getMessageComposeDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<MFMessageComposeViewControllerDelegate> messageComposeDelegate ;
	 */
	public void setMessageComposeDelegate(MFMessageComposeViewControllerDelegate messageComposeDelegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *recipients;
	 */
	public List getRecipients(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *recipients;
	 */
	public void setRecipients(List recipients){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *body;
	 */
	public String getBody(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *body;
	 */
	public void setBody(String body){
		throw new RuntimeException("Stub");
	}
}
