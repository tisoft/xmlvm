package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITextInput implements org.xmlvm.ios.UITextInput {

	/*
	 * Properties
	 */

	/**
	 * @property(readwrite, copy) UITextRange *selectedTextRange;
	 */
	public UITextRange getSelectedTextRange(){
		return null;
	}
	/**
	 * @property(readwrite, copy) UITextRange *selectedTextRange;
	 */
	public void setSelectedTextRange(UITextRange selectedTextRange){};
	/**
	 * @property(nonatomic, readonly) UITextRange *markedTextRange;
	 */
	public UITextRange getMarkedTextRange(){
		return null;
	}
	/**
	 * @property(nonatomic, copy) NSDictionary *markedTextStyle;
	 */
	public Map getMarkedTextStyle(){
		return null;
	}
	/**
	 * @property(nonatomic, copy) NSDictionary *markedTextStyle;
	 */
	public void setMarkedTextStyle(Map markedTextStyle){};
	/**
	 * @property(nonatomic, readonly) UITextPosition *beginningOfDocument;
	 */
	public UITextPosition getBeginningOfDocument(){
		return null;
	}
	/**
	 * @property(nonatomic, readonly) UITextPosition *endOfDocument;
	 */
	public UITextPosition getEndOfDocument(){
		return null;
	}
	/**
	 * @property(nonatomic, assign) id <UITextInputDelegate> inputDelegate;
	 */
	public org.xmlvm.ios.UITextInputDelegate getInputDelegate(){
		return null;
	}
	/**
	 * @property(nonatomic, assign) id <UITextInputDelegate> inputDelegate;
	 */
	public void setInputDelegate(org.xmlvm.ios.UITextInputDelegate inputDelegate){};
	/**
	 * @property(nonatomic, readonly) id <UITextInputTokenizer> tokenizer;
	 */
	public org.xmlvm.ios.UITextInputTokenizer getTokenizer(){
		return null;
	}
	/**
	 * @property(nonatomic, readonly) UIView *textInputView;
	 */
	public UIView getTextInputView(){
		return null;
	}
	/**
	 * @property(nonatomic) UITextStorageDirection selectionAffinity;
	 */
	public int getSelectionAffinity(){
		return 0;
	}
	/**
	 * @property(nonatomic) UITextStorageDirection selectionAffinity;
	 */
	public void setSelectionAffinity(int selectionAffinity){};
	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)textInRange:(UITextRange *)range;
	 */
	public String textInRange(UITextRange range){
		return null;
	}
	/**
	 * - (void)replaceRange:(UITextRange *)range withText:(NSString *)text;
	 */
	public void replaceRange(UITextRange range, String text){};
	/**
	 * - (void)setMarkedText:(NSString *)markedText selectedRange:(NSRange)selectedRange;
	 */
	public void setMarkedText(String markedText, NSRange selectedRange){};
	/**
	 * - (void)unmarkText;
	 */
	public void unmarkText(){};
	/**
	 * - (UITextRange *)textRangeFromPosition:(UITextPosition *)fromPosition toPosition:(UITextPosition *)toPosition;
	 */
	public UITextRange textRangeFromPosition(UITextPosition fromPosition, UITextPosition toPosition){
		return null;
	}
	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position offset:(NSInteger)offset;
	 */
	public UITextPosition positionFromPosition(UITextPosition position, int offset){
		return null;
	}
	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction offset:(NSInteger)offset;
	 */
	public UITextPosition positionFromPosition(UITextPosition position, int direction, int offset){
		return null;
	}
	/**
	 * - (NSComparisonResult)comparePosition:(UITextPosition *)position toPosition:(UITextPosition *)other;
	 */
	public int comparePosition(UITextPosition position, UITextPosition other){
		return 0;
	}
	/**
	 * - (NSInteger)offsetFromPosition:(UITextPosition *)from toPosition:(UITextPosition *)toPosition;
	 */
	public int offsetFromPosition(UITextPosition from, UITextPosition toPosition){
		return 0;
	}
	/**
	 * - (UITextPosition *)positionWithinRange:(UITextRange *)range farthestInDirection:(UITextLayoutDirection)direction;
	 */
	public UITextPosition positionWithinRangeFarthestInDirection(UITextRange range, int direction){
		return null;
	}
	/**
	 * - (UITextRange *)characterRangeByExtendingPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction;
	 */
	public UITextRange characterRangeByExtendingPosition(UITextPosition position, int direction){
		return null;
	}
	/**
	 * - (UITextWritingDirection)baseWritingDirectionForPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction;
	 */
	public int baseWritingDirectionForPosition(UITextPosition position, int direction){
		return 0;
	}
	/**
	 * - (void)setBaseWritingDirection:(UITextWritingDirection)writingDirection forRange:(UITextRange *)range;
	 */
	public void setBaseWritingDirection(int writingDirection, UITextRange range){};
	/**
	 * - (CGRect)firstRectForRange:(UITextRange *)range;
	 */
	public CGRect firstRectForRange(UITextRange range){
		return null;
	}
	/**
	 * - (CGRect)caretRectForPosition:(UITextPosition *)position;
	 */
	public CGRect caretRectForPosition(UITextPosition position){
		return null;
	}
	/**
	 * - (UITextPosition *)closestPositionToPoint:(CGPoint)point;
	 */
	public UITextPosition closestPositionToPoint(CGPoint point){
		return null;
	}
	/**
	 * - (UITextPosition *)closestPositionToPoint:(CGPoint)point withinRange:(UITextRange *)range;
	 */
	public UITextPosition closestPositionToPoint(CGPoint point, UITextRange range){
		return null;
	}
	/**
	 * - (UITextRange *)characterRangeAtPoint:(CGPoint)point;
	 */
	public UITextRange characterRangeAtPoint(CGPoint point){
		return null;
	}
	/**
	 * - (NSDictionary *)textStylingAtPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction;
	 */
	public Map textStylingAtPosition(UITextPosition position, int direction){
		return null;
	}
	/**
	 * - (UITextPosition *)positionWithinRange:(UITextRange *)range atCharacterOffset:(NSInteger)offset;
	 */
	public UITextPosition positionWithinRangeAtCharacterOffset(UITextRange range, int offset){
		return null;
	}
	/**
	 * - (NSInteger)characterOffsetOfPosition:(UITextPosition *)position withinRange:(UITextRange *)range;
	 */
	public int characterOffsetOfPosition(UITextPosition position, UITextRange range){
		return 0;
	}
	/*
	 * Interface Properties
	 */

	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public int getAutocapitalizationType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public void setAutocapitalizationType(int autocapitalizationType){};
	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public int getAutocorrectionType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public void setAutocorrectionType(int autocorrectionType){};
	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public int getKeyboardType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public void setKeyboardType(int keyboardType){};
	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public int getKeyboardAppearance(){
		return 0;
	}
	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public void setKeyboardAppearance(int keyboardAppearance){};
	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public int getReturnKeyType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public void setReturnKeyType(int returnKeyType){};
	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public boolean getEnablesReturnKeyAutomatically(){
		return false;
	}
	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public void setEnablesReturnKeyAutomatically(boolean enablesReturnKeyAutomatically){};
	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public boolean isSecureTextEntry(){
		return false;
	}
	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public void setSecureTextEntry(boolean secureTextEntry){};}
