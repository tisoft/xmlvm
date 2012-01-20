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

#import "org_xmlvm_iphone_UIImagePickerController.h"
#import "org_xmlvm_iphone_UIImagePickerControllerDelegate.h"

@implementation org_xmlvm_iphone_UIImagePickerController
UIVIEWCONTROLLER_CALLBACKS
@end


@implementation UIImagePickerController (cat_org_xmlvm_iphone_UIImagePickerControllerImpl)

- (void) __init_org_xmlvm_iphone_UIImagePickerController__
{
}

+ (int) isSourceTypeAvailable___int :(int)n1
{
    return [UIImagePickerController isSourceTypeAvailable:n1];
}

+ (java_util_ArrayList*) availableMediaTypesForSourceType___int :(int)n1
{
    return_XMLVM_SELECTOR(UIImagePickerController availableMediaTypesForSourceType:n1)
}

+ (int) isCameraDeviceAvailable___int :(int)n1
{
    return [UIImagePickerController isCameraDeviceAvailable:n1];
}

+ (java_util_ArrayList*) availableCaptureModesForCameraDevice___int :(int)n1
{
    return_XMLVM_SELECTOR(UIImagePickerController availableCaptureModesForCameraDevice:n1)
}

+ (int) isFlashAvailableForCameraDevice___int :(int)n1
{
    return [UIImagePickerController isFlashAvailableForCameraDevice:n1];
}

- (int) getSourceType__
{
    return [self sourceType];
}

- (void) setSourceType___int :(int)n1
{
    [self setSourceType:n1];
}

- (int) isAllowsEditing__
{
    return [self allowsEditing];
}

- (void) setAllowsEditing___boolean :(int)n1
{
    [self setAllowsEditing:n1];
}

- (org_xmlvm_iphone_UIImagePickerControllerDelegate*) getDelegate__
{
    return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UIImagePickerControllerDelegate :(org_xmlvm_iphone_UIImagePickerControllerDelegate*)newdelegate
{
    XMLVM_PROPERTY(delegate, newdelegate);
}

- (void) setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate :(org_xmlvm_iphone_UINavigationControllerDelegate*)newdelegate
{
    XMLVM_PROPERTY(delegate, newdelegate);
}

- (java_util_ArrayList*) getMediaTypes__
{
    return_XMLVM(mediaTypes)
}

- (void) setMediaTypes___java_util_ArrayList :(java_util_ArrayList*)n1
{
    [self setMediaTypes:n1];
}

- (double) getVideoMaximumDuration__
{
    return [self videoMaximumDuration];
}

- (void) setVideoMaximumDuration___double :(double)n1
{
    [self setVideoMaximumDuration:n1];
}

- (int) getVideoQuality__
{
    return [self videoQuality];
}

- (void) setVideoQuality___int :(int)n1
{
    [self setVideoQuality:n1];
}

- (org_xmlvm_iphone_UIView*) getCameraOverlayView__
{
    return_XMLVM(cameraOverlayView)
}

- (void) setCameraOverlayView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1
{
    [self setCameraOverlayView:n1];
}

- (org_xmlvm_iphone_CGAffineTransform*) getCameraViewTransform__
{
    return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:[self cameraViewTransform]];
}

- (void) setCameraViewTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)n1
{
    [self setCameraViewTransform:n1->transform];
}

- (int) isShowsCameraControls__
{
    return [self showsCameraControls];
}

- (void) setShowsCameraControls___boolean :(int)n1
{
    [self setShowsCameraControls:n1];
}

- (int) getCameraCaptureMode__
{
    return [self cameraCaptureMode];
}

- (void) setCameraCaptureMode___int :(int)n1
{
    [self setCameraCaptureMode:n1];
}

- (int) getCameraDevice__
{
    return [self cameraDevice];
}

- (void) setCameraDevice___int :(int)n1
{
    [self setCameraDevice:n1];
}

- (int) getCameraFlashMode__
{
    return [self cameraFlashMode];
}

- (void) setCameraFlashMode___int :(int)n1
{
    [self setCameraFlashMode:n1];
}

- (void) takePicture__
{
    [self takePicture];
}

- (int) startVideoCapture__
{
    return [self startVideoCapture];
}

- (void) stopVideoCapture__
{
    [self stopVideoCapture];
}

@end

