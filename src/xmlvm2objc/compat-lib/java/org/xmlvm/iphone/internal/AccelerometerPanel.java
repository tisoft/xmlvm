
package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.AdjustmentEvent;
import java.awt.event.AdjustmentListener;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollBar;
import javax.swing.SwingConstants;
import javax.swing.border.TitledBorder;

import org.xmlvm.iphone.IAccelerated;
import org.xmlvm.iphone.UIApplication;



public class AccelerometerPanel
    extends JPanel
    implements AdjustmentListener
{

    private JScrollBar xAxisControl;
    private JScrollBar yAxisControl;
    private JScrollBar zAxisControl;



    public AccelerometerPanel()
    {
        this.setLayout(null);
        this.setBorder(BorderFactory.createCompoundBorder(BorderFactory
                .createEmptyBorder(5, 5, 5, 5), BorderFactory
                .createCompoundBorder(BorderFactory.createTitledBorder(null,
                        "Accelerometer", TitledBorder.DEFAULT_JUSTIFICATION,
                        TitledBorder.DEFAULT_POSITION, new Font("Dialog",
                                                                Font.BOLD, 12),
                        new Color(51, 51, 51)), BorderFactory
                        .createEmptyBorder(5, 5, 5, 5))));
        this.setSize(120, 160);
        addControls();
    }



    private void addControls()
    {
        JLabel label;

        // X
        xAxisControl = new JScrollBar();
        setControlParameters(xAxisControl);
        xAxisControl.setLocation(20, 30);
        this.add(xAxisControl, 0);
        label = new JLabel("X");
        label.setBounds(20, 130, 20, 20);
        label.setHorizontalAlignment(SwingConstants.CENTER);
        this.add(label, 0);

        // Y
        yAxisControl = new JScrollBar();
        setControlParameters(yAxisControl);
        yAxisControl.setLocation(50, 30);
        this.add(yAxisControl, 0);
        label = new JLabel("Y");
        label.setBounds(50, 130, 20, 20);
        label.setHorizontalAlignment(SwingConstants.CENTER);
        this.add(label, 0);

        // Z
        zAxisControl = new JScrollBar();
        setControlParameters(zAxisControl);
        zAxisControl.setLocation(80, 30);
        this.add(zAxisControl, 0);
        label = new JLabel("Z");
        label.setBounds(80, 130, 20, 20);
        label.setHorizontalAlignment(SwingConstants.CENTER);
        this.add(label, 0);
    }



    private void setControlParameters(JScrollBar control)
    {
        control.setBlockIncrement(1);
        control.setMaximum(100);
        control.setSize(20, 100);
        control.addAdjustmentListener(this);
    }



    public void adjustmentValueChanged(AdjustmentEvent event)
    {
        float x = computeAcceleratedValue(xAxisControl);
        float y = computeAcceleratedValue(yAxisControl);
        float z = computeAcceleratedValue(zAxisControl);
        if(UIApplication.theApplication instanceof IAccelerated)
        {
        	IAccelerated accel = (IAccelerated) UIApplication.theApplication;
        	accel.OnAccelerate(x, y, z);
        }
    }



    private float computeAcceleratedValue(JScrollBar control)
    {
        int value = control.getValue();
        if (value == control.getMaximum())
            return 1;
        return (((float) value / (float) (100 - control.getVisibleAmount()) - 0.5f) * 2) / 2.0f;
    }



    public void setAccelerated(float xAxis, float yAxis, float zAxis)
    {
        setAcceleratedValue(xAxisControl, xAxis);
        setAcceleratedValue(yAxisControl, yAxis);
        setAcceleratedValue(zAxisControl, zAxis);
    }



    private void setAcceleratedValue(JScrollBar control, float value)
    {
        int pos = (int) ((value + 0.5f) * (100 - control.getVisibleAmount()));
        control.setValue(pos);
    }

}
