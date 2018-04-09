package oasis.stepdefs;

import cucumber.api.java.en.When;
import oasis.controllers.LoginController;

public class Login {

    private LoginController loginController = new LoginController();

    @When("^I am logged in as a \"([^\"]*)\" user$")
    public void iAmLoggedInAsAUser(String userType){
        loginController.login(userType);
    }

}
