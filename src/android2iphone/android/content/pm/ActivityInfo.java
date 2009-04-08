package android.content.pm;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Information you can retrieve about a particular application activity or
 * receiver. This corresponds to information collected from the
 * AndroidManifest.xml's <activity> and <receiver> tags.
 */
public class ActivityInfo {
    public static final int SCREEN_ORIENTATION_LANDSCAPE = 0;
    public static final int SCREEN_ORIENTATION_PORTRAIT  = 1;
    public static final int SCREEN_ORIENTATION_USER      = 2;
    public static final int SCREEN_ORIENTATION_BEHIND    = 3;
    public static final int SCREEN_ORIENTATION_SENSOR    = 4;
    public static final int SCREEN_ORIENTATION_NOSENSOR  = 5;
}
