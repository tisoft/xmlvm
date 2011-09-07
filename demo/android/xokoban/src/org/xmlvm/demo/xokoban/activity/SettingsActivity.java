package org.xmlvm.demo.xokoban.activity;

import org.xmlvm.demo.xokoban.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;

public class SettingsActivity extends Activity {
    public static final String KEY_ACCELEROMETER_ENABLED = "accelerometerEnabled:";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // No title bar.
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);

        // Switch to fullscreen view, getting rid of the status bar as well.
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.settings);

        // Read accelerometer state we got from calling activity.
        final boolean accelerometerEnabled = getIntent().getBooleanExtra(KEY_ACCELEROMETER_ENABLED,
                false);
        getAccelerometerCheckBox().setChecked(accelerometerEnabled);

        // Hook up save button listener.
        getSaveButton().setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                // Send the information about the checkbox state back to the
                // calling activity.
                setResult(RESULT_OK, new Intent().putExtra(KEY_ACCELEROMETER_ENABLED,
                        getAccelerometerCheckBox().isChecked()));
                SettingsActivity.this.finish();
            }
        });

        // As iOS doesn't have checkbox labels, we emulate here that a label
        // click will toggle the state of the checkbox, just as a real label
        // would.
        getCheckBoxLabel().setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View arg0) {
                CheckBox checkBox = getAccelerometerCheckBox();
                checkBox.setChecked(!checkBox.isChecked());
            }
        });
    }

    private CheckBox getAccelerometerCheckBox() {
        return (CheckBox) findViewById(R.id.accelerometer);
    }

    private TextView getCheckBoxLabel() {
        return (TextView) findViewById(R.id.checkBoxLabel);
    }

    private Button getSaveButton() {
        return (Button) findViewById(R.id.saveButton);
    }
}
