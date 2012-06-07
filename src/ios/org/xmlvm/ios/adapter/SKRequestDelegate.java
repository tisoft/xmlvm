package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class SKRequestDelegate implements org.xmlvm.ios.SKRequestDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)requestDidFinish:(SKRequest *)request ;
	 */
	public void requestDidFinish(SKRequest request){};
	/**
	 * - (void)request:(SKRequest *)request didFailWithError:(NSError *)error ;
	 */
	public void request(SKRequest request, NSError error){};}
