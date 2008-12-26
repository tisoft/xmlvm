package org.xmlvm.demo;

import java.awt.Button;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Frame;

public class SmallUiDemo {
  public static void main(String[] args) {
    Frame frame = new Frame();
    frame.setTitle("UI Demo");
    frame.setLayout(null);
    frame.setSize(new Dimension(300, 300));
    frame.setBackground(Color.BLACK);
    frame.setVisible(true);
    ImagePanel img = new ImagePanel("doc/fireworks/star1.png");
    img.setBounds(50, 50, 20, 20);
    frame.add(img);
  }
}
