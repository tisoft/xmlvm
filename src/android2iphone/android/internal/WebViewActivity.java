/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.internal;

import org.xmlvm.iphone.NSURL;
import org.xmlvm.iphone.UIApplication;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class WebViewActivity extends Activity {

    private WebView webView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        /*
         * Right now we launch the external browser. The code below that is
         * DISABLED instantiated an internal WebView with a simple back-button
         * to go back to the last activity. Since iOS supports multitasking now,
         * it is probably better to launch an external browser and then switch
         * back to the calling application.
         */
        Uri uri = this.getIntent().xmlvmGetUri();
        NSURL url = NSURL.URLWithString(uri.xmlvmGetUri());
        UIApplication.sharedApplication().openURL(url);
    }

    protected void onCreateDISABLED(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RelativeLayout layout = new RelativeLayout(this);
        Button returnButton = new Button(this);
        LayoutParams params = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT,
                LayoutParams.WRAP_CONTENT);
        params.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM, RelativeLayout.TRUE);
        params.addRule(RelativeLayout.CENTER_HORIZONTAL, RelativeLayout.TRUE);
        params.setMargins(10, 10, 10, 10);
        returnButton.setLayoutParams(params);
        returnButton.setId(1);
        returnButton.setText("Return");
        returnButton.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View view) {
                WebViewActivity.this.finish();
            }

        });
        layout.addView(returnButton);

        webView = new WebView(this);
        params = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT,
                LayoutParams.WRAP_CONTENT);
        params.addRule(RelativeLayout.ABOVE, returnButton.getId());
        webView.setLayoutParams(params);
        layout.addView(webView);

        setContentView(layout);
    }

    protected void onResumeDISABLED() {
        super.onResume();
        Uri uri = this.getIntent().xmlvmGetUri();
        webView.loadUrl(uri.xmlvmGetUri());
    }

}
