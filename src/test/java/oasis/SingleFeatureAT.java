package oasis;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(

        //features = "src/test/resources/features/Oasis4testing.feature",
        features = "src/test/resources/features/Oasis4POCDean.feature",
       tags ={"@test"},
        format = { "pretty", "html:target/cucumber-report/SBER/single",
                "json:target/cucumber-report/SBER/single/cucumber.json",
                "rerun:target/cucumber-report/SBER/single/rerun.txt" })

public class SingleFeatureAT {
}