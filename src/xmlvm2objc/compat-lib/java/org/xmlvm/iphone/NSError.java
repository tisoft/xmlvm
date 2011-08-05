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

import java.util.Map;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSError extends NSObject {
    private String              domain;
    private int                 code;
    private Map<Object, Object> userInfo;


    public NSError(String domain, int code, Map<Object, Object> userInfo) {
        this.domain = domain;
        this.code = code;
        this.userInfo = userInfo;
    }

    public static NSError error(String domain, int code, Map<Object, Object> userInfo) {
        return new NSError(domain, code, userInfo);
    }

    public String domain() {
        return domain;
    }

    public int code() {
        return code;
    }

    public Map<Object, Object> userInfo() {
        return userInfo;
    }

    public String description() {
        return "Error: <" + code + "> <" + domain + ">";
    }


    public static class Domain {

        public static final String NSCocoa    = "NSCocoaErrorDomain";
        public static final String NSURL      = "NSURLErrorDomain";
        public static final String NSPOSIX    = "NSPOSIXErrorDomain";
        public static final String NSOSStatus = "NSOSStatusErrorDomain";
        public static final String NSMach     = "NSMachErrorDomain";
    }


    public static class Key {

        public static final String NSLocalizedDescription        = "NSLocalizedDescription";
        public static final String NSFilePathError               = "NSFilePath";
        public static final String NSStringEncodingError         = "NSStringEncoding";
        public static final String NSUnderlyingError             = "NSUnderlyingError";
        public static final String NSURLError                    = "NSURL";
        public static final String NSLocalizedFailureReason      = "NSLocalizedFailureReason";
        public static final String NSLocalizedRecoverySuggestion = "NSLocalizedRecoverySuggestion";
        public static final String NSLocalizedRecoveryOptions    = "NSLocalizedRecoveryOptions";
        public static final String NSRecoveryAttempter           = "NSRecoveryAttempter";
        public static final String NSHelpAnchor                  = "NSHelpAnchor";
        public static final String NSURLErrorFailingURL          = "NSErrorFailingURLKey";
        public static final String NSURLErrorFailingURLString    = "NSErrorFailingURLStringKey";
        public static final String NSURLErrorFailingURLPeerTrust = "NSURLErrorFailingURLPeerTrustErrorKey";
    }


    public static class ErrorCode {

        public static class NSCocoa {

            public static final int NSFileNoSuchFileError                      = 4;
            public static final int NSFileLockingError                         = 255;
            public static final int NSFileReadUnknownError                     = 256;
            public static final int NSFileReadNoPermissionError                = 257;
            public static final int NSFileReadInvalidFileNameError             = 258;
            public static final int NSFileReadCorruptFileError                 = 259;
            public static final int NSFileReadNoSuchFileError                  = 260;
            public static final int NSFileReadInapplicableStringEncodingError  = 261;
            public static final int NSFileReadUnsupportedSchemeError           = 262;
            public static final int NSFileReadTooLargeError                    = 263;
            public static final int NSFileReadUnknownStringEncodingError       = 264;
            public static final int NSFileWriteUnknownError                    = 512;
            public static final int NSFileWriteNoPermissionError               = 513;
            public static final int NSFileWriteInvalidFileNameError            = 514;
            public static final int NSFileWriteInapplicableStringEncodingError = 517;
            public static final int NSFileWriteUnsupportedSchemeError          = 518;
            public static final int NSFileWriteOutOfSpaceError                 = 640;
            public static final int NSFileWriteVolumeReadOnlyError             = 642;
            public static final int NSKeyValueValidationError                  = 1024;
            public static final int NSFormattingError                          = 2048;
            public static final int NSUserCancelledError                       = 3072;
            public static final int NSFileErrorMinimum                         = 0;
            public static final int NSFileErrorMaximum                         = 1023;
            public static final int NSValidationErrorMinimum                   = 1024;
            public static final int NSValidationErrorMaximum                   = 2047;
            public static final int NSFormattingErrorMinimum                   = 2048;
            public static final int NSFormattingErrorMaximum                   = 2559;
            public static final int NSPropertyListReadCorruptError             = 3840;
            public static final int NSPropertyListReadUnknownVersionError      = 3841;
            public static final int NSPropertyListReadStreamError              = 3842;
            public static final int NSPropertyListWriteStreamError             = 3851;
            public static final int NSPropertyListErrorMinimum                 = 3840;
            public static final int NSPropertyListErrorMaximum                 = 4095;
            public static final int NSExecutableErrorMinimum                   = 3584;
            public static final int NSExecutableNotLoadableError               = 3584;
            public static final int NSExecutableArchitectureMismatchError      = 3585;
            public static final int NSExecutableRuntimeMismatchError           = 3586;
            public static final int NSExecutableLoadError                      = 3587;
            public static final int NSExecutableLinkError                      = 3588;
            public static final int NSExecutableErrorMaximum                   = 3839;
        }


        public static class NSURL {

            public static final int Unknown                          = -1;
            public static final int Cancelled                        = -999;
            public static final int BadURL                           = -1000;
            public static final int TimedOut                         = -1001;
            public static final int UnsupportedURL                   = -1002;
            public static final int CannotFindHost                   = -1003;
            public static final int CannotConnectToHost              = -1004;
            public static final int DataLengthExceedsMaximum         = -1103;
            public static final int NetworkConnectionLost            = -1005;
            public static final int DNSLookupFailed                  = -1006;
            public static final int HTTPTooManyRedirects             = -1007;
            public static final int ResourceUnavailable              = -1008;
            public static final int NotConnectedToInternet           = -1009;
            public static final int RedirectToNonExistentLocation    = -1010;
            public static final int BadServerResponse                = -1011;
            public static final int UserCancelledAuthentication      = -1012;
            public static final int UserAuthenticationRequired       = -1013;
            public static final int ZeroByteResource                 = -1014;
            public static final int CannotDecodeRawData              = -1015;
            public static final int CannotDecodeContentData          = -1016;
            public static final int CannotParseResponse              = -1017;
            public static final int InternationalRoamingOff          = -1018;
            public static final int CallIsActive                     = -1019;
            public static final int DataNotAllowed                   = -1020;
            public static final int RequestBodyStreamExhausted       = -1021;
            public static final int FileDoesNotExist                 = -1100;
            public static final int FileIsDirectory                  = -1101;
            public static final int NoPermissionsToReadFile          = -1102;
            public static final int SecureConnectionFailed           = -1200;
            public static final int ServerCertificateHasBadDate      = -1201;
            public static final int ServerCertificateUntrusted       = -1202;
            public static final int ServerCertificateHasUnknownRoot  = -1203;
            public static final int ServerCertificateNotYetValid     = -1204;
            public static final int ClientCertificateRejected        = -1205;
            public static final int ClientCertificateRequired        = -1206;
            public static final int CannotLoadFromNetwork            = -2000;
            public static final int CannotCreateFile                 = -3000;
            public static final int CannotOpenFile                   = -3001;
            public static final int CannotCloseFile                  = -3002;
            public static final int CannotWriteToFile                = -3003;
            public static final int CannotRemoveFile                 = -3004;
            public static final int CannotMoveFile                   = -3005;
            public static final int DownloadDecodingFailedMidStream  = -3006;
            public static final int DownloadDecodingFailedToComplete = -3007;            
        }
    }
}
