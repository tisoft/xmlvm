
package org.xmlvm.test;

public class StaticFieldTest
{

    private static int i;
    private static StaticFieldTest singleton = new StaticFieldTest(42);


    public StaticFieldTest(int ii)
    {
        i = ii;
    }



    public void print()
    {
        System.out.println(i);
    }



    static public void main(String[] args)
    {
        singleton.print();
        new StaticFieldTest(4711).print();
        singleton.print();
    }
}