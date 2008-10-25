
package org.xmlvm;


public class IllegalXMLVMException
    extends Exception
{

    private String reason;



    public IllegalXMLVMException(String reason)
    {
        this.reason = reason;
    }



    public String toString()
    {
        return "IllegalXMLVMException: " + reason;
    }
}
