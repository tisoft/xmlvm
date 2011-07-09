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

package org.xmlvm.iphone;

import java.util.ArrayList;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIImagePickerController extends UINavigationController {

    public static final String MediaType = "UIImagePickerControllerMediaType";
    public static final String OriginalImage = "UIImagePickerControllerOriginalImage";
    public static final String EditedImage = "UIImagePickerControllerEditedImage";
    public static final String CropRect = "UIImagePickerControllerCropRect";
    public static final String MediaURL = "UIImagePickerControllerMediaURL";
    public static final String ReferenceURL = "UIImagePickerControllerReferenceURL";
    public static final String MediaMetadata = "UIImagePickerControllerMediaMetadata";
    //
    private int sourceType = UIImagePickerControllerSourceType.PhotoLibrary;
    private boolean allowsEditing = false;
    private UIImagePickerControllerDelegate delegate = null;
    private ArrayList<String> mediaTypes = new ArrayList<String>();
    private int videoQuality = UIImagePickerControllerQualityType.Medium;
    private double videoMaximumDuration = 600;
    private boolean showsCameraControls = true;
    private UIView cameraOverlayView = null;
    private CGAffineTransform cameraViewTransform = null;
    private int cameraDevice = UIImagePickerControllerCameraDevice.Rear;
    private int cameraCaptureMode = UIImagePickerControllerCameraCaptureMode.Photo;
    private int cameraFlashMode = UIImagePickerControllerCameraFlashMode.Auto;

    public UIImagePickerController() {
        mediaTypes.add(UTType.Image);
    }

    public static boolean isSourceTypeAvailable(int uiImagePickerControllerSourceType) {
        return false;
    }

    public static ArrayList<String> availableMediaTypesForSourceType(int uiImagePickerControllerSourceType) {
        ArrayList<String> results = new ArrayList<String>();
        results.add(UTType.Image);
        return new ArrayList();
    }

    public static boolean isCameraDeviceAvailable(int uiImagePickerControllerCameraDevice) {
        return false;
    }

    public static ArrayList<Integer> availableCaptureModesForCameraDevice(int uiImagePickerControllerCameraDevice) {
        return new ArrayList<Integer>();
    }

    public static boolean isFlashAvailableForCameraDevice(int uiImagePickerControllerCameraDevice) {
        return false;
    }

    public int getSourceType() {
        return sourceType;
    }

    public void setSourceType(int sourceType) {
        this.sourceType = sourceType;
    }

    public boolean isAllowsEditing() {
        return allowsEditing;
    }

    public void setAllowsEditing(boolean allowsEditing) {
        this.allowsEditing = allowsEditing;
    }

    @Override
    public UIImagePickerControllerDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UIImagePickerControllerDelegate delegate) {
        this.delegate = delegate;
    }

    @Override
    public void setDelegate(UINavigationControllerDelegate delegate) {
        this.delegate = (UIImagePickerControllerDelegate) delegate;
    }

    public ArrayList<String> getMediaTypes() {
        return mediaTypes;
    }

    public void setMediaTypes(ArrayList<String> mediaTypes) {
        this.mediaTypes = mediaTypes;
    }

    public double getVideoMaximumDuration() {
        return videoMaximumDuration;
    }

    public void setVideoMaximumDuration(double videoMaximumDuration) {
        this.videoMaximumDuration = videoMaximumDuration;
    }

    public int getVideoQuality() {
        return videoQuality;
    }

    public void setVideoQuality(int videoQuality) {
        this.videoQuality = videoQuality;
    }

    public UIView getCameraOverlayView() {
        return cameraOverlayView;
    }

    public void setCameraOverlayView(UIView cameraOverlayView) {
        this.cameraOverlayView = cameraOverlayView;
    }

    public CGAffineTransform getCameraViewTransform() {
        return cameraViewTransform;
    }

    public void setCameraViewTransform(CGAffineTransform cameraViewTransform) {
        this.cameraViewTransform = cameraViewTransform;
    }

    public boolean isShowsCameraControls() {
        return showsCameraControls;
    }

    public void setShowsCameraControls(boolean showsCameraControls) {
        this.showsCameraControls = showsCameraControls;
    }

    public int getCameraCaptureMode() {
        return cameraCaptureMode;
    }

    public void setCameraCaptureMode(int cameraCaptureMode) {
        this.cameraCaptureMode = cameraCaptureMode;
    }

    public int getCameraDevice() {
        return cameraDevice;
    }

    public void setCameraDevice(int cameraDevice) {
        this.cameraDevice = cameraDevice;
    }

    public int getCameraFlashMode() {
        return cameraFlashMode;
    }

    public void setCameraFlashMode(int cameraFlashMode) {
        this.cameraFlashMode = cameraFlashMode;
    }

    public void takePicture() {
    }

    public boolean startVideoCapture() {
        return false;
    }

    public void stopVideoCapture() {
    }
}