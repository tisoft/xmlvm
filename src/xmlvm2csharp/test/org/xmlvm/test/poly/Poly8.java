package org.xmlvm.test.poly;

/*
 * tests overriding of parent methods by two kids.
 *   this basically tests that the parent climbing algorithm
 *   in to detect method overriding, does not leave side effects
 *   for the second child.
 */
public class Poly8 {
    public static void main(String[] args) {
	Poly8ChildA ca = new Poly8ChildA();
	Poly8ChildB cb = new Poly8ChildB();
	Poly8Parent pa = ca;
	Poly8Parent pb = cb;
	System.out.println(pa.getStr());
	System.out.println(pb.getStr());
	System.out.println(ca.getStr());
	System.out.println(cb.getStr());
	System.out.println(ca.getStr(7));
	System.out.println(cb.getStr(8));
    }
}

class Poly8ChildA extends Poly8Parent {

    public String getStr() {
	return "childA";
    }

    public String getStr(int i) {
	return "childA: "+i;
    }

}

class Poly8ChildB extends Poly8Parent {

    public String getStr() {
	return "childB";
    }

    public String getStr(int i) {
	return "childB: "+i;
    }

}

class Poly8Parent {
    public String getStr() {
	return "parent";
    }
}

