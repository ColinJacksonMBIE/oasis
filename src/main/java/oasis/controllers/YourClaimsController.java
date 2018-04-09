package oasis.controllers;

import mbie.automation.Browser;
import org.apache.log4j.Category;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class YourClaimsController {
    private WebDriver driver;
    public static Category log = Logger.getLogger(LoginController.class);

    public void YourClaimsPage(){driver = Browser.getDriver();}

    public void checkPageHeading(){
        Browser.waitForPageToLoad();
        Browser.waitForElement(By.cssSelector("#creditor-claim-list h2"));
        log.info("waited for h2");
        //    assert page title etc .. I haven't
  }

    public void selectClaimStatus(String status) throws InterruptedException {
        Browser.clickElement(By.id("filter-by-status"));
        log.info("clicked claim status");
        Browser.waitForElement(By.cssSelector("div[role=listbox][id=filter-by-status-list]"));
        log.info("waited for dropdown");


        // we could click the option
        Browser.clickElement(By.cssSelector("button[title="+status +"]"));

        // or we could try capture all the options available and cycle through them clicking the one that matches our criteria ..
        // this doesn't seem to find the buttons so needs some tweaking .. left as an example.

//        List<WebElement> options = driver.findElements(By.cssSelector("div[role=listbox][id=filter-by-status-list] button"));
//        for(WebElement we : options){
//            log.info(we.getText());
//            if (we.getText().toLowerCase().contains(status.toLowerCase())){
//                we.click();
//                break;
//            }
//        }
    }

    public void clickSearchButton(){
        driver.findElement(By.cssSelector("button[type=submit]")).click();
    }

    public void selectSearchForClaim() throws InterruptedException {
        Browser.clickElement(By.id("search-by-field"));
        Browser.waitForElement(By.cssSelector("div[role=listbox][id=search-by-field]"));
        Browser.clickElement(By.cssSelector("button[title=DebtorID]"));
        }

    public void selectSearchButton() throws InterruptedException {
        Browser.clickElement(By.cssSelector("button[title=search]"));
    }
}