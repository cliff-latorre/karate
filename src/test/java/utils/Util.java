package utils;

import java.util.UUID;

public class Util {
    public static String randomName(String name){
        return name + ", this is a name from java class";
    }

    public static String getUUID(){
        UUID uuid=UUID.randomUUID();
        return uuid.toString();
    }
}
