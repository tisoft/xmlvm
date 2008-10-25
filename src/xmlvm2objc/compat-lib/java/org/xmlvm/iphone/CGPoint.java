
package org.xmlvm.iphone;


public class CGPoint
{

    public float x;
    public float y;



    public CGPoint(CGPoint point)
    {
        x = point.x;
        y = point.y;
    }



    public CGPoint(float x, float y)
    {
        this.x = x;
        this.y = y;
    }
}
