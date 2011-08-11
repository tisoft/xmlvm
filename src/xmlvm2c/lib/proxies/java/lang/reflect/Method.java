/* 
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package java.lang.reflect;

import java.lang.annotation.Annotation;

/**
 * This class represents a method. Information about the method can be accessed,
 * and the method can be invoked dynamically.
 */
public final class Method<T> extends AccessibleObject implements GenericDeclaration, Member {

    /*
     * This class must be implemented by the VM vendor.
     */

    private String     name;
    private Class<T>   clazz;
    private Object     address;
    private int        slot;
    private Class<T>[] parameterTypes;
    private Class<T>[] exceptionTypes;
    private int        modifiers;
    private String     signature;
    private byte[]     annotations;
    private byte[]     parameterAnnotations;

    /**
     * Prevent this class from being instantiated
     */
    private Method(){
        //do nothing
    }
    
    private Method(String name, Class<T> declaringClass, Class<T>[] parameterTypes,
            Class<T>[] checkedExceptions, int modifiers, Object address, int slot,
            String signature, byte[] annotations, byte[] parameterAnnotations) {
        this.name = name;
        this.clazz = declaringClass;
        this.parameterTypes = parameterTypes;
        this.exceptionTypes = checkedExceptions;
        this.modifiers = modifiers;
        this.address = address;
        this.slot = slot;
        this.signature = signature;
        this.annotations = annotations;
        this.parameterAnnotations = parameterAnnotations;
    }

    native public TypeVariable<Method>[] getTypeParameters();

    /**
     * Returns the string representation of the method's declaration, including
     * the type parameters.
     *
     * @return the string representation of this method
     * @since 1.5
     */
    native public String toGenericString();

    /**
     * Returns the parameter types as an array of {@code Type} instances, in
     * declaration order. If this method has no parameters, an empty array is
     * returned.
     *
     * @return the parameter types
     *
     * @throws GenericSignatureFormatError
     *             if the generic method signature is invalid
     * @throws TypeNotPresentException
     *             if any parameter type points to a missing type
     * @throws MalformedParameterizedTypeException
     *             if any parameter type points to a type that cannot be
     *             instantiated for some reason
     * @since 1.5
     */
    native public Type[] getGenericParameterTypes();

    /**
     * Returns the exception types as an array of {@code Type} instances. If
     * this method has no declared exceptions, an empty array will be returned.
     *
     * @return an array of generic exception types
     *
     * @throws GenericSignatureFormatError
     *             if the generic method signature is invalid
     * @throws TypeNotPresentException
     *             if any exception type points to a missing type
     * @throws MalformedParameterizedTypeException
     *             if any exception type points to a type that cannot be
     *             instantiated for some reason
     * @since 1.5
     */
    native public Type[] getGenericExceptionTypes();

    /**
     * Returns the return type of this method as a {@code Type} instance.
     *
     * @return the return type of this method
     *
     * @throws GenericSignatureFormatError
     *             if the generic method signature is invalid
     * @throws TypeNotPresentException
     *             if the return type points to a missing type
     * @throws MalformedParameterizedTypeException
     *             if the return type points to a type that cannot be
     *             instantiated for some reason
     * @since 1.5
     */
    native public Type getGenericReturnType();

    /**
     * Returns an array of arrays that represent the annotations of the formal
     * parameters of this method. If there are no parameters on this method,
     * then an empty array is returned. If there are no annotations set, then
     * and array of empty arrays is returned.
     *
     * @return an array of arrays of {@code Annotation} instances
     * @since 1.5
     */
    native public Annotation[][] getParameterAnnotations();

    /**
     * Indicates whether or not this method takes a variable number argument.
     *
     * @return {@code true} if a vararg is declared, {@code false} otherwise
     * @since 1.5
     */
    native public boolean isVarArgs();

    /**
     * Indicates whether or not this method is a bridge.
     *
     * @return {@code true} if this method is a bridge, {@code false} otherwise
     * @since 1.5
     */
    native public boolean isBridge();

    /**
     * Indicates whether or not this method is synthetic.
     *
     * @return {@code true} if this method is synthetic, {@code false} otherwise
     */
    native public boolean isSynthetic();

    /**
     * Returns the default value for the annotation member represented by this
     * method.
     *
     * @return the default value, or {@code null} if none
     *
     * @throws TypeNotPresentException
     *             if this annotation member is of type {@code Class} and no
     *             definition can be found
     * @since 1.5
     */
    native public Object getDefaultValue();

    /**
     * Indicates whether or not the specified {@code object} is equal to this
     * method. To be equal, the specified object must be an instance
     * of {@code Method} with the same declaring class and parameter types
     * as this method.
     *
     * @param object
     *            the object to compare
     * @return {@code true} if the specified object is equal to this
     *         method, {@code false} otherwise
     * @see #hashCode
     */
    @Override
    native public boolean equals(Object object);

    /**
     * Returns the class that declares this method.
     *
     * @return the declaring class
     */
    native public Class<?> getDeclaringClass();

    /**
     * Returns the exception types as an array of {@code Class} instances. If
     * this method has no declared exceptions, an empty array is returned.
     *
     * @return the declared exception classes
     */
    native public Class<?>[] getExceptionTypes();

    /**
     * Returns the modifiers for this method. The {@link Modifier} class should
     * be used to decode the result.
     *
     * @return the modifiers for this method
     *
     * @see Modifier
     */
    public int getModifiers() {
        return this.modifiers;
    }

    /**
     * Returns the name of the method represented by this {@code Method}
     * instance.
     *
     * @return the name of this method
     */
    native public String getName();

    /**
     * Returns an array of {@code Class} objects associated with the parameter
     * types of this method. If the method was declared with no parameters, an
     * empty array will be returned.
     *
     * @return the parameter types
     */
    native public Class<?>[] getParameterTypes();

    /**
     * Returns the {@code Class} associated with the return type of this
     * method.
     *
     * @return the return type
     */
    native public Class<?> getReturnType();

    /**
     * Returns an integer hash code for this method. Objects which are equal
     * return the same value for this method. The hash code for this Method is
     * the hash code of the name of this method.
     *
     * @return hash code for this method
     *
     * @see #equals
     */
	@Override
	native public int hashCode();

    /**
     * Returns the result of dynamically invoking this method. This reproduces
     * the effect of {@code receiver.methodName(arg1, arg2, ... , argN)} This
     * method performs the following:
     * <ul>
     * <li>If this method is static, the receiver argument is ignored.</li>
     * <li>Otherwise, if the receiver is null, a NullPointerException is thrown.
     * </li>
     * <li>If the receiver is not an instance of the declaring class of the
     * method, an IllegalArgumentException is thrown.</li>
     * <li>If this Method object is enforcing access control (see
     * AccessibleObject) and this method is not accessible from the current
     * context, an IllegalAccessException is thrown.</li>
     * <li>If the number of arguments passed and the number of parameters do not
     * match, an IllegalArgumentException is thrown.</li>
     * <li>For each argument passed:
     * <ul>
     * <li>If the corresponding parameter type is a primitive type, the argument
     * is unwrapped. If the unwrapping fails, an IllegalArgumentException is
     * thrown.</li>
     * <li>If the resulting argument cannot be converted to the parameter type
     * via a widening conversion, an IllegalArgumentException is thrown.</li>
     * </ul>
     * <li>If this method is static, it is invoked directly. If it is
     * non-static, this method and the receiver are then used to perform a
     * standard dynamic method lookup. The resulting method is then invoked.</li>
     * <li>If an exception is thrown during the invocation it is caught and
     * wrapped in an InvocationTargetException. This exception is then thrown.</li>
     * <li>If the invocation completes normally, the return value itself is
     * returned. If the method is declared to return a primitive type, the
     * return value is first wrapped. If the return type is void, null is
     * returned.</li>
     * </ul>
     *
     * @param receiver
     *            the object on which to call this method
     * @param args
     *            the arguments to the method
     *
     * @return the new, initialized, object
     *
     * @throws NullPointerException
     *             if the receiver is null for a non-static method
     * @throws IllegalAccessException
     *             if this method is not accessible
     * @throws IllegalArgumentException
     *             if an incorrect number of arguments are passed, the receiver
     *             is incompatible with the declaring class, or an argument
     *             could not be converted by a widening conversion
     * @throws InvocationTargetException
     *             if an exception was thrown by the invoked method
     *
     * @see AccessibleObject
     */
	native public Object invoke(Object receiver, Object... args)
			throws IllegalAccessException, IllegalArgumentException,
			InvocationTargetException;

    /**
     * Returns a string containing a concise, human-readable description of this
     * method. The format of the string is:
     *
     * <ol>
     *   <li>modifiers (if any)
     *   <li>return type or 'void'
     *   <li>declaring class name
     *   <li>'('
     *   <li>parameter types, separated by ',' (if any)
     *   <li>')'
     *   <li>'throws' plus exception types, separated by ',' (if any)
     * </ol>
     *
     * For example: {@code public native Object
     * java.lang.Method.invoke(Object,Object) throws
     * IllegalAccessException,IllegalArgumentException
     * ,InvocationTargetException}
     *
     * @return a printable representation for this method
     */
    @Override
    native public String toString();
}
