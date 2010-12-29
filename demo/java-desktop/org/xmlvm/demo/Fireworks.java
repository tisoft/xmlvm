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

package org.xmlvm.demo;

import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import org.xmlvm.client.Timer;

/**
 * Implements a small fireworks application with randomly exploding bombs that
 * emit sparks.
 * 
 * @author Sascha Haeberling
 * 
 */
public class Fireworks implements ActionListener {
    public static final long serialVersionUID = 1;
    public static String     SPARK1_IMG       = "doc/fireworks/star1.png";
    public static String     SPARK2_IMG       = "doc/fireworks/star2.png";
    public static String     SPARK3_IMG       = "doc/fireworks/star3.png";
    public static String     SPARK4_IMG       = "doc/fireworks/star4.png";
    public static int        SPARK_WIDTH      = 19;
    public static int        SPARK_HEIGHT     = 20;
    public static int        SPARK_COUNT      = 20;
    public static int        BOMB_COUNT       = 4;

    public static int        WINDOW_WIDTH     = 800;
    public static int        WINDOW_HEIGHT    = 600;

    final float              G                = 9.81f;                    // m/(s*s)
    final float              t                = 0.55f;                    // s
    final float              dV               = t * G;                    // m/s

    int                      counter          = 0;
    int                      pointer          = 0;

    Bomb[]                   bombs;

    private Frame            frame;

    public static void main(String args[]) {
        new Fireworks();
    }

    public Fireworks() {
        frame = new Frame("XML11 - Fireworks");
        frame.setTitle("XML11 - Fireworks");
        frame.setLayout(null);
        frame.setSize(new Dimension(WINDOW_WIDTH, WINDOW_HEIGHT));
        frame.setBackground(Color.BLACK);
        frame.setVisible(true);
        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });

        bombs = new Bomb[BOMB_COUNT];
        for (int i = 0; i < bombs.length; ++i) {
            bombs[i] = new Bomb(frame);
        }

        Timer timer = new Timer();
        timer.addActionListener(this);
        timer.runRepeating(60);
    }

    public void setLocation(int x, int y) {
        frame.setLocation(x, y);
    }

    public void actionPerformed(ActionEvent e) {
        if (counter-- <= 0) {
            counter = 15;
            pointer = (pointer + 1) % bombs.length;
            int x = ((int) (Math.random() * 600.0)) + 100;
            int y = ((int) (Math.random() * 400.0));
            bombs[pointer].init(x, y);
        }
        for (int i = 0; i < bombs.length; ++i) {
            bombs[i].calcNextStep(t, dV);
        }
    }
}

/**
 * In principle an image with a given position and speed vector.
 * 
 * @author Sascha Haeberling
 * 
 */
class Spark {
    ImagePanel   panel;
    public float x;
    public float y;
    public float vx;
    public float vy;
}

/**
 * A bomb contains a number of sparks. It also contains the logic to calculate
 * the next position of a spark.
 * 
 * @author Sascha Haeberling
 * 
 */
class Bomb {
    Spark[]   sparks;
    Container parent;

    public Bomb(Container parent_) {
        this.parent = parent_;
        sparks = new Spark[Fireworks.SPARK_COUNT];
        // try {
        for (int i = 0; i < sparks.length; ++i) {
            sparks[i] = new Spark();
            double rnd = Math.random() * 4.0;
            if (rnd < 1.0) {
                sparks[i].panel = new ImagePanel(Fireworks.SPARK1_IMG);
            } else if (rnd < 2.0) {
                sparks[i].panel = new ImagePanel(Fireworks.SPARK2_IMG);
            } else if (rnd < 3.0) {
                sparks[i].panel = new ImagePanel(Fireworks.SPARK3_IMG);
            } else {
                sparks[i].panel = new ImagePanel(Fireworks.SPARK4_IMG);
            }
            // sparks[i].panel.loadImage(Fireworks.SPARK_IMG);
            parent.add(sparks[i].panel);
        }
    }

    /**
     * Initialized a bomb at a given position
     * 
     * @param x
     * @param y
     */
    public void init(int x, int y) {
        for (int i = 0; i < sparks.length; ++i) {
            sparks[i].x = x;
            sparks[i].y = y;
            sparks[i].vx = (float) (Math.random() * 60) - 30;
            sparks[i].vy = (float) (Math.random() * 60) - 30;
        }
    }

    /**
     * Calculates the next step.
     * 
     * @param secondsPassed
     * @param dV
     */
    public void calcNextStep(float secondsPassed, float dV) {
        for (int i = 0; i < sparks.length; ++i) {
            if ((sparks[i].x < Fireworks.WINDOW_WIDTH) && (sparks[i].x > -20)
                    && (sparks[i].y < Fireworks.WINDOW_WIDTH) && (sparks[i].y > -20)) {
                // Calculate new positions
                sparks[i].vy += dV;
                sparks[i].y += secondsPassed * sparks[i].vy;
                sparks[i].x += secondsPassed * sparks[i].vx;

                // Update the position
                sparks[i].panel.setBounds((int) sparks[i].x, (int) sparks[i].y,
                        Fireworks.SPARK_WIDTH, Fireworks.SPARK_HEIGHT);
            }
        }
    }
}