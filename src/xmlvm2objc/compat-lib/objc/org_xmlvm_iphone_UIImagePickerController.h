/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "xmlvm.h"
#import "org_xmlvm_iphone_UINavigationController.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"
#import "org_xmlvm_iphone_UINavigationControllerDelegate.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UIImage.h"

@class org_xmlvm_iphone_UIImagePickerControllerDelegate;

typedef UIImagePickerController org_xmlvm_iphone_UIImagePickerControllerImpl;

@interface UIImagePickerController (cat_org_xmlvm_iphone_UIImagePickerControllerImpl)

- (void) __init_org_xmlvm_iphone_UIImagePickerController__;
+ (int) isSourceTypeAvailable___int :(int)n1;
+ (java_util_List*) availableMediaTypesForSourceType___int :(int)n1;
+ (int) isCameraDeviceAvailable___int :(int)n1;
+ (java_util_List*) availableCaptureModesForCameraDevice___int :(int)n1;
+ (int) isFlashAvailableForCameraDevice___int :(int)n1;
- (int) getSourceType__;
- (void) setSourceType___int :(int)n1;
- (int) isAllowsEditing__;
- (void) setAllowsEditing___boolean :(int)n1;
- (org_xmlvm_iphone_UIImagePickerControllerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIImagePickerControllerDelegate :(org_xmlvm_iphone_UIImagePickerControllerDelegate*)n1;
- (void) setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate :(org_xmlvm_iphone_UINavigationControllerDelegate*)n1;
- (java_util_List*) getMediaTypes__;
- (void) setMediaTypes___java_util_List :(java_util_List*)n1;
- (double) getVideoMaximumDuration__;
- (void) setVideoMaximumDuration___double :(double)n1;
- (int) getVideoQuality__;
- (void) setVideoQuality___int :(int)n1;
- (org_xmlvm_iphone_UIView*) getCameraOverlayView__;
- (void) setCameraOverlayView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (org_xmlvm_iphone_CGAffineTransform*) getCameraViewTransform__;
- (void) setCameraViewTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)n1;
- (int) isShowsCameraControls__;
- (void) setShowsCameraControls___boolean :(int)n1;
- (int) getCameraCaptureMode__;
- (void) setCameraCaptureMode___int :(int)n1;
- (int) getCameraDevice__;
- (void) setCameraDevice___int :(int)n1;
- (int) getCameraFlashMode__;
- (void) setCameraFlashMode___int :(int)n1;
- (void) takePicture__;
- (int) startVideoCapture__;
- (void) stopVideoCapture__;
@end

@interface org_xmlvm_iphone_UIImagePickerController : org_xmlvm_iphone_UIImagePickerControllerImpl
UIVIEWCONTROLLER_CALLBACKS_INC
@end

