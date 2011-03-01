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

import org.xmlvm.iphone.UIAccelerometer;

public class AccelerometerPanel extends JPanel implements AdjustmentListener {

    private JScrollBar xAxisControl;
    private JScrollBar yAxisControl;
    private JScrollBar zAxisControl;


    public AccelerometerPanel() {
        this.setLayout(null);
        this.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createEmptyBorder(5, 5, 5,
                5), BorderFactory.createCompoundBorder(BorderFactory.createTitledBorder(null,
                "Accelerometer", TitledBorder.DEFAULT_JUSTIFICATION, TitledBorder.DEFAULT_POSITION,
                new Font("Dialog", Font.BOLD, 12), new Color(51, 51, 51)), BorderFactory
                .createEmptyBorder(5, 5, 5, 5))));
        this.setSize(120, 160);
        addControls();
        setAccelerated(0, 0, 0);
    }

    private void addControls() {
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

    private void setControlParameters(JScrollBar control) {
        control.setBlockIncrement(1);
        control.setMaximum(100);
        control.setSize(20, 100);
        control.addAdjustmentListener(this);
    }

    public void adjustmentValueChanged(AdjustmentEvent event) {
        float x = computeAcceleratedValue(xAxisControl);
        float y = computeAcceleratedValue(yAxisControl);
        float z = computeAcceleratedValue(zAxisControl);
        UIAccelerometer.setAcceleratedInternal(x, y, z);
    }

    private float computeAcceleratedValue(JScrollBar control) {
        int value = control.getValue();
        if (value == control.getMaximum())
            return 1;
        float v = ((float) value / (float) (100 - control.getVisibleAmount()) - 0.5f) * 2;
        return v;
    }

    public void setAccelerated(double x, double y, double z) {
        setAcceleratedValue(xAxisControl, x);
        setAcceleratedValue(yAxisControl, y);
        setAcceleratedValue(zAxisControl, z);
    }

    private void setAcceleratedValue(JScrollBar control, double x) {
        int pos = (int) ((x + 1.0f) * (100.0f - control.getVisibleAmount()) / 2.0f);
        control.setValue(pos);
    }

}
