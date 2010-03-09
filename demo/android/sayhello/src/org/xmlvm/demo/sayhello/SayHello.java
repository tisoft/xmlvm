package org.xmlvm.demo.sayhello;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class SayHello extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Button sayHelloButton = (Button) findViewById(R.id.sayHello);
        sayHelloButton.setText(R.string.app_name);
        sayHelloButton.setOnClickListener(new OnClickListener() {

            public void onClick(View view) {
                EditText name = (EditText) findViewById(R.id.name);
                TextView helloLabel = (TextView) findViewById(R.id.helloLabel);
                helloLabel.setText(getString(R.string.hello) + name.getText() + "!");
            }

        });
    }
}
