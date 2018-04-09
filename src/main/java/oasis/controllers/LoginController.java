/*
Colin Jackson - 09/04/18
This class will log in the user based on the target environment, as configured in
the oasis.properties file. The actual login details are taken from a local
file on each individual system, as a simple security measure
 */

package oasis.controllers;

import oasis.helper.ReadXMLFile;
import oasis.helper.TestContext;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.log4j.Category;
import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import java.util.Objects;

public class LoginController {

    public static Category log = Logger.getLogger(LoginController.class);
    final String oasis_Properties = "./src/main/config/oasis.properties";
    TestContext testContext = new TestContext();
    ReadXMLFile readXMLFile = new ReadXMLFile();

    public void login(String userType){

        PropertiesConfiguration oasis = getProperties(oasis_Properties);
        String environment = Objects.requireNonNull(oasis).getString("environment");
        String baseURL = this.getHiddenEnvironmentVariable(environment, userType, "url");
        String user = this.getHiddenEnvironmentVariable(environment, userType, "username");
        String password = this.getHiddenEnvironmentVariable(environment, userType, "password");

        // Todo: complete the login code
    }

    private PropertiesConfiguration getProperties(String propertiesFileName){
        try {
            return new PropertiesConfiguration(propertiesFileName);
        } catch (ConfigurationException e) {
            e.printStackTrace();
        }
        return null;
    }

    private String getHiddenEnvironmentVariable(String environment, String userType, String tag){

        String file = System.getProperty("user.home") + "oasis-automation-settings.xml";
        Document doc = readXMLFile.getXMLFile(file);
        NodeList nodeList = doc.getElementsByTagName("environment");

        // Find the correct "environment" element, then drill down from there
        for (int index = 0; index < nodeList.getLength(); index++) {
            Node node = nodeList.item(index);
            if(node.getNodeName().equals(environment)){
                NodeList childNodes = node.getChildNodes();
                for (int index2 = 0; index2 < childNodes.getLength(); index2++) {
                    if (childNodes.item(index2).getNodeName().equals(userType)){
                        childNodes = childNodes.item(index2).getChildNodes();
                        for (int index3 = 0; index3 < childNodes.getLength(); index3++) {
                            if (childNodes.item(index2).getNodeName().equals(tag)) {
                                return childNodes.item(index2).getTextContent();
                            }
                        }
                    }
                }
            }
        }
        throw new IllegalArgumentException(String.format("'%s' is not a valid environment name, or '%s' is not a valid property", environment, tag));
    }
}
