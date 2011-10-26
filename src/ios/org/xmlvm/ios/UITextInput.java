package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
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
	public abstract UITextInputDelegate getInputDelegate();

	/**
	 * @property(nonatomic, assign) id <UITextInputDelegate> inputDelegate;
	 */
	public abstract void setInputDelegate(UITextInputDelegate inputDelegate);

	/**
	 * @property(nonatomic, readonly) id <UITextInputTokenizer> tokenizer;
	 */
	public abstract UITextInputTokenizer getTokenizer();

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
	public abstract String textInRange(UITextRange range);

	/**
	 * - (void)replaceRange:(UITextRange *)range withText:(NSString *)text;
	 */
	public abstract void replaceRange(UITextRange range, String text);

	/**
	 * - (void)setMarkedText:(NSString *)markedText selectedRange:(NSRange)selectedRange;
	 */
	public abstract void setMarkedText(String markedText, NSRange selectedRange);

	/**
	 * - (void)unmarkText;
	 */
	public abstract void unmarkText();

	/**
	 * - (UITextRange *)textRangeFromPosition:(UITextPosition *)fromPosition toPosition:(UITextPosition *)toPosition;
	 */
	public abstract UITextRange textRangeFromPosition(UITextPosition fromPosition, UITextPosition toPosition);

	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position offset:(NSInteger)offset;
	 */
	public abstract UITextPosition positionFromPosition(UITextPosition position, int offset);

	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction offset:(NSInteger)offset;
	 */
	public abstract UITextPosition positionFromPosition(UITextPosition position, int direction, int offset);

	/**
	 * - (NSComparisonResult)comparePosition:(UITextPosition *)position toPosition:(UITextPosition *)other;
	 */
	public abstract int comparePosition(UITextPosition position, UITextPosition other);

	/**
	 * - (NSInteger)offsetFromPosition:(UITextPosition *)from toPosition:(UITextPosition *)toPosition;
	 */
	public abstract int offsetFromPosition(UITextPosition from, UITextPosition toPosition);

	/**
	 * - (UITextPosition *)positionWithinRange:(UITextRange *)range farthestInDirection:(UITextLayoutDirection)direction;
	 */
	public abstract UITextPosition positionWithinRangeFarthestInDirection(UITextRange range, int direction);

	/**
	 * - (UITextRange *)characterRangeByExtendingPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction;
	 */
	public abstract UITextRange characterRangeByExtendingPosition(UITextPosition position, int direction);

	/**
	 * - (UITextWritingDirection)baseWritingDirectionForPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction;
	 */
	public abstract int baseWritingDirectionForPosition(UITextPosition position, int direction);

	/**
	 * - (void)setBaseWritingDirection:(UITextWritingDirection)writingDirection forRange:(UITextRange *)range;
	 */
	public abstract void setBaseWritingDirection(int writingDirection, UITextRange range);

	/**
	 * - (CGRect)firstRectForRange:(UITextRange *)range;
	 */
	public abstract CGRect firstRectForRange(UITextRange range);

	/**
	 * - (CGRect)caretRectForPosition:(UITextPosition *)position;
	 */
	public abstract CGRect caretRectForPosition(UITextPosition position);

	/**
	 * - (UITextPosition *)closestPositionToPoint:(CGPoint)point;
	 */
	public abstract UITextPosition closestPositionToPoint(CGPoint point);

	/**
	 * - (UITextPosition *)closestPositionToPoint:(CGPoint)point withinRange:(UITextRange *)range;
	 */
	public abstract UITextPosition closestPositionToPoint(CGPoint point, UITextRange range);

	/**
	 * - (UITextRange *)characterRangeAtPoint:(CGPoint)point;
	 */
	public abstract UITextRange characterRangeAtPoint(CGPoint point);

	/**
	 * - (NSDictionary *)textStylingAtPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction;
	 */
	public abstract Map textStylingAtPosition(UITextPosition position, int direction);

	/**
	 * - (UITextPosition *)positionWithinRange:(UITextRange *)range atCharacterOffset:(NSInteger)offset;
	 */
	public abstract UITextPosition positionWithinRangeAtCharacterOffset(UITextRange range, int offset);

	/**
	 * - (NSInteger)characterOffsetOfPosition:(UITextPosition *)position withinRange:(UITextRange *)range;
	 */
	public abstract int characterOffsetOfPosition(UITextPosition position, UITextRange range);
}
