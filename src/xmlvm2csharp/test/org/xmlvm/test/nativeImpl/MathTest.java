/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */
package org.xmlvm.test.nativeImpl;

/**
 *
 * tests native implementation of methods in java.lang.Math
 */
public class MathTest {
    public static void main(String[] args) {
        int numTests = 40;
        String[] description = new String[numTests];
        boolean[] result = new boolean[numTests];
        int i = -1;
        long diff;
        // acos:
        i++;
        result[i] = Double.isNaN(Math.acos(Double.NaN));
        description[i] = "acos(NaN) == NaN";
        i++;
        result[i] = Double.isNaN(Math.acos(1.1D));
        description[i] = "acos(x) == NaN, for some x>1";
        i++;
        result[i] = Double.isNaN(Math.acos(-1.1D));
        description[i] = "acos(x) == NaN, for some x<-1";
        i++;
        diff = Double.doubleToLongBits(
                   Math.cos(Math.acos(3.0D/(Math.sqrt(3.0D)*2.0D)))
               ) - Double.doubleToLongBits(
                   Math.sqrt(3.0D)/2.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|cos(acos(x))-x|<= 1ulp, for some |x|<=1";
        i++;
        diff = Double.doubleToLongBits(
                   Math.acos(Math.cos(Math.PI/7.0D))
               ) - Double.doubleToLongBits(
                   Math.PI/7.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|acos(cos(y))-y|<= 1ulp, for some 0<=y<pi";
        i++;
        diff = Double.doubleToLongBits(
                   Math.acos(3.0D/(Math.sqrt(3.0D)*2.0D))
               ) - Double.doubleToLongBits(
                   Math.PI/6.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|acos(x)-y|<= 1ulp, for some x,y s.t. cos(y)=x";
        i++;
        result[i] = Double.compare(
                        Math.acos(3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.acos(Double.longBitsToDouble(
                            Double.doubleToLongBits(3.0D/(Math.sqrt(3.0D)*2.0D))+1)
                        )
                    )>=0;
        description[i] = "acos(x+epsilon)=<acos(x), for some 0<x<1";
        i++;
        result[i] = Double.compare(
                        Math.acos(-3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.acos(Double.longBitsToDouble(
                            // to add epsilon we actually subtract a bit...
                            Double.doubleToLongBits(-3.0D/(Math.sqrt(3.0D)*2.0D))-1)
                        )
                    )>=0;
        description[i] = "acos(x+epsilon)=<acos(x), for some -1<x<0";
        // asin:
        i++;
        result[i] = Double.isNaN(Math.asin(Double.NaN));
        description[i] = "asin(NaN) == NaN";
        i++;
        result[i] = Double.isNaN(Math.asin(1.1D));
        description[i] = "asin(x) == NaN, for some x>1";
        i++;
        result[i] = Double.isNaN(Math.asin(-1.1D));
        description[i] = "asin(x) == NaN, for some x<1";
        i++;
        result[i] = 1/Math.asin(+0D) == 1/+0D;
        description[i] = "asin(+0D) == +0D";
        i++;
        result[i] = 1/Math.asin(-0D) == 1/-0D;
        description[i] = "asin(-0D) == -0D";
        i++;
        diff = Double.doubleToLongBits(
                   Math.sin(Math.asin(3.0D/(Math.sqrt(3.0D)*2.0D)))
               ) - Double.doubleToLongBits(
                   3.0D/(Math.sqrt(3.0D)*2.0D)
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|sin(asin(x))-x|<= 1ulp, for some x";
        i++;
        diff = Double.doubleToLongBits(
                   Math.asin(Math.sin(Math.PI/7.0D))
               ) - Double.doubleToLongBits(
                   Math.PI/7.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|asin(sin(y))-y|<= 1ulp, for some y";
        i++;
        diff = Double.doubleToLongBits(
                   Math.asin(3.0D/(Math.sqrt(3.0D)*2.0D))
               ) - Double.doubleToLongBits(
                   Math.PI/3.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|asin(x)-y|<= 1ulp, for some x,y s.t. sin(y)=x"+diff;
        i++;
        result[i] = Double.compare(
                        Math.asin(3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.asin(Double.longBitsToDouble(
                            Double.doubleToLongBits(3.0D/(Math.sqrt(3.0D)*2.0D))+1)
                        )
                    )<=0;
        description[i] = "asin(x+epsilon)>=asin(x), for some 0<x<1";
        i++;
        result[i] = Double.compare(
                        Math.asin(-3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.asin(Double.longBitsToDouble(
                            Double.doubleToLongBits(-3.0D/(Math.sqrt(3.0D)*2.0D))-1)
                        )
                    )<=0;
        description[i] = "asin(x+epsilon)>=asin(x), for some -1<x<0";
        // atan:
        i++;
        result[i] = Double.isNaN(Math.atan(Double.NaN));
        description[i] = "Math.atan(Double.NaN) == NaN";
        i++;
        result[i] = 1/Math.atan(+0D) == 1/+0D;
        description[i] = "Math.atan(+0D) == +0D";
        i++;
        result[i] = 1/Math.atan(-0D) == 1/-0D;
        description[i] = "Math.atan(-0D) == -0D";
        i++;
        diff = Double.doubleToLongBits(
                   Math.tan(Math.atan(1.0D/Math.sqrt(3.0D)))
               ) - Double.doubleToLongBits(
                   1.0D/Math.sqrt(3.0D)
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|tan(atan(x))-x|<= 1ulp, for some x";
        i++;
        diff = Double.doubleToLongBits(
                   Math.atan(Math.tan(Math.PI/7.0D))
               ) - Double.doubleToLongBits(
                   Math.PI/7.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|atan(tan(y))-y|<= 1ulp, for some 0<y<pi/2";
        i++;
        diff = Double.doubleToLongBits(
                   Math.atan(1.0D/Math.sqrt(3.0D))
               ) - Double.doubleToLongBits(
                   Math.PI/6.0D
               );
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|atan(x)-y|<= 1ulp, for some x,y s.t. tan(y)=x"+diff;
        i++;
        result[i] = Double.compare(
                        Math.atan(3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.atan(Double.longBitsToDouble(
                            Double.doubleToLongBits(3.0D/(Math.sqrt(3.0D)*2.0D))+1)
                        )
                    )<=0;
        description[i] = "atan(x+epsilon)>=atan(x), for some 0<x<1";
        i++;
        result[i] = Double.compare(
                        Math.atan(-3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.atan(Double.longBitsToDouble(
                            Double.doubleToLongBits(-3.0D/(Math.sqrt(3.0D)*2.0D))-1)
                        )
                    )<=0;
        description[i] = "atan(x+epsilon)>=atan(x), for some -1<x<0";
        // atan2:
        i++;
        result[i] = Double.isNaN(Math.atan2(Double.NaN,1.546D));
        description[i] = "Math.atan2(NaN,x) == NaN, for some x";
        i++;
        result[i] = Double.isNaN(Math.atan2(1.546D,Double.NaN));
        description[i] = "Math.atan2(y,NaN) == NaN, for some y";
        i++;
        result[i] = 1/Math.atan2(+0D,1.546D) == 1/+0D;
        description[i] = "Math.atan2(+0D,1.546D) == +0D";
        i++;
        result[i] = 1/Math.atan2(1D,Double.POSITIVE_INFINITY) == 1/+0D;
        description[i] = "Math.atan2(1D,Double.POSITIVE_INFINITY) == +0D";
        i++;
        result[i] = 1/Math.atan2(-0D,1.546D) == 1/-0D;
        description[i] = "Math.atan2(-0D,1.546D) == -0D";
        i++;
        result[i] = 1/Math.atan2(-1D,Double.POSITIVE_INFINITY) == 1/-0D;
        description[i] = "Math.atan2(-1D,Double.POSITIVE_INFINITY) == -0D";

        // log
        i++;
        result[i] = Double.isNaN(Math.log(Double.NaN));
        description[i] = "log(NaN)==NaN";
        i++;
        result[i] = Double.isNaN(Math.log(Double.NaN));
        description[i] = "log(-1.546)==NaN";
        i++;
        result[i] = Double.compare(Math.log(+0D), Double.NEGATIVE_INFINITY)==0;
        description[i] = "log(+0)==-Infinity";
        i++;
        result[i] = Double.compare(Math.log(-0D), Double.NEGATIVE_INFINITY)==0;
        description[i] = "log(-0)==-Infinity";
        i++;
        result[i] = Double.compare(Math.log(Double.POSITIVE_INFINITY), Double.POSITIVE_INFINITY)==0;
        description[i] = "log(+Infinity)==+Infinity";
        i++;
        result[i] = Double.compare(
                        Math.log(3.0D/(Math.sqrt(3.0D)*2.0D)),
                        Math.log(Double.longBitsToDouble(
                            Double.doubleToLongBits(3.0D/(Math.sqrt(3.0D)*2.0D))+1)
                        )
                    )<=0;
        description[i] = "log(x+epsilon)>=log(x), for some 0<x<1";
        i++;
        result[i] = Double.compare(
                        Math.log(1.546),
                        Math.log(Double.longBitsToDouble(
                            Double.doubleToLongBits(1.546)+1)
                        )
                    )<=0;
        description[i] = "log(x+epsilon)>=log(x), for some 1<x<+infinity";
        i++;
        diff = Double.doubleToLongBits(
                   Math.log(33.11545195869231)
               ) - Double.doubleToLongBits(3.5D);
        result[i] = (diff == 0L || diff == -1L || diff == 1L);
        description[i] = "|log(x)-y|<= 1ulp, for some x s.t. y=e^x";



        // print results
        for (int j=0; j<numTests; j++) {
            System.out.println(j + ") "
                    + (result[j] ? "passed" : "failed") + ": "+ description[j]);
        }

    }

}
