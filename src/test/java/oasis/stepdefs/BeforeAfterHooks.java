package oasis.stepdefs;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import mbie.automation.Browser;
import org.apache.log4j.Logger;

public class BeforeAfterHooks {
	private Browser browser = new Browser();
	static Logger log = Logger.getLogger(BeforeAfterHooks.class);
				
	
	@Before
	public void start(Scenario scenario) throws Exception {
		browser.start();
		log.info("Scenario: "+ scenario.getName());
	}

	/**
	 * Embed a screenshot in test report if test is marked as failed
	 */
	// take screenshot if scenario failed
	@After
	public void tearDown(Scenario scenario) throws Exception {
		if (scenario.isFailed()) {
			browser.takeScreenShot(scenario);

		}
		browser.tearDown();
		
	}

}