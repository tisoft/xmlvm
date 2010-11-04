package org.xmlvm.demo.helloandroidworld;

import android.app.Activity;
import android.os.Bundle;
import android.widget.AbsoluteLayout;
import android.widget.Button;

/**
 * A simple demo with which simple Android functionality can be tested.
 */
public class HelloWorld1 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        AbsoluteLayout layout = new AbsoluteLayout(this);
        Button okButton = new Button(this);
        okButton.setText("Android Button");
        AbsoluteLayout.LayoutParams p = new AbsoluteLayout.LayoutParams(280, 40,
                20, 20);
        okButton.setLayoutParams(p);
        layout.addView(okButton);
        setContentView(layout);
    }
}
