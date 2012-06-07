
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGContext_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGContext]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getTypeID__]

    long var0 = CGContextGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_saveGState__]

    XMLVM_VAR_CFTHIZ;
    CGContextSaveGState(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_restoreGState__]

    XMLVM_VAR_CFTHIZ;
    CGContextRestoreGState(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_scaleCTM___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextScaleCTM(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_translateCTM___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextTranslateCTM(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_rotateCTM___float]

    XMLVM_VAR_CFTHIZ;
    CGContextRotateCTM(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_concatCTM___org_xmlvm_ios_CGAffineTransform]

    XMLVM_VAR_CFTHIZ;
    CGContextConcatCTM(thiz,toCGAffineTransform(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getCTM__]

    XMLVM_VAR_CFTHIZ;
    
    CGAffineTransform var0 = CGContextGetCTM(thiz);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setLineWidth___float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetLineWidth(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setLineCap___int]

    XMLVM_VAR_CFTHIZ;
    CGContextSetLineCap(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setLineJoin___int]

    XMLVM_VAR_CFTHIZ;
    CGContextSetLineJoin(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setMiterLimit___float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetMiterLimit(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setLineDash___float_float_1ARRAY_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    CGContextSetLineDash(thiz,n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFlatness___float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetFlatness(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setAlpha___float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetAlpha(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setBlendMode___int]

    XMLVM_VAR_CFTHIZ;
    CGContextSetBlendMode(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_beginPath__]

    XMLVM_VAR_CFTHIZ;
    CGContextBeginPath(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_moveToPoint___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextMoveToPoint(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addLineToPoint___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextAddLineToPoint(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addCurveToPoint___float_float_float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextAddCurveToPoint(thiz,n1,n2,n3,n4,n5,n6);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addQuadCurveToPoint___float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextAddQuadCurveToPoint(thiz,n1,n2,n3,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_closePath__]

    XMLVM_VAR_CFTHIZ;
    CGContextClosePath(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextAddRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addRects___org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGRect var1= toCGRect(jObject1);
    CGContextAddRects(thiz,&var1,n2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGRect(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addLines___org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGPoint var1= toCGPoint(jObject1);
    CGContextAddLines(thiz,&var1,n2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGPoint(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addEllipseInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextAddEllipseInRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addArc___float_float_float_float_float_int]

    XMLVM_VAR_CFTHIZ;
    CGContextAddArc(thiz,n1,n2,n3,n4,n5,n6);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addArcToPoint___float_float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextAddArcToPoint(thiz,n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_addPath___org_xmlvm_ios_CGPath]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    CGContextAddPath(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_replacePathWithStrokedPath__]

    XMLVM_VAR_CFTHIZ;
    CGContextReplacePathWithStrokedPath(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_isPathEmpty__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGContextIsPathEmpty(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getPathCurrentPoint__]

    XMLVM_VAR_CFTHIZ;
    
    CGPoint var0 = CGContextGetPathCurrentPoint(thiz);
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getPathBoundingBox__]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGContextGetPathBoundingBox(thiz);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_copyPath__]

    XMLVM_VAR_CFTHIZ;
    
    CGPathRef var0 = CGContextCopyPath(thiz);
        XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_pathContainsPoint___org_xmlvm_ios_CGPoint_int]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGContextPathContainsPoint(thiz,toCGPoint(n1),n2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawPath___int]

    XMLVM_VAR_CFTHIZ;
    CGContextDrawPath(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_fillPath__]

    XMLVM_VAR_CFTHIZ;
    CGContextFillPath(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_eOFillPath__]

    XMLVM_VAR_CFTHIZ;
    CGContextEOFillPath(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_strokePath__]

    XMLVM_VAR_CFTHIZ;
    CGContextStrokePath(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_fillRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextFillRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_fillRects___org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGRect var1= toCGRect(jObject1);
    CGContextFillRects(thiz,&var1,n2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGRect(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_strokeRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextStrokeRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_strokeRectWithWidth___org_xmlvm_ios_CGRect_float]

    XMLVM_VAR_CFTHIZ;
    CGContextStrokeRectWithWidth(thiz,toCGRect(n1),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_clearRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextClearRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_fillEllipseInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextFillEllipseInRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_strokeEllipseInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextStrokeEllipseInRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_strokeLineSegments___org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGPoint var1= toCGPoint(jObject1);
    CGContextStrokeLineSegments(thiz,&var1,n2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGPoint(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_clip__]

    XMLVM_VAR_CFTHIZ;
    CGContextClip(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_eOClip__]

    XMLVM_VAR_CFTHIZ;
    CGContextEOClip(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_clipToMask___org_xmlvm_ios_CGRect_org_xmlvm_ios_CGImage]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGImage, var2, n2);
    CGContextClipToMask(thiz,toCGRect(n1),var2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getClipBoundingBox__]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGContextGetClipBoundingBox(thiz);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_clipToRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    CGContextClipToRect(thiz,toCGRect(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_clipToRects___org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGRect var1= toCGRect(jObject1);
    CGContextClipToRects(thiz,&var1,n2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGRect(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFillColorWithColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    CGContextSetFillColorWithColor(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setStrokeColorWithColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    CGContextSetStrokeColorWithColor(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFillColorSpace___org_xmlvm_ios_CGColorSpace]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGColorSpace, var1, n1);
    CGContextSetFillColorSpace(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setStrokeColorSpace___org_xmlvm_ios_CGColorSpace]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGColorSpace, var1, n1);
    CGContextSetStrokeColorSpace(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFillColor___float_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    CGContextSetFillColor(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setStrokeColor___float_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    CGContextSetStrokeColor(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFillPattern___org_xmlvm_ios_CGPattern_float_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGPattern, var1, n1);
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    CGContextSetFillPattern(thiz,var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setStrokePattern___org_xmlvm_ios_CGPattern_float_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGPattern, var1, n1);
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    CGContextSetStrokePattern(thiz,var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setPatternPhase___org_xmlvm_ios_CGSize]

    XMLVM_VAR_CFTHIZ;
    CGContextSetPatternPhase(thiz,toCGSize(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setGrayFillColor___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetGrayFillColor(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setGrayStrokeColor___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetGrayStrokeColor(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setRGBFillColor___float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetRGBFillColor(thiz,n1,n2,n3,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setRGBStrokeColor___float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetRGBStrokeColor(thiz,n1,n2,n3,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setCMYKFillColor___float_float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetCMYKFillColor(thiz,n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setCMYKStrokeColor___float_float_float_float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetCMYKStrokeColor(thiz,n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setRenderingIntent___int]

    XMLVM_VAR_CFTHIZ;
    CGContextSetRenderingIntent(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawImage___org_xmlvm_ios_CGRect_org_xmlvm_ios_CGImage]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGImage, var2, n2);
    CGContextDrawImage(thiz,toCGRect(n1),var2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawTiledImage___org_xmlvm_ios_CGRect_org_xmlvm_ios_CGImage]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGImage, var2, n2);
    CGContextDrawTiledImage(thiz,toCGRect(n1),var2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getInterpolationQuality__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGContextGetInterpolationQuality(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setInterpolationQuality___int]

    XMLVM_VAR_CFTHIZ;
    CGContextSetInterpolationQuality(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setShadowWithColor___org_xmlvm_ios_CGSize_float_org_xmlvm_ios_CGColor]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGColor, var3, n3);
    CGContextSetShadowWithColor(thiz,toCGSize(n1),n2,var3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setShadow___org_xmlvm_ios_CGSize_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetShadow(thiz,toCGSize(n1),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawLinearGradient___org_xmlvm_ios_CGGradient_org_xmlvm_ios_CGPoint_org_xmlvm_ios_CGPoint_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGGradient, var1, n1);
    CGContextDrawLinearGradient(thiz,var1,toCGPoint(n2),toCGPoint(n3),n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawRadialGradient___org_xmlvm_ios_CGGradient_org_xmlvm_ios_CGPoint_float_org_xmlvm_ios_CGPoint_float_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGGradient, var1, n1);
    CGContextDrawRadialGradient(thiz,var1,toCGPoint(n2),n3,toCGPoint(n4),n5,n6);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawShading___org_xmlvm_ios_CGShading]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGShading, var1, n1);
    CGContextDrawShading(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setCharacterSpacing___float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetCharacterSpacing(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setTextPosition___float_float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetTextPosition(thiz,n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getTextPosition__]

    XMLVM_VAR_CFTHIZ;
    
    CGPoint var0 = CGContextGetTextPosition(thiz);
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setTextMatrix___org_xmlvm_ios_CGAffineTransform]

    XMLVM_VAR_CFTHIZ;
    CGContextSetTextMatrix(thiz,toCGAffineTransform(n1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getTextMatrix__]

    XMLVM_VAR_CFTHIZ;
    
    CGAffineTransform var0 = CGContextGetTextMatrix(thiz);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setTextDrawingMode___int]

    XMLVM_VAR_CFTHIZ;
    CGContextSetTextDrawingMode(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFont___org_xmlvm_ios_CGFont]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGFont, var1, n1);
    CGContextSetFont(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setFontSize___float]

    XMLVM_VAR_CFTHIZ;
    CGContextSetFontSize(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_selectFont___byte_1ARRAY_float_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CGContextSelectFont(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_showGlyphsAtPositions___short_1ARRAY_org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGPoint var2= toCGPoint(jObject2);
    CGContextShowGlyphsAtPositions(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,&var2,n3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGPoint(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_showText___byte_1ARRAY_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CGContextShowText(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_showTextAtPoint___float_float_byte_1ARRAY_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    CGContextShowTextAtPoint(thiz,n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_showGlyphs___short_1ARRAY_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    CGContextShowGlyphs(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_showGlyphsAtPoint___float_float_short_1ARRAY_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_SHORT_ARRAY(a3, n3); 
    CGContextShowGlyphsAtPoint(thiz,n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_showGlyphsWithAdvances___short_1ARRAY_org_xmlvm_ios_Reference_int]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGSize var2= toCGSize(jObject2);
    CGContextShowGlyphsWithAdvances(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,&var2,n3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGSize(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawPDFPage___org_xmlvm_ios_CGPDFPage]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGPDFPage, var1, n1);
    CGContextDrawPDFPage(thiz,var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_beginPage___org_xmlvm_ios_Reference]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGRect var1= toCGRect(jObject1);
    CGContextBeginPage(thiz,&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGRect(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_endPage__]

    XMLVM_VAR_CFTHIZ;
    CGContextEndPage(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGContextRef var0 = CGContextRetain(thiz);
        XMLVM_VAR_INIT_REF(CGContext, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_release__]

    XMLVM_VAR_CFTHIZ;
    CGContextRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_flush__]

    XMLVM_VAR_CFTHIZ;
    CGContextFlush(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_synchronize__]

    XMLVM_VAR_CFTHIZ;
    CGContextSynchronize(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setShouldAntialias___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetShouldAntialias(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setAllowsAntialiasing___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetAllowsAntialiasing(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setShouldSmoothFonts___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetShouldSmoothFonts(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setAllowsFontSmoothing___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetAllowsFontSmoothing(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setShouldSubpixelPositionFonts___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetShouldSubpixelPositionFonts(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setAllowsFontSubpixelPositioning___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetAllowsFontSubpixelPositioning(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setShouldSubpixelQuantizeFonts___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetShouldSubpixelQuantizeFonts(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_setAllowsFontSubpixelQuantization___boolean]

    XMLVM_VAR_CFTHIZ;
    CGContextSetAllowsFontSubpixelQuantization(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_beginTransparencyLayer___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_beginTransparencyLayerWithRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_endTransparencyLayer__]

    XMLVM_VAR_CFTHIZ;
    CGContextEndTransparencyLayer(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_getUserSpaceToDeviceSpaceTransform__]

    XMLVM_VAR_CFTHIZ;
    
    CGAffineTransform var0 = CGContextGetUserSpaceToDeviceSpaceTransform(thiz);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_convertPointToDeviceSpace___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_CFTHIZ;
    
    CGPoint var0 = CGContextConvertPointToDeviceSpace(thiz,toCGPoint(n1));
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_convertPointToUserSpace___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_CFTHIZ;
    
    CGPoint var0 = CGContextConvertPointToUserSpace(thiz,toCGPoint(n1));
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_convertSizeToDeviceSpace___org_xmlvm_ios_CGSize]

    XMLVM_VAR_CFTHIZ;
    
    CGSize var0 = CGContextConvertSizeToDeviceSpace(thiz,toCGSize(n1));
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_convertSizeToUserSpace___org_xmlvm_ios_CGSize]

    XMLVM_VAR_CFTHIZ;
    
    CGSize var0 = CGContextConvertSizeToUserSpace(thiz,toCGSize(n1));
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_convertRectToDeviceSpace___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGContextConvertRectToDeviceSpace(thiz,toCGRect(n1));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_convertRectToUserSpace___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGContextConvertRectToUserSpace(thiz,toCGRect(n1));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawLayerInRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_CGLayer]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGLayer, var2, n2);
    CGContextDrawLayerInRect(thiz,toCGRect(n1),var2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGContext_drawLayerAtPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_CGLayer]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGLayer, var2, n2);
    CGContextDrawLayerAtPoint(thiz,toCGPoint(n1),var2);
    
    
//XMLVM_END_WRAPPER
