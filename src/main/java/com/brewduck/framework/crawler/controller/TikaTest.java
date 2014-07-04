/*
package com.brewduck.framework.crawler.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.html.HtmlParser;
import org.apache.tika.sax.BodyContentHandler;
import org.apache.tika.sax.LinkContentHandler;
import org.apache.tika.sax.TeeContentHandler;
import org.apache.tika.sax.ToHTMLContentHandler;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
*/
/**
 *
 * @author revfactory
 *//*

public class TikaTest {
    public static void main(String[] args) throws FileNotFoundException, SAXException, IOException, TikaException {
        URL url = new URL("http://www.naver.com/");
        InputStream input = url.openStream();
        LinkContentHandler linkHandler = new LinkContentHandler();
        ContentHandler textHandler = new BodyContentHandler();
        ToHTMLContentHandler toHTMLHandler = new ToHTMLContentHandler();
        TeeContentHandler teeHandler = new TeeContentHandler(linkHandler, textHandler, toHTMLHandler);
        Metadata metadata = new Metadata();
        ParseContext parseContext = new ParseContext();
        HtmlParser parser = new HtmlParser();
        parser.parse(input, teeHandler, metadata, parseContext);
        System.out.println("title:\n" + metadata.get("title"));
        //System.out.println("links:\n" + linkHandler.getLinks());
        //System.out.println("text:\n" + textHandler.toString());
        //System.out.println("html:\n" + toHTMLHandler.toString());
    }
}*/
