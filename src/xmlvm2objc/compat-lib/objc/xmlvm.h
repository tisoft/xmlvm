/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */


#import <objc/runtime.h>
#import <Foundation/Foundation.h>

#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIApplication.h>
#import <UIKit/UIWindow.h>
#import <UIKit/UIView.h>
#import <UIKit/UIViewController.h>
#import <UIKit/UITableView.h>
#import <UIKit/UITableViewCell.h>
#import <UIKit/UIImage.h>
#import <UIKit/UIImageView.h>
#import <UIKit/UIScreen.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UILabel.h>
#import <UIKit/UITextField.h>
#import <UIKit/UISwitch.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <math.h>


void xmlvm_init();

typedef union {
    id      o;
    int     i;
    float   f;
    double  d;
    long    l;
} XMLVMElem;

typedef union {
    id*             o;
    char*           b;
    unsigned short* c;
    short*          s;
    int*            i;
    float*          f;
    double*         d;
    long*           l;
	void*           data;
} XMLVMElemPtr;


extern id JAVA_NULL;

@interface XMLVMArray : NSObject // TODO should be java_lang_Object
{
    @public XMLVMElemPtr array;
    @public int          type;
    @public int          length;
    @public BOOL         ownsData;
}

+ (XMLVMArray*) createSingleDimensionWithType:(int) type andSize:(int) size;
+ (XMLVMArray*) createSingleDimensionWithType:(int) type size:(int) size andData:(void*) data;
+ (XMLVMArray*) createMultiDimensionsWithType:(int) type dimensions:(XMLVMElem*) dim count:(int)count;
+ (void) fillArray:(XMLVMArray*) array withData:(void*) data;
+ (int) sizeOfBaseTypeInBytes:(int) type;
- (id) objectAtIndex:(int) idx;
- (void) replaceObjectAtIndex:(int) idx withObject:(id) obj;
- (int) count;
- (XMLVMArray*) clone__;

@end


void ERROR(char* msg);
