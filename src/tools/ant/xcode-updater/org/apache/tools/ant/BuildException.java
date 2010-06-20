package org.apache.tools.ant;

public class BuildException extends Exception {
	public BuildException(String reason) {
		super(reason);
	}
	public BuildException(Exception ex) {
		super(ex);
	}
}
