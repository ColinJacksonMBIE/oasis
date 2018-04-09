package oasis.stepdefs;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import oasis.controllers.YourClaimsController;

public class Oasis4Testing {
    YourClaimsController yourClaimsPage = new YourClaimsController();

    @Given("^I am on the your claims form$")
    public void iAmOnTheYourClaimsForm() throws Throwable {
        yourClaimsPage.checkPageHeading();
    }

    @When("^I select claim status \"([^\"]*)\"$")
    public void iSearchByDebtorName(String status) throws Throwable {
        yourClaimsPage.selectClaimStatus(status);

    }

    @Then("^nothing happens$")
    public void nothingHappens() throws Throwable {

    }


}
