package oasis.helper;

import org.openqa.selenium.WebDriver;

public  class TestContext {

    private WebDriver driver;
    public static ThreadLocal<String> getSearchCriteria = new ThreadLocal<String>();
    public static ThreadLocal<String> getSearchCriteria2 = new ThreadLocal<String>();
    public static ThreadLocal<Boolean> review = new ThreadLocal<Boolean>();

    /* **** End Public setting flags **** */




    // set search details2
    public static void setSearchCriteria2(String nu) {
        getSearchCriteria2.set(nu);
    }
    public static String getSearchCriteria2() {
        return getSearchCriteria2.get();
    }

    // set search details
    public static void setSearchCriteria(String nu) {
        getSearchCriteria.set(nu);
    }
    public static String getSearchCriteria() {
        return getSearchCriteria.get();
    }

    //	Flags for task Review
    public static void setReviewTask(Boolean nu) {
        review.set(nu);
    }
    public static Boolean getReviewTask() {
        return review.get();
    }




}

