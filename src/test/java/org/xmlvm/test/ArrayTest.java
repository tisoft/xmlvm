
package org.xmlvm.test;


public class ArrayTest
{

    private int idx;



    public ArrayTest(int idx)
    {
        this.idx = idx;
    }



    static private void printArray(float[] color)
    {
        for (int i = 0; i < color.length; i++)
            System.out.println(color[i]);
    }



    static private void testFloatArray()
    {
        float[] someColor = {3.0f, 4.0f, 5.0f};
        printArray(someColor);
    }



    static private void testObjectArray()
    {
        ArrayTest[] array = new ArrayTest[5];
        for (int i = 0; i < 5; i++) {
            array[i] = new ArrayTest(i * 2);
        }
        for (int j = 0; j < 5; j++) {
            System.out.println(array[j].idx);
        }
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        testFloatArray();
        testObjectArray();
    }

}
