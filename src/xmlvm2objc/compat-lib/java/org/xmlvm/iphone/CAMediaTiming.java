/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public interface CAMediaTiming {

    public boolean isAutoreverses();

    public void setAutoreverses(boolean autoreverses);

    public double getBeginTime();

    public void setBeginTime(double beginTime);

    public double getDuration();

    public void setDuration(double duration);

    public String getFillMode();

    public void setFillMode(String fillMode);

    public float getRepeatCount();

    public void setRepeatCount(float repeatCount);

    public double getRepeatDuration();

    public void setRepeatDuration(double repeatDuration);

    public float getSpeed();

    public void setSpeed(float speed);

    public double getTimeOffset();

    public void setTimeOffset(double timeOffset);
}
