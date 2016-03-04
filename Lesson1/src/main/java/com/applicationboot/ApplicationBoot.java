package com.applicationboot;

import org.apache.camel.spring.Main;
/**
 * Created by Z001NLH on 10/31/2015.
 */

public class ApplicationBoot {
    private Main mainCamelInstance;

    public static void main(String[] args) throws Exception {
        ApplicationBoot example = new ApplicationBoot();
        example.boot();
    }
    public void boot() throws Exception {
        mainCamelInstance = new Main();
        mainCamelInstance.enableHangupSupport();
        System.out.println("Booting up camel routes...");
        mainCamelInstance.run();
        
    }

}