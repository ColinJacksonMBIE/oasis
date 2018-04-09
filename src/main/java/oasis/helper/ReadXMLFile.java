package oasis.helper;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import java.io.File;
import java.io.IOException;

public class ReadXMLFile {

    public Document getXMLFile(String file) {

        File fXmlFile = new File(file);
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder;
        Document doc;

        try {
            dBuilder = dbFactory.newDocumentBuilder();
            assert dBuilder != null;
            doc = dBuilder.parse(fXmlFile);
            doc.getDocumentElement().normalize();
            return doc;
        } catch (SAXException | IOException | ParserConfigurationException e1) {
            e1.printStackTrace();
        }
        return null;
    }
}
