
qx.Class.define("java_awt_GridBagLayout", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    $EMPIRICMULTIPLIER: 0,
    $MAXGRIDSIZE: 0,
    $MINSIZE: 0,
    $PREFERREDSIZE: 0,
    $serialVersionUID: 0
  }, //statics

  members:
  {
    $comptable: 0,
    $defaultConstraints: 0,
    $layoutInfo: 0,
    $columnWidths: 0,
    $rowHeights: 0,
    $columnWeights: 0,
    $rowWeights: 0,
    $componentAdjusting: 0,
    $rightToLeft: 0,
    $$init_ : function()
    {
        this.layout = new qx.ui.layout.Grid();
        this.maxColWeight = new Array();
        this.maxRowWeight = new Array();
    },
    $getQXLayoutManager : function()
    {
        return this.layout;
    },
    $getQXLayoutProperties___java_awt_Component_java_lang_Object : function( __arg1,  __arg2)
    {
        var component = __arg1.getQX();
        var constraints = __arg2;
        var qxConstraints = {};
        var row = constraints.$gridy;
        var col = constraints.$gridx;
        var rowSpan = constraints.$gridheight;
        var colSpan = constraints.$gridwidth;
        qxConstraints.row = row;
        qxConstraints.column = col;
        qxConstraints.rowSpan = rowSpan;
        qxConstraints.colSpan = colSpan;
        var componentConstraints = {
                       marginTop: constraints.$insets.$top,
                       marginBottom: constraints.$insets.$bottom,
                       marginLeft: constraints.$insets.$left,
                       marginRight: constraints.$insets.$right};
        if (constraints.$fill == 1) {
          // BOTH
          componentConstraints.allowGrowX = true;
          componentConstraints.allowGrowY = true;
        }
        if (constraints.$fill == 2) {
          // HORIZONTAL
          componentConstraints.allowGrowX = true;
        }
        if (constraints.$fill == 3) {
          // VERTICAL
          componentConstraints.allowGrowY = true;
        }
        if (constraints.$anchor == 10) {
          // CENTER
          componentConstraints.alignX = 'center';
          componentConstraints.alignY = 'middle';
        }
        else if (constraints.$anchor == 17) {
          // WEST
          componentConstraints.alignX = 'left';
        }
        else {
          console.log("Unknown anchor: " + constraints.$anchor);
        }
        
        var colWeight = (constraints.$weightx * 100) / colSpan;
        for (var i = col; i < col + colSpan; i++) {
          if (this.maxColWeight[i] == undefined) {
            this.maxColWeight[i] = colWeight;
            this.layout.setColumnFlex(i, colWeight);
          }
          if (colSpan == 1 && colWeight == 0.0) {
            // TODO for cells with colSpan == 1 who have requested
            // a weight of 0, we reset the weight to 0 despite
            // possible greater weights of other cells.
            this.maxColWeight[i] = 0.0;
            this.layout.setColumnFlex(i, 0);
            break;
          }
          if (this.maxColWeight[i] == 0.0 && colSpan > 1)
            continue;
          if (colWeight > this.maxColWeight[i]) {
            this.maxColWeight[i] = colWeight;
            this.layout.setColumnFlex(i, colWeight);
          }
        }
        
        var rowWeight = (constraints.$weighty * 100) / rowSpan;
        for (var i = row; i < row + rowSpan; i++) {
          if (this.maxRowWeight[i] == undefined) {
            this.maxRowWeight[i] = rowWeight;
            this.layout.setRowFlex(i, rowWeight);
          }
          if (rowSpan == 1 && rowWeight == 0.0) {
            // TODO for cells with rowSpan == 1 who have requested
            // a weight of 0, we reset the weight to 0 despite
            // possible greater weights of other cells.
            this.maxRowWeight[i] = 0.0;
            this.layout.setRowFlex(i, 0);
            break;
          }
          if (this.maxRowWeight[i] == 0.0 && rowSpan > 1)
            continue;
          if (rowWeight > this.maxRowWeight[i]) {
            this.maxRowWeight[i] = rowWeight;
            this.layout.setRowFlex(i, rowWeight);
          }
        }
        
        /*
        if (constraints.$gridwidth <= 1)
        this.layout.setColumnFlex(qxConstraints.column, constraints.$weightx * 100);
        if (constraints.$gridheight <= 1)
        this.layout.setRowFlex(qxConstraints.row, constraints.$weighty * 100);
        */
        component.set(componentConstraints);
        return qxConstraints;
    },
    $setConstraints___java_awt_Component_java_awt_GridBagConstraints : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getConstraints___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $lookupConstraints___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $removeConstraints___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutOrigin : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutDimensions : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutWeights : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $location___int_int : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $addLayoutComponent___java_lang_String_java_awt_Component : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $addLayoutComponent___java_awt_Component_java_lang_Object : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $removeLayoutComponent___java_awt_Component : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $preferredLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $minimumLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $maximumLayoutSize___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutAlignmentX___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutAlignmentY___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $invalidateLayout___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $layoutContainer___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $toString : function()
    {
    	throw "NOT IMPLEMENTED";
    },
    $getLayoutInfo___java_awt_Container_int : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $preInitMaximumArraySizes___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $GetLayoutInfo___java_awt_Container_int : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $calculateBaseline___java_awt_Component_java_awt_GridBagConstraints_java_awt_Dimension : function( __arg1,  __arg2,  __arg3)
    {
    	throw "NOT IMPLEMENTED";
    },
    $adjustForGravity___java_awt_GridBagConstraints_java_awt_Rectangle : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $AdjustForGravity___java_awt_GridBagConstraints_java_awt_Rectangle : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $alignOnBaseline___java_awt_GridBagConstraints_java_awt_Rectangle_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
    	throw "NOT IMPLEMENTED";
    },
    $alignAboveBaseline___java_awt_GridBagConstraints_java_awt_Rectangle_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
    	throw "NOT IMPLEMENTED";
    },
    $alignBelowBaseline___java_awt_GridBagConstraints_java_awt_Rectangle_int_int : function( __arg1,  __arg2,  __arg3,  __arg4)
    {
    	throw "NOT IMPLEMENTED";
    },
    $centerVertically___java_awt_GridBagConstraints_java_awt_Rectangle_int : function( __arg1,  __arg2,  __arg3)
    {
    	throw "NOT IMPLEMENTED";
    },
    $getMinSize___java_awt_Container_java_awt_GridBagLayoutInfo : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $GetMinSize___java_awt_Container_java_awt_GridBagLayoutInfo : function( __arg1,  __arg2)
    {
    	throw "NOT IMPLEMENTED";
    },
    $arrangeGrid___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    },
    $ArrangeGrid___java_awt_Container : function( __arg1)
    {
    	throw "NOT IMPLEMENTED";
    }
  } //members
}); //qx.Class.define
