package org.xmlvm.proc.in;

import org.xmlvm.proc.XmlvmResource;

/**
 * This InputProcess does nothing. It is for use by targets which do not require
 * or need any actual input
 * 
 * @author teras
 */
public class EmptyInputProcess extends InputProcess {

    /**
     * The signature of this input process. If a target requires this string as
     * input, means that actually no input is required
     */
    public final static String DUMMY_SIGNATURE = "<<DUMMY_INPUT>>";

    /**
     * Create a new empty input process
     */
    public EmptyInputProcess() {
        super(null, null);
    }

    /**
     * Check if the desired input process is actually an empty process
     * 
     * @param input
     *            The input String to check if "empty input process" is required
     * @return true, if empty input process is required
     */
    public static boolean isEmptyInput(String input) {
        return input.equals(DUMMY_SIGNATURE);
    }

    /**
     * Empty function of getXmlvm
     * 
     * @return Always returns null
     */
    public XmlvmResource getXmlvm() {
        return null;
    }

    /**
     * Process of input
     * 
     * @return Always return true (success) since no actual process is needed
     */
    public boolean process() {
        return true;
    }
}
