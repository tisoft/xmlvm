package org.xmlvm.AndroidFireworks;


import android.app.Activity;
import android.app.ActivityImpl;
import android.os.Bundle;
import android.os.Handler;
import android.widget.AbsoluteLayout;

public class AndroidFireworks extends Activity {
	
	
	public static ActivityImpl __xmlvm_iphone_entrypoint(ActivityImpl me)
	{
		// Iphone entry point. 
    	AndroidFireworks fw = new AndroidFireworks();
    	ActivityImpl.rootApp = me;
    	me.parent = fw;
		fw.myIphoneWrapper = me;
		return me;
	}
	
	public static void main(String [] args)
	{
		// simulator entry point
		Activity toRun = new AndroidFireworks();
		// launch point for java land
		ActivityImpl implementaton = new ActivityImpl(toRun);
		toRun.myIphoneWrapper = implementaton;
		implementaton.applicationDidFinishLaunching(null);
	}
	
    /** Called when the activity is first created. */
	
	
	public static final int UPDATE =  1337; 

    Handler updater = new Handler();

     
	public AbsoluteLayout layout;
	public Fireworks f;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
    	   super.onCreate(savedInstanceState);
    	   layout = new AbsoluteLayout(this);
    	   setContentView(layout);
           f = new Fireworks(this);
           updater.postDelayed(updateFw, 100);
    }
    
    private Runnable updateFw = new Runnable()
    {
    	public void run()
    	{
    		f.doUpdate();
    		updater.postDelayed(updateFw, 50);
    		layout.invalidate();
    		
    	}
    };
    
	
}


class Fireworks 
{
	
    Bomb[]           bombs;
    AndroidFireworks form;

    public Fireworks(AndroidFireworks form)
    {
    	this.form = form; 
    	
        bombs = new Bomb[Const.BOMB_COUNT];
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            bombs[j] = new Bomb(form);
            bombs[j].resetWithX(
                    (int) (Math.random() * (Const.WIDTH - 60)) + 30,
                    (int) (Math.random() * (Const.HEIGHT - 60)) + 30);
        }
    }



    public void doUpdate()
    {
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
        	Bomb bomb = bombs[j];
            if (bomb.allOutOfSight()) {
                bomb.resetWithX((int) (Math.random() * Const.WIDTH),
                        (int) (Math.random() * Const.HEIGHT));
            }
            for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                // Update the position
            	Spark spark = bomb.sparks[i];
                spark.nextStep();
                AbsoluteLayout.LayoutParams p =  
                	new AbsoluteLayout.LayoutParams(
                			AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                   			AbsoluteLayout.LayoutParams.WRAP_CONTENT,
	                		(int) spark.x, 
	                		(int) spark.y);
                
                spark.image.setLayoutParams(p);
            }
        }
    }
    
}





