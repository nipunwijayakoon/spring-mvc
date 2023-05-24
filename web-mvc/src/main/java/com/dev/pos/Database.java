package com.dev.pos;

import java.util.LinkedHashMap;

public class Database {

    LinkedHashMap<String,String> data = new LinkedHashMap<String, String>();

    Database(){
        data.put("ka", "Kaluthara");
        data.put("Pa", "Panadura");
        data.put("Ga", "galle");
        data.put("Ja", "Jaffna");
        data.put("Ba", "Badulla");
    }
}
