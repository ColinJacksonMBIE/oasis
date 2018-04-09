package oasis.stepdefs;

import cucumber.api.java.en.When;
import oasis.controllers.YourClaimsController;

public class Oasis4testingClone {

    YourClaimsController yourClaimsPage = new YourClaimsController();


    @When("^I select the search button$")
    public void i_select_the_search_button() throws Throwable {
        yourClaimsPage.selectSearchButton ();

    }
}