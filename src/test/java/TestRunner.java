import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
//    @Test
//    public  void runTest() {
//        Karate.run("getRequest").relativeTo(getClass());
//        Karate.run("fuzzyMatcher").relativeTo(getClass());
//    }

    @Karate.Test
    public Karate runTestUsingClassPath() {
        //return Karate.run("classpath:com/api/automation/getrequest");
        return Karate.run("classpath:com/api/automation")
                .outputCucumberJson(true)
                .outputJunitXml(true)
                .tags("~@smoke");
    }
}
