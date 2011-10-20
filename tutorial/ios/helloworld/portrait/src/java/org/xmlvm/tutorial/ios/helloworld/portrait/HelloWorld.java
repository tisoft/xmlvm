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

package org.xmlvm.tutorial.ios.helloworld.portrait;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.StringReader;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIWindow;

/**
 * This is the classic "Hello World" application for iOS. The entry point is the
 * usual <code>main()</code> method of any Java application. Note that an
 * application should only contain one <code>main()</code>. The only thing
 * usually done in <code>main()</code> is to call
 * <code>UIApplication.main()</code> which passes control to iOS and will launch
 * the application. Note that <code>UIApplication.main()</code> never returns.
 * The last argument passed to <code>UIApplication.main()</code> is the class
 * object of the application delegate. iOS will instantiate the delegate (class
 * <code>HelloWorld</code> in this case) and invoke the callback
 * <code>applicationDidFinishLaunching()</code> that serves as main entry point
 * of any iOS application. All the API used in this and subsequent example is
 * compliant with the official iOS API.
 */
public class HelloWorld extends UIApplicationDelegate {

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        
        testXmlSAX();
        testXmlDOM();
        testXmlXPath();

        /*
         * Determine the bounding box of the main screen. This will depend on
         * the resolution of the screen. The bounding box will exclude the
         * status bar (if visible). In this particular example the status bar is
         * visible and hence the origin of the bounding box will be (0, 20).
         */
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        /*
         * Create a top-level window. Note that every application should only
         * contain one window. The size of the window is passed as an argument
         * to the constructor.
         */
        UIWindow window = new UIWindow(rect);
        /*
         * By default the background color of the window is black which is why
         * it is changed to white.
         */
        window.setBackgroundColor(UIColor.whiteColor);
        /*
         * The origin of the bounding box is reset to (0,0) because the child
         * widget (the UILabel in this case) should be aligned in the top-left
         * corner of the UIWindow.
         */
        rect.origin.x = rect.origin.y = 0;
        /*
         * Create a UILabel, make it span the complete size of the UIWindow, set
         * the text and alignment and finally add it as a subview to the
         * UIWindow to build up the view hierarchy.
         */
        UILabel label = new UILabel(rect);
        label.setText("Hello World");
        label.setTextAlignment(UITextAlignment.Center);
        window.addSubview(label);
        /*
         * Finally the UIWindow is told to become the main (key) window and
         * become visible.
         */
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, HelloWorld.class);
    }

    private static void testXmlSAX() {
        try {
            System.out.println("\n*************** SAX ***************");
            String xmlDoc = "<element1 attr=\"attribValue\"><element2>Hallo Arno</element2></element1>";
        
            XMLReader xmlReader = XMLReaderFactory.createXMLReader();
            StringReader reader = new StringReader(xmlDoc);
            InputSource source = new InputSource(reader);
            xmlReader.setContentHandler(new TestContentHandler());
            xmlReader.parse(source);
        }
        catch (Exception exc) {
            throw new RuntimeException("Unable to parse data", exc);
        }
        
    }

    private static void testXmlDOM() {
        try {
            System.out.println("\n*************** DOM ***************");
            String xmlDoc = "<element>Hallo Arno</element>";
            DocumentBuilderFactory fac = DocumentBuilderFactory.newInstance();
            fac.setNamespaceAware(true);
            Document doc = fac.newDocumentBuilder().parse(
                    new ByteArrayInputStream(xmlDoc.getBytes()));
            System.out.println("Value: " + doc.getDocumentElement().getTextContent());

        } catch (SAXException e) {
            throw new RuntimeException("Unable to parse response", e);
        } catch (IOException e) {
            throw new RuntimeException("Unable to parse response", e);
        } catch (ParserConfigurationException e) {
            throw new RuntimeException("Unable to parse response", e);
        }
    }
    
    private static void testXmlXPath() {
        try {
            System.out.println("\n*************** XPATH ***************");
            String xmlDoc = "<element1 attr=\"attribValue\"><element2>Hallo Arno</element2></element1>";
            DocumentBuilderFactory fac = DocumentBuilderFactory.newInstance();
            fac.setNamespaceAware(true);
            Document doc = fac.newDocumentBuilder().parse(
                    new ByteArrayInputStream(xmlDoc.getBytes()));
            
            XPath xpath = XPathFactory.newInstance().newXPath();
            String attrValue = (String) xpath.evaluate("/element1/@attr", doc, XPathConstants.STRING);
            String elemValue = (String) xpath.evaluate("/element1/element2/text()", doc, XPathConstants.STRING);
            System.out.println("Attribute value: " + attrValue);
            System.out.println("Element value: " + elemValue);

        }
        catch (Exception exc) {
            throw new RuntimeException("Unable to parse data", exc);
        }
    }
   
    
    public static class TestContentHandler implements ContentHandler {

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#characters(char[], int, int)
         */
        @Override
        public void characters(char[] ch, int start, int length) throws SAXException {
            System.out.println("character(): " + new String(ch, start, length));
            
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#endDocument()
         */
        @Override
        public void endDocument() throws SAXException {
            System.out.println("endDocument()");
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#endElement(java.lang.String, java.lang.String, java.lang.String)
         */
        @Override
        public void endElement(String uri, String localName, String qName) throws SAXException {
            System.out.println("endElement(): " + localName);
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#endPrefixMapping(java.lang.String)
         */
        @Override
        public void endPrefixMapping(String prefix) throws SAXException {
            // TODO Auto-generated method stub
            
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
         */
        @Override
        public void ignorableWhitespace(char[] ch, int start, int length) throws SAXException {
            // TODO Auto-generated method stub
            
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String, java.lang.String)
         */
        @Override
        public void processingInstruction(String target, String data) throws SAXException {
            // TODO Auto-generated method stub
            
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
         */
        @Override
        public void setDocumentLocator(Locator locator) {
            // TODO Auto-generated method stub
            
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#skippedEntity(java.lang.String)
         */
        @Override
        public void skippedEntity(String name) throws SAXException {
            // TODO Auto-generated method stub
            
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#startDocument()
         */
        @Override
        public void startDocument() throws SAXException {
            System.out.println("startDocument()");
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes)
         */
        @Override
        public void startElement(String uri, String localName, String qName, Attributes atts)
                throws SAXException {
            System.out.println("startElement(): " + localName);  
            int noAttrs = atts.getLength();
            for (int i = 0; i < noAttrs; i++) {
                System.out.println("    Attribute: " + atts.getLocalName(i) + " " + atts.getValue(i));
            }
        }

        /* (non-Javadoc)
         * @see org.xml.sax.ContentHandler#startPrefixMapping(java.lang.String, java.lang.String)
         */
        @Override
        public void startPrefixMapping(String prefix, String uri) throws SAXException {
            // TODO Auto-generated method stub
            
        }
        
    }
}