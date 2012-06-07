package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITextChecker extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)learnWord:(NSString *)word;
	 */
	public static void learnWord(String word){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)hasLearnedWord:(NSString *)word;
	 */
	public static boolean hasLearnedWord(String word){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)unlearnWord:(NSString *)word;
	 */
	public static void unlearnWord(String word){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)availableLanguages;
	 */
	public static List availableLanguages(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UITextChecker() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSRange)rangeOfMisspelledWordInString:(NSString *)stringToCheck range:(NSRange)range startingAt:(NSInteger)startingOffset wrap:(BOOL)wrapFlag language:(NSString *)language;
	 */
	public NSRange rangeOfMisspelledWordInString(String stringToCheck, NSRange range, int startingOffset, boolean wrapFlag, String language){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)guessesForWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language;
	 */
	public List guessesForWordRange(NSRange range, String string, String language){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)completionsForPartialWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language;
	 */
	public List completionsForPartialWordRange(NSRange range, String string, String language){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)ignoreWord:(NSString *)wordToIgnore;
	 */
	public void ignoreWord(String wordToIgnore){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)ignoredWords;
	 */
	public List ignoredWords(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setIgnoredWords:(NSArray *)words;
	 */
	public void setIgnoredWords(List words){
		throw new RuntimeException("Stub");
	}
}
