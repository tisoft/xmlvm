package org.xmlvm.tutorial.android.sound;

import java.io.IOException;
import android.app.Activity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.ToggleButton;

/**
 * This application demonstrates the use of the MediaPlayer. The application has
 * a single activity : SoundActivity. A button is provided which allows the user
 * to start and stop the audio playback. A switch is provided to enable/disable
 * the looping of playback. If the looping is enabled the MediaPlayer remains in
 * the 'started' state after the playback has reached the end of the stream. If
 * the looping is not enabled by the user, then the callback method
 * <code>onCompletion()</code> which is registered using
 * <code>setOnCompletionListener()</code> is called. This is when the
 * MediaPlayer is in 'PlaybackCompleted' state.
 * 
 * The MediaPlayer has various states. When the MediaPlayer is created using
 * <code>create()</code> then the it is already in 'prepared' state. If the
 * MediaPlayer is created using 'new' then it is in 'Idle' state and it has to
 * be 'prepared' by calling 'prepare' before it can enter the 'Started' state.
 * The MediaPlayer enters the 'Stopped' state by making call to
 * <code>stop()</code>. When the looping is not enabled and when
 * <code>OnCompletion()</code> is invoked, the MediaPlayer enters the
 * 'PlaybackCompleted' state. The MediaPlayer can also enter 'Paused' state.
 */
public class SoundActivity extends Activity {

	private ToggleButton loopSwitch;
	private MediaPlayer mediaPlayer;
	private TextView loopLabel;
	private Button button;
	private boolean playing = false;
	private boolean first = true;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setupUI();
	}

	/*
	 * This method is called to render the UI required for the activity
	 */
	public void setupUI() {
		setContentView(R.layout.main);

		/*
		 * Button to start and stop the audio playback. The widget is defined in
		 * the resource file which can be located using findViewById().
		 */
		button = (Button) findViewById(R.id.button);
		button.setText("Start playing...");

		/*
		 * A TextView widget is used to display the label for looping switch
		 */
		loopLabel = (TextView) findViewById(R.id.textView);
		loopLabel.setText("Loop file:");

		/*
		 * A ToggleButton is used as switch to enable/disable the looping of
		 * audio playback. The widget is again defined in the resource file
		 * main.xml and can be located using findViewById(). The ToggleButton is
		 * checked by default which enables the looping of audio playback. If
		 * looping is enabled, the MediaPlayer is in 'start' state once the
		 * playback has reached the end.
		 */
		loopSwitch = (ToggleButton) findViewById(R.id.togglebutton);
		loopSwitch.setChecked(true);

		/*
		 * Register a onCliskListener for the toggle button to enable or disable
		 * the looping. When the ToggleButton is 'On', it indicated that the
		 * looping is enabled, and when the ToggleButton is 'Off', it indicated
		 * that the looping is disabled.
		 */
		loopSwitch.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				/*
				 * Set the looping based on the ToggleButton
				 */
				mediaPlayer.setLooping(loopSwitch.isChecked() ? true : false);
			}
		});

		/*
		 * The media player can support several sources. In this example, a
		 * local resource is chosen as the source for playback which has to be
		 * place in the res/raw directory. The local resource is referenced
		 * using the resource ID. When the MediaPlayer is created using
		 * create(), prepare() will be already called on success and it should
		 * not be called again.
		 */
		mediaPlayer = MediaPlayer.create(getBaseContext(), R.raw.rain_thunders);

		/*
		 * Register OnCompletionListener for the MediaPlayer, for the callback
		 * method onCompletion() which will be called when the playback reaches
		 * the end of the stream. This callback method is called only when
		 * looping is not enabled.
		 */
		mediaPlayer
				.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
					public void onCompletion(MediaPlayer mp) {
						button.setText("Start playing ...");
						playing = false;
						first = true;
					}
				});
	}

	/*
	 * This method is called when the button for starting/ stopping the audio
	 * playback is clicked
	 */
	public void onClick(View view) {

		/*
		 * If the audio playback is playing onClick, then stop the playback and
		 * set the appropriate text display on the button
		 */
		if (playing) {
			button.setText("Start playing ...");
			playing = false;
			mediaPlayer.stop();
		}

		/*
		 * If the playback is not playing then start the playback by setting the
		 * looping based on ToggleButton
		 */
		else {
			button.setText("Stop playing ...");
			playing = true;
			mediaPlayer.setLooping(loopSwitch.isChecked() ? true : false);

			if (first == true)
				first = false;

			else {
				try {
					/*
					 * The MediaPlayer has to be in 'Prepared' state before it
					 * is 'Started'. prepare() need not be called during the
					 * first playback since it will be already called by
					 * create(). Once the MediaPlayer has entered 'stopped'
					 * state using stop(), the MediaPlayer has to be 'prepared'
					 * before it is 'started'.
					 */
					mediaPlayer.prepare();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			mediaPlayer.start();
		}
	}

	/*
	 * This method is called as a clean up of the resources onDestroy It is a
	 * good practice to release any resource when you are done with the
	 * MediaPlayer. Proper handling of the resources has to be done onPause()
	 * which is not currently handled in this example.
	 */
	public void stopPlaying() {
		if (mediaPlayer != null) {
			if (mediaPlayer.isPlaying()) {
				mediaPlayer.stop();
				playing = false;
			}

			mediaPlayer.release();
			mediaPlayer = null;
		}
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		stopPlaying();
	}
}