package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MFMailComposeViewController extends UINavigationController {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canSendMail ;
	 */
	public static boolean canSendMail(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MFMailComposeViewController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<MFMailComposeViewControllerDelegate> mailComposeDelegate ;
	 */
	public MFMailComposeViewControllerDelegate getMailComposeDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<MFMailComposeViewControllerDelegate> mailComposeDelegate ;
	 */
	public void setMailComposeDelegate(MFMailComposeViewControllerDelegate mailComposeDelegate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setSubject:(NSString *)subject ;
	 */
	public void setSubject(String subject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setToRecipients:(NSArray *)toRecipients ;
	 */
	public void setToRecipients(List toRecipients){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCcRecipients:(NSArray *)ccRecipients ;
	 */
	public void setCcRecipients(List ccRecipients){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setBccRecipients:(NSArray *)bccRecipients ;
	 */
	public void setBccRecipients(List bccRecipients){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMessageBody:(NSString *)body isHTML:(BOOL)isHTML ;
	 */
	public void setMessageBody(String body, boolean isHTML){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addAttachmentData:(NSData *)attachment mimeType:(NSString *)mimeType fileName:(NSString *)filename ;
	 */
	public void addAttachmentData(NSData attachment, String mimeType, String filename){
		throw new RuntimeException("Stub");
	}
}
