package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {
//    @Test
//    public  void runTest() {
//        Karate.run("getRequest").relativeTo(getClass());
//    }

    @Test
    public Karate runTestUsingCassPath() {
        return Karate.run("classpath:com/api/automation/getrequest");
    }
}
