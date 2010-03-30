/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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

qx.Class.define("android_view_View", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  qx: 0,
	  getQX: function() {
	    return this.qx;
      },
      $setLayoutParams___android_view_ViewGroup$LayoutParams: function(params) {
          // TODO: Width and height may have special case like -1 and -2 ...
    	  this.qx.setMarginLeft(params.$$$left);
    	  this.qx.setMarginTop(params.$$$top);
    	  this.qx.setMarginRight(params.$$$right);
    	  this.qx.setMarginBottom(params.$$$bottom);
    	  if (params.$$$width >= 0) {
    		  this.qx.setWidth(params.$$$width);
    	  }
    	  if (params.$$$width == -1 /* FILL_PARENT */) {
    		  this.qx.setAllowGrowX(true);
    	  }
    	  if (params.$$$height >= 0) {
    		  this.qx.setHeight(params.$$$height);
    	  }
    	  if (params.$$$height == -1 /* FILL_PARENT */) {
    		  this.qx.setAllowGrowY(true);
    	  }
      },
      $getLayoutParams: function() {
      	var p = new android_widget_AbsoluteLayout$LayoutParams();
    	p.$x = this.qx.getLeftMargin();
    	p.$y = this.qx.getTopMargin();
    	p.$width = this.qx.getWidth();
    	p.$height = this.qx.getHeight();
    	return p;
      },
	  $getContext: function() {
	    // TODO
	    return new android_content_Context();
      },
      $invalidate: function() {
    	  // TODO
      },

	  touchListener: 0,
	  mouseDown: 0,

	  $setOnTouchListener___android_view_View$OnTouchListener: function(listener) {
  	    this.touchListener = listener;
  	    this.qx.addListener("mousedown", this.onMouseDown, this);
  	    this.qx.addListener("mousemove", this.onMouseMove, this);
  	    this.qx.addListener("mouseup", this.onMouseUp, this);
      },
      onMouseDown: function(event) {
    	this.mouseDown = 1;
        var e = new android_view_MotionEvent(0 /*ACTION_DOWN*/, event.getDocumentLeft(), event.getDocumentTop());
        this.touchListener.$onTouch___android_view_View_android_view_MotionEvent(this.qx, e);
      },
      onMouseMove: function(event) {
    	if (this.mouseDown) {
          var e = new android_view_MotionEvent(2 /*ACTION_MOVE*/, event.getDocumentLeft(), event.getDocumentTop());
          this.touchListener.$onTouch___android_view_View_android_view_MotionEvent(this.qx, e);
    	}
      },
      onMouseUp: function(event) {
    	this.mouseDown = 0;
        var e = new android_view_MotionEvent(1 /*ACTION_UP*/, event.getDocumentLeft(), event.getDocumentTop());
        this.touchListener.$onTouch___android_view_View_android_view_MotionEvent(this.qx, e);
      },

	  clickListener: 0,

	  $setOnClickListener___android_view_View$OnClickListener: function(listener) {
  	    this.clickListener = listener;
  	    this.qx.addListener("execute", this.onClick, this);
      },
      onClick: function(event) {
        this.clickListener.$onClick___android_view_View(this.qx);
      },
      $layout___int_int_int_int: function(left, top, right, bottom) {
    	  this.qx.setMarginLeft(parseInt(left));
    	  this.qx.setMarginTop(parseInt(top));
//    	  if (params.$width >=0) {
//    		  this.qx.setWidth(params.$width);
//    	  }
//    	  if (params.$height >=0) {
//    		  this.qx.setHeight(params.$height);
//    	  }
      },
      $setBackgroundColor___int: function(color) {
    	  WARN("View.$setBackgroundColor___int not implemented yet.");
    	  // TODO: Implement.
      },
      $measure___int_int: function(widthMeasureSpec, heightMeasureSpec) {
    	  WARN("View.$measure___int_int not implemented yet.");
    	  // TODO: Implement.
      },
      $getMeasuredHeight: function() {
    	  return this.qx.getHeight();
      },
      $getMeasuredWidth: function() {
    	  return this.qx.getWidth();
      }
  }
});