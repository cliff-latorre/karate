package com.api.automation;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
//    @Test
//    public  void runTest() {
//        Karate.run("getRequest").relativeTo(getClass());
//        Karate.run("fuzzyMatcher").relativeTo(getClass());
//    }

    @Test
    public Karate runTestUsingCassPath() {
        //return Karate.run("classpath:com/api/automation/getrequest");
        return Karate.run("classpath:com/api/automation");
    }
}
