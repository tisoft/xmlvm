package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSExpression extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSExpression *)expressionForConstantValue:(id)obj;
	 */
	public static NSExpression expressionForConstantValue(Object obj){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForEvaluatedObject;
	 */
	public static NSExpression expressionForEvaluatedObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForVariable:(NSString *)string;
	 */
	public static NSExpression expressionForVariable(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForKeyPath:(NSString *)keyPath;
	 */
	public static NSExpression expressionForKeyPath(String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForFunction:(NSString *)name arguments:(NSArray *)parameters;
	 */
	public static NSExpression expressionForFunction(String name, List parameters){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForAggregate:(NSArray *)subexpressions ;
	 */
	public static NSExpression expressionForAggregate(List subexpressions){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForUnionSet:(NSExpression *)left with:(NSExpression *)right ;
	 */
	public static NSExpression expressionForUnionSet(NSExpression left, NSExpression right){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForIntersectSet:(NSExpression *)left with:(NSExpression *)right ;
	 */
	public static NSExpression expressionForIntersectSet(NSExpression left, NSExpression right){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForMinusSet:(NSExpression *)left with:(NSExpression *)right ;
	 */
	public static NSExpression expressionForMinusSet(NSExpression left, NSExpression right){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForSubquery:(NSExpression *)expression usingIteratorVariable:(NSString *)variable predicate:(id)predicate ;
	 */
	public static NSExpression expressionForSubquery(NSExpression expression, String variable, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForFunction:(NSExpression *)target selectorName:(NSString *)name arguments:(NSArray *)parameters ;
	 */
	public static NSExpression expressionForFunction(NSExpression target, String name, List parameters){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSExpression *)expressionForBlock:(id (^)(id evaluatedObject, NSArray *expressions, NSMutableDictionary *context))block arguments:(NSArray *)arguments ;
	 */
	public static NSExpression expressionForBlock(Object block, List arguments){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithExpressionType:(NSExpressionType)type;
	 */
	public NSExpression(int type) {}

	/** Default constructor */
	NSExpression() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSExpressionType)expressionType;
	 */
	public int expressionType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)constantValue;
	 */
	public Object constantValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)keyPath;
	 */
	public String keyPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)function;
	 */
	public String function(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)variable;
	 */
	public String variable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSExpression *)operand;
	 */
	public NSExpression operand(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)arguments;
	 */
	public List arguments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)collection ;
	 */
	public Object collection(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPredicate *)predicate ;
	 */
	public NSPredicate predicate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSExpression *)leftExpression ;
	 */
	public NSExpression leftExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSExpression *)rightExpression ;
	 */
	public NSExpression rightExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id (^)(id, NSArray *, NSMutableDictionary *))expressionBlock;
	 */
	public Object expressionBlock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)expressionValueWithObject:(id)object context:(NSMutableDictionary *)context;
	 */
	public Object expressionValueWithObject(Object object, Map context){
		throw new RuntimeException("Stub");
	}
}
