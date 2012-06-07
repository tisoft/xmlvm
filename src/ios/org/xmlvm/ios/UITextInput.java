package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITextInput")
public interface UITextInput {

	/*
	 * Properties
	 */

	/**
	 * @property(readwrite, copy) UITextRange *selectedTextRange;
	 */
	public abstract UITextRange getSelectedTextRange();

	/**
	 * @property(readwrite, copy) UITextRange *selectedTextRange;
	 */
	public abstract void setSelectedTextRange(UITextRange selectedTextRange);

	/**
	 * @property(nonatomic, readonly) UITextRange *markedTextRange;
	 */
	public abstract UITextRange getMarkedTextRange();

	/**
	 * @property(nonatomic, copy) NSDictionary *markedTextStyle;
	 */
	public abstract Map getMarkedTextStyle();

	/**
	 * @property(nonatomic, copy) NSDictionary *markedTextStyle;
	 */
	public abstract void setMarkedTextStyle(Map markedTextStyle);

	/**
	 * @property(nonatomic, readonly) UITextPosition *beginningOfDocument;
	 */
	public abstract UITextPosition getBeginningOfDocument();

	/**
	 * @property(nonatomic, readonly) UITextPosition *endOfDocument;
	 */
	public abstract UITextPosition getEndOfDocument();

	/**
	 * @property(nonatomic, assign) id <UITextInputDelegate> inputDelegate;
	 */
	public abstract org.xmlvm.ios.UITextInputDelegate getInputDelegate();

	/**
	 * @property(nonatomic, assign) id <UITextInputDelegate> inputDelegate;
	 */
	public abstract void setInputDelegate(org.xmlvm.ios.UITextInputDelegate inputDelegate);

	/**
	 * @property(nonatomic, readonly) id <UITextInputTokenizer> tokenizer;
	 */
	public abstract org.xmlvm.ios.UITextInputTokenizer getTokenizer();

	/**
	 * @property(nonatomic, readonly) UIView *textInputView;
	 */
	public abstract UIView getTextInputView();

	/**
	 * @property(nonatomic) UITextStorageDirection selectionAffinity;
	 */
	public abstract int getSelectionAffinity();

	/**
	 * @property(nonatomic) UITextStorageDirection selectionAffinity;
	 */
	public abstract void setSelectionAffinity(int selectionAffinity);

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)textInRange:(UITextRange *)range;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textInRange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange")
	})
	public abstract String textInRange(UITextRange range);

	/**
	 * - (void)replaceRange:(UITextRange *)range withText:(NSString *)text;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "replaceRange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "withText")
	})
	public abstract void replaceRange(UITextRange range, String text);

	/**
	 * - (void)setMarkedText:(NSString *)markedText selectedRange:(NSRange)selectedRange;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "setMarkedText", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSRange", isStruct = true, name = "selectedRange")
	})
	public abstract void setMarkedText(String markedText, NSRange selectedRange);

	/**
	 * - (void)unmarkText;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unmarkText", params = {
	})
	public abstract void unmarkText();

	/**
	 * - (UITextRange *)textRangeFromPosition:(UITextPosition *)fromPosition toPosition:(UITextPosition *)toPosition;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textRangeFromPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition", name = "toPosition")
	})
	public abstract UITextRange textRangeFromPosition(UITextPosition fromPosition, UITextPosition toPosition);

	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position offset:(NSInteger)offset;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "positionFromPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "offset")
	})
	public abstract UITextPosition positionFromPosition(UITextPosition position, int offset);

	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction offset:(NSInteger)offset;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "positionFromPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "offset")
	})
	public abstract UITextPosition positionFromPosition(UITextPosition position, int direction, int offset);

	/**
	 * - (NSComparisonResult)comparePosition:(UITextPosition *)position toPosition:(UITextPosition *)other;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "comparePosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition", name = "toPosition")
	})
	public abstract int comparePosition(UITextPosition position, UITextPosition other);

	/**
	 * - (NSInteger)offsetFromPosition:(UITextPosition *)from toPosition:(UITextPosition *)toPosition;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "offsetFromPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition", name = "toPosition")
	})
	public abstract int offsetFromPosition(UITextPosition from, UITextPosition toPosition);

	/**
	 * - (UITextPosition *)positionWithinRange:(UITextRange *)range farthestInDirection:(UITextLayoutDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "positionWithinRange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "farthestInDirection")
	})
	public abstract UITextPosition positionWithinRangeFarthestInDirection(UITextRange range, int direction);

	/**
	 * - (UITextRange *)characterRangeByExtendingPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "characterRangeByExtendingPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract UITextRange characterRangeByExtendingPosition(UITextPosition position, int direction);

	/**
	 * - (UITextWritingDirection)baseWritingDirectionForPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "baseWritingDirectionForPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract int baseWritingDirectionForPosition(UITextPosition position, int direction);

	/**
	 * - (void)setBaseWritingDirection:(UITextWritingDirection)writingDirection forRange:(UITextRange *)range;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "setBaseWritingDirection", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange", name = "forRange")
	})
	public abstract void setBaseWritingDirection(int writingDirection, UITextRange range);

	/**
	 * - (CGRect)firstRectForRange:(UITextRange *)range;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "firstRectForRange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange")
	})
	public abstract CGRect firstRectForRange(UITextRange range);

	/**
	 * - (CGRect)caretRectForPosition:(UITextPosition *)position;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "caretRectForPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition")
	})
	public abstract CGRect caretRectForPosition(UITextPosition position);

	/**
	 * - (UITextPosition *)closestPositionToPoint:(CGPoint)point;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "closestPositionToPoint", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CGPoint", isStruct = true)
	})
	public abstract UITextPosition closestPositionToPoint(CGPoint point);

	/**
	 * - (UITextPosition *)closestPositionToPoint:(CGPoint)point withinRange:(UITextRange *)range;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "closestPositionToPoint", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CGPoint", isStruct = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange", name = "withinRange")
	})
	public abstract UITextPosition closestPositionToPoint(CGPoint point, UITextRange range);

	/**
	 * - (UITextRange *)characterRangeAtPoint:(CGPoint)point;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "characterRangeAtPoint", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CGPoint", isStruct = true)
	})
	public abstract UITextRange characterRangeAtPoint(CGPoint point);

	/**
	 * - (NSDictionary *)textStylingAtPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textStylingAtPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract Map textStylingAtPosition(UITextPosition position, int direction);

	/**
	 * - (UITextPosition *)positionWithinRange:(UITextRange *)range atCharacterOffset:(NSInteger)offset;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "positionWithinRange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "atCharacterOffset")
	})
	public abstract UITextPosition positionWithinRangeAtCharacterOffset(UITextRange range, int offset);

	/**
	 * - (NSInteger)characterOffsetOfPosition:(UITextPosition *)position withinRange:(UITextRange *)range;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "characterOffsetOfPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextRange", name = "withinRange")
	})
	public abstract int characterOffsetOfPosition(UITextPosition position, UITextRange range);

	/*
	 * Interface Properties
	 */

	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public abstract int getAutocapitalizationType();

	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public abstract void setAutocapitalizationType(int autocapitalizationType);

	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public abstract int getAutocorrectionType();

	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public abstract void setAutocorrectionType(int autocorrectionType);

	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public abstract int getKeyboardType();

	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public abstract void setKeyboardType(int keyboardType);

	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public abstract int getKeyboardAppearance();

	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public abstract void setKeyboardAppearance(int keyboardAppearance);

	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public abstract int getReturnKeyType();

	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public abstract void setReturnKeyType(int returnKeyType);

	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public abstract boolean getEnablesReturnKeyAutomatically();

	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public abstract void setEnablesReturnKeyAutomatically(boolean enablesReturnKeyAutomatically);

	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public abstract boolean isSecureTextEntry();

	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public abstract void setSecureTextEntry(boolean secureTextEntry);
}
