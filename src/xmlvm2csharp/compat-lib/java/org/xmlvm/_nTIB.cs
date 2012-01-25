namespace org.xmlvm {
    // represents the java.lang.Object on which synchronization of class methods is done
    public class _nTIB : global::java.lang.Object {
        // implemented as a wrapper for native type:
        private global::System.Type myType;
        private java.lang.Class myClass;
        private string javaName;
        private _nTIB componentTIB;

        private _nTIB(global::System.Type myType, string javaName) {
            this.myType = myType;
            this.javaName = javaName;
            this.componentTIB = null;
        }

        public void setClass(java.lang.Class myClass) {
            this.myClass = myClass;
        }

        private void setComponentTIB(_nTIB componentTIB) {
            this.componentTIB = componentTIB;
        }

        public global::System.Type getNativeType() {
            return this.myType;
        }

        public java.lang.Class getClass() {
            return this.myClass;
        }

        public string getJavaName() {
            return this.javaName;
        }

        public _nTIB getComponentTIB() {
            return this.componentTIB;
        }

        public bool isArray() {
            // return myType.GetInterface("org.xmlvm._nIArray")!=null;
            return typeof(org.xmlvm._nIArray).IsAssignableFrom(this.myType);
        }

        public java.lang.Class getComponentType() {
            /*
            global::System.Type componentNativeType = null;
            if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<bool>))) {
                componentNativeType = typeof(bool);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<sbyte>))) {
                componentNativeType = typeof(sbyte);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<char>))) {
                componentNativeType = typeof(char);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<short>))) {
                componentNativeType = typeof(short);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<int>))) {
                componentNativeType = typeof(int);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<long>))) {
                componentNativeType = typeof(long);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<float>))) {
                componentNativeType = typeof(float);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<double>))) {
                componentNativeType = typeof(double);
            } else if (this.myType.Equals(typeof(org.xmlvm._nArrayAdapter<object>))) {
                componentNativeType = typeof(object);
            } else {
                return null;
            }
            java.lang.Class result = _nTIB.getClass(componentNativeType);
            return result;
            */
            return this.componentTIB.getClass();
        }

        public bool isPrimitive() {
            return this.myType.IsPrimitive;
        }

        private static global::System.Collections.Generic.Dictionary<global::System.Type, _nTIB> tibTable;

        // the following facilitate java.lang.String-->TIB, but hashing by native strings is superior
        private static global::System.Collections.Generic.Dictionary<string, _nTIB> jNameTable;

        private static global::System.Collections.Generic.Dictionary<java.lang.String, _nTIB> bootstrapTable;

        private static void bootstrapSetClass(_nTIB tib) {
            //   note we do not really need:
            //   java.lang.String javaTypeStr = nativeTypeToJavaTypeName(aType);
            //   because we will be called back soon to get the TIB. 
            //   so let's store a dummy:
            java.lang.String dummy = new java.lang.String();
            dummy.@this();
            bootstrapTable.Add(dummy, tib);
            java.lang.Class.forName(dummy); // this will set the class of the tib
        }

        public static global::System.Type voidType = null;
        public static global::System.Type booleanType = typeof(bool);
        public static global::System.Type byteType = typeof(sbyte);
        public static global::System.Type charType = typeof(char);
        public static global::System.Type shortType = typeof(short);
        public static global::System.Type intType = typeof(int);
        public static global::System.Type longType = typeof(long);
        public static global::System.Type floatType = typeof(float);
        public static global::System.Type doubleType = typeof(double);
        public static global::System.Type objectType = typeof(java.lang.Object);
        
        public static global::System.Type booleanArrayType = typeof(org.xmlvm._nArrayAdapter<bool>);
        public static global::System.Type byteArrayType = typeof(org.xmlvm._nArrayAdapter<sbyte>);
        public static global::System.Type charArrayType = typeof(org.xmlvm._nArrayAdapter<char>);
        public static global::System.Type shortArrayType = typeof(org.xmlvm._nArrayAdapter<short>);
        public static global::System.Type intArrayType = typeof(org.xmlvm._nArrayAdapter<int>);
        public static global::System.Type longArrayType = typeof(org.xmlvm._nArrayAdapter<long>);
        public static global::System.Type floatArrayType = typeof(org.xmlvm._nArrayAdapter<float>);
        public static global::System.Type doubleArrayType = typeof(org.xmlvm._nArrayAdapter<double>);
        public static global::System.Type objectArrayType = typeof(org.xmlvm._nArrayAdapter<object>);



        static _nTIB() {
            voidType = typeof(void);
            tibTable = new global::System.Collections.Generic.Dictionary<global::System.Type, _nTIB>();
            bootstrapTable = new System.Collections.Generic.Dictionary<java.lang.String, _nTIB>();
            jNameTable = new System.Collections.Generic.Dictionary<string,_nTIB>();
            //inBootstrap = true;

            _nTIB voidTib = new _nTIB(voidType, "void");
            tibTable.Add(voidType, voidTib);
            jNameTable.Add("void", voidTib);
            bootstrapSetClass(voidTib);

            _nTIB booleanTib = new _nTIB(booleanType, "boolean");
            tibTable.Add(booleanType, booleanTib);
            jNameTable.Add("boolean", booleanTib);
            bootstrapSetClass(booleanTib);
            
            _nTIB byteTib = new _nTIB(byteType, "byte");
            tibTable.Add(byteType, byteTib);
            jNameTable.Add("byte", byteTib);
            bootstrapSetClass(byteTib);
            
            _nTIB charTib = new _nTIB(charType, "char");
            tibTable.Add(charType, charTib);
            jNameTable.Add("char", charTib);
            bootstrapSetClass(charTib);
            
            _nTIB shortTib = new _nTIB(shortType, "short");
            tibTable.Add(shortType, shortTib);
            jNameTable.Add("short", shortTib);
            bootstrapSetClass(shortTib);
            
            _nTIB intTib = new _nTIB(intType, "int");
            tibTable.Add(intType, intTib);
            jNameTable.Add("int", intTib);
            bootstrapSetClass(intTib);

            _nTIB longTib = new _nTIB(longType, "long");
            tibTable.Add(longType, longTib);
            jNameTable.Add("long", longTib);
            bootstrapSetClass(longTib);
            
            _nTIB floatTib = new _nTIB(floatType, "float");
            tibTable.Add(floatType, floatTib);
            jNameTable.Add("float", floatTib);
            bootstrapSetClass(floatTib);
            
            _nTIB doubleTib = new _nTIB(doubleType, "double");
            tibTable.Add(doubleType, doubleTib);
            jNameTable.Add("double", doubleTib);
            bootstrapSetClass(doubleTib);
            
            _nTIB objectTib = new _nTIB(objectType, "java.lang.Object");
            tibTable.Add(objectType, objectTib);
            jNameTable.Add("java.lang.Object", objectTib);
            bootstrapSetClass(objectTib);

            _nTIB booleanArrayTib = new _nTIB(booleanArrayType, "[Z");
            tibTable.Add(booleanArrayType, booleanArrayTib);
            jNameTable.Add("[Z", booleanArrayTib);
            bootstrapSetClass(booleanArrayTib);
            booleanArrayTib.setComponentTIB(booleanTib);
            
            _nTIB byteArrayTib = new _nTIB(byteArrayType, "[B");
            tibTable.Add(byteArrayType, byteArrayTib);
            jNameTable.Add("[B", byteArrayTib);
            bootstrapSetClass(byteArrayTib);
            byteArrayTib.setComponentTIB(byteTib);
            
            _nTIB charArrayTib = new _nTIB(charArrayType, "[C");
            tibTable.Add(charArrayType, charArrayTib);
            jNameTable.Add("[C", charArrayTib);
            bootstrapSetClass(charArrayTib);
            charArrayTib.setComponentTIB(charTib);
            
            _nTIB shortArrayTib = new _nTIB(shortArrayType, "[S");
            tibTable.Add(shortArrayType, shortArrayTib);
            jNameTable.Add("[S", shortArrayTib);
            bootstrapSetClass(shortArrayTib);
            shortArrayTib.setComponentTIB(shortTib);
            
            _nTIB intArrayTib = new _nTIB(intArrayType, "[I");
            tibTable.Add(intArrayType, intArrayTib);
            jNameTable.Add("[I", intArrayTib);
            bootstrapSetClass(intArrayTib);
            intArrayTib.setComponentTIB(intTib);
            
            _nTIB longArrayTib = new _nTIB(longArrayType, "[J");
            tibTable.Add(longArrayType, longArrayTib);
            jNameTable.Add("[J", longArrayTib);
            bootstrapSetClass(longArrayTib);
            longArrayTib.setComponentTIB(longTib);
            
            _nTIB floatArrayTib = new _nTIB(floatArrayType, "[F");
            tibTable.Add(floatArrayType, floatArrayTib);
            jNameTable.Add("[F", floatArrayTib);
            bootstrapSetClass(floatArrayTib);
            floatArrayTib.setComponentTIB(floatTib);
            
            _nTIB doubleArrayTib = new _nTIB(doubleArrayType, "[D");
            tibTable.Add(doubleArrayType, doubleArrayTib);
            jNameTable.Add("[D", doubleArrayTib);
            bootstrapSetClass(doubleArrayTib);
            doubleArrayTib.setComponentTIB(doubleTib);

            _nTIB objectArrayTib = new _nTIB(objectArrayType, "[Ljava.lang.Object");
            tibTable.Add(objectArrayType, objectArrayTib);
            jNameTable.Add("[Ljava.lang.Object", objectArrayTib);
            bootstrapSetClass(objectArrayTib);
            objectArrayTib.setComponentTIB(objectTib);

 
        }

        // enforces a bijection Type-->_nTIB:
        public static _nTIB getTIB(global::System.Type myType, string jTypeName) {
            _nTIB result;
            if (!tibTable.TryGetValue(myType, out result)) {
                result = new _nTIB(myType, jTypeName);
                tibTable.Add(myType,result);
            }
            return result;
        }


        public static java.lang.Class getClass(global::System.Type aType) {
            _nTIB aTIB = getTIB(aType, aType.ToString());
            java.lang.Class result = aTIB.getClass();
            if (result==null) {
                // need to initialize with java.lang.Class instant
                bootstrapSetClass(aTIB);
                result = aTIB.getClass();
            }
            return result;
        }

        public static _nTIB javaTypeNameToTIB(java.lang.String javaTypeName) {
            _nTIB result;
            // check if a tib is waiting for us from bootstrap
            if (bootstrapTable.TryGetValue(javaTypeName, out result)) {
                return result;
            }
            // else:not in bootstrap, no tib is waiting for us
            string nativeStr = org.xmlvm._nUtil.toNativeString(javaTypeName);
            nativeStr = nativeStr.Replace("_", "_1");
            nativeStr = nativeStr.Replace("$", "_2");
            if (nativeStr.StartsWith("[L")) {
                // only allowed arrays of reference type are of objects
                nativeStr = "[Ljava.lang.Object";
            }
            if (!jNameTable.TryGetValue(nativeStr, out result)) {
                // if it is not already in the table, 
                //   then the native type name is the same as the java type name
                global::System.Type resultType = global::System.Type.GetType(nativeStr);
                if (resultType != null)
                {
                    result = getTIB(resultType, nativeStr);
                    // also, store this for faster future retrievals:
                    jNameTable.Add(nativeStr, result);
                }
                else
                {
                    throw new global::org.xmlvm._nExceptionAdapter(new global::java.lang.ClassNotFoundException());
                }
            }
            return result;
        }

        /*
        public static java.lang.String nativeTypeToJavaTypeName(global::System.Type nativeType) {
            string result;
            _nTIB tib;
            if(!tibTable.TryGetValue(nativeType, out tib)) {
                // if it is not already in the table,
                //   then the native type name is the same as the java counterpart
                result = nativeType.ToString();
                tib = new _nTIB(nativeType, result);
                tibTable.Add(nativeType, tib);
                jNameTable.Add(result, tib);
                bootstrapSetClass(tib);
            } else {
                result = tib.getJavaName();
            }
            return org.xmlvm._nUtil.toJavaString(result);
        }
        */

        public static java.lang.Object boxIfPrimitive(global::System.Object aValue,
                                                      global::System.Type aType) {
            if (!aType.IsPrimitive) {
                return (java.lang.Object) aValue; // do nothing
            } else if (aType.Equals(booleanType)) {
                java.lang.Boolean boolBox = new java.lang.Boolean();
                boolBox.@this((bool) aValue);
                return boolBox;
            } else if (aType.Equals(byteType)) {
                java.lang.Byte byteBox = new java.lang.Byte();
                byteBox.@this((sbyte) aValue);
                return byteBox;
            } else if (aType.Equals(charType)) {
                java.lang.Character charBox = new java.lang.Character();
                charBox.@this((char) aValue);
                return charBox;
            } else if (aType.Equals(shortType)) {
                java.lang.Short shortBox = new java.lang.Short();
                shortBox.@this((short) aValue);
                return shortBox;
            } else if (aType.Equals(intType)) {
                java.lang.Integer intBox = new java.lang.Integer();
                intBox.@this((int) aValue);
                return intBox;
            } else if (aType.Equals(longType)) {
                java.lang.Long longBox = new java.lang.Long();
                longBox.@this((long) aValue);
                return longBox;
            } else if (aType.Equals(floatType)) {
                java.lang.Float floatBox = new java.lang.Float();
                floatBox.@this((float) aValue);
                return floatBox;
            } else if (aType.Equals(doubleType)) {
                java.lang.Double doubleBox = new java.lang.Double();
                doubleBox.@this((double) aValue);
                return doubleBox;
            } else {
                throw new org.xmlvm._nNativeImplementationException();
            }
        }

        public static global::System.Object unboxIfPrimitive(java.lang.Object aValue,
                                                             global::System.Type aType) {
            if (!aType.IsPrimitive) {
                return aValue; // do nothing
            } else if (aType.Equals(booleanType)) {
                return ((java.lang.Boolean) aValue).booleanValue();
            } else if (aType.Equals(byteType)) {
                return ((java.lang.Byte) aValue).byteValue();
            } else if (aType.Equals(charType)) {
                return ((java.lang.Character) aValue).charValue(); 
            } else if (aType.Equals(shortType)) {
                return ((java.lang.Short) aValue).shortValue();
            } else if (aType.Equals(intType)) {
                return ((java.lang.Integer) aValue).intValue();
            } else if (aType.Equals(longType)) {
                return ((java.lang.Long) aValue).longValue();
            } else if (aType.Equals(floatType)) {
                return ((java.lang.Float) aValue).floatValue();
            } else if (aType.Equals(doubleType)) {
                return ((java.lang.Double) aValue).doubleValue();
            } else {
                throw new org.xmlvm._nNativeImplementationException();
            }
        }

    }
}
