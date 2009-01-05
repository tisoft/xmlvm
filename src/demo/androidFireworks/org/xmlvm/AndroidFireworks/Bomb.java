
package org.xmlvm.AndroidFireworks;


public class Bomb
{

    Spark sparks[];



    public Bomb(AndroidFireworks parent)
    {
        sparks = new Spark[Const.SPARKS_PER_BOMB];
        for (int i = 0; i < Const.SPARKS_PER_BOMB; i++)
            sparks[i] = new Spark(parent);
    }



    void resetWithX(int x, int y)
    {
        int i;
        for (i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
            sparks[i].resetWithX(x, y);
        }
    }



    boolean allOutOfSight()
    {
        int i, count = 0;
        for (i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
            if (sparks[i].outOfSight) {
                count++;
            }
        }
        return count == Const.SPARKS_PER_BOMB;
    }

}
