package edu.sfsu.AndroidFireworks;



import android.app.Activity;
import android.app.ActivityImpl;
import android.os.Bundle;
import android.os.Handler;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;

public class AndroidFireworks extends Activity implements Runnable {
	
	
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
	
	
	
    Handler updater = new Handler();

     
	public AbsoluteLayout layout;
	public Fireworks f;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	
    	   super.onCreate(savedInstanceState);
    	   layout = new AbsoluteLayout(this);
    	   setContentView(layout);
    	   
           f = new Fireworks(this);

           updater.postDelayed(this, 50);
           
    }
	public void run()
	{  
		
		f.doUpdate();
		layout.invalidate();
		updater.postDelayed(this, 50);
	
		
	}
}

class Spark
{

    ImageView panel; 
    public float x;
    public float y;
    public float vx;
    public float vy;
}



class Bomb
{

    Spark[]   sparks;
    AndroidFireworks parent;



    public Bomb(AndroidFireworks parent_)
    {
        this.parent = parent_;
        sparks = new Spark[Fireworks.SPARK_COUNT];
        for (int i = 0; i < sparks.length; ++i) {
            sparks[i] = new Spark();
            sparks[i].panel = new ImageView(parent);
            sparks[i].panel.setImageResource(R.drawable.spark);
            parent.layout.addView(sparks[i].panel);
        }
    }



    public void init(int x, int y)
    {
        for (int i = 0; i < sparks.length; ++i) {

            sparks[i].x = x;
            sparks[i].y = y;

            sparks[i].vx = (float) (Math.random() * 60) - 30;
            sparks[i].vy = (float) (Math.random() * 60) - 30;
        }
    }



    public void calcNextStep(float secondsPassed, float dV)
    {

        for (int i = 0; i < sparks.length; ++i) {
            if (	(sparks[i].x < parent.f.WINDOW_WIDTH) 
            		&& (sparks[i].x > -20)
                    && (sparks[i].y < parent.f.WINDOW_HEIGHT)
                    && (sparks[i].y > -20)) {
                // Calculate new positions
                sparks[i].vy += dV;
                sparks[i].y += secondsPassed * sparks[i].vy;
                sparks[i].x += secondsPassed * sparks[i].vx;

                // Update the position
                AbsoluteLayout.LayoutParams p =  
                	new AbsoluteLayout.LayoutParams(
                			AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                   			AbsoluteLayout.LayoutParams.WRAP_CONTENT,
	                		(int) sparks[i].x, 
	                		(int) sparks[i].y);
                
                sparks[i].panel.setLayoutParams(p);
            }
        }
    }
}






class Fireworks 
{
	
    public static int        SPARK_WIDTH      = 19;
    public static int        SPARK_HEIGHT     = 20;
    public static int        SPARK_COUNT      = 20;
    public static int        BOMB_COUNT       = 4;

    public int        WINDOW_WIDTH     = 800;
    public int        WINDOW_HEIGHT    = 600;

    final float              G                = 9.81f;       // m/(s*s)
    final float              t                = 0.25f;       // s
    final float              dV               = t * G;       // m/s

    int                      counter          = 0;
    int                      pointer          = 0;

    Bomb[]                   bombs;




    AndroidFireworks form;
    public Fireworks(AndroidFireworks form)
    {
    	this.form = form; 
    	
        
    	WINDOW_WIDTH = 320;
    	WINDOW_HEIGHT = 480;
        

        bombs = new Bomb[BOMB_COUNT];
        for (int i = 0; i < bombs.length; ++i) {
            bombs[i] = new Bomb(form);
        }
        
       
    }



    public void doUpdate()
    {
    	  if (counter-- <= 0) 
 	     {
 	            counter = 15;

 	            pointer = (pointer + 1) % bombs.length;

 	            int x = (int)(Math.random()*WINDOW_HEIGHT);
 	            
 	            int y = (int)(Math.random()*WINDOW_WIDTH);
 	            bombs[pointer].init(x, y);
 	        }

 	        for (int i = 0; i < bombs.length; ++i) 
 	        {
 	            bombs[i].calcNextStep(t, dV);
 	        }
    }
    
}





