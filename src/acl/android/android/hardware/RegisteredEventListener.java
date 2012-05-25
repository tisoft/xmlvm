package android.hardware;

/**
 * Helper class for keeping registered listeners.
 */
public class RegisteredEventListener {
    SensorEventListener listener = null;
    Sensor              sensor   = null;
    int                 rate     = 0;


    public RegisteredEventListener(SensorEventListener listener, Sensor sensor, int rate) {
        this.listener = listener;
        this.sensor = sensor;
        this.rate = rate;
    }


    /**
     * @return the listener
     */
    public SensorEventListener getListener() {
        return listener;
    }


    /**
     * @return the sensor
     */
    public Sensor getSensor() {
        return sensor;
    }


    /**
     * @return the rate
     */
    public int getRate() {
        return rate;
    }
}