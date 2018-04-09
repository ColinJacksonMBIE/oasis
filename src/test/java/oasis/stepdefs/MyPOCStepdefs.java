package oasis.stepdefs;

import cucumber.api.java.en.When;
import oasis.controllers.YourClaimsController;


public class MyPOCStepdefs {
    YourClaimsController yourClaimsPage = new YourClaimsController();

    @When("^I select search for claim \"([^\"]*)\"$")
    public void selectSearchForClaim(String status) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        yourClaimsPage.selectSearchForClaim();
    }


}
