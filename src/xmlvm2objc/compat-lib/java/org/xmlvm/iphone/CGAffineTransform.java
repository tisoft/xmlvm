
package org.xmlvm.iphone;



public class CGAffineTransform
{

    public int   type;
    public float alpha;



    public static CGAffineTransform makeRotation(float alpha)
    {
        CGAffineTransform trans = new CGAffineTransform();
        trans.type = 0;  // Rotate
        trans.alpha = alpha;
        return trans;
    }

}
