package org.test.fmtest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * *******************************
 * Created by Irina.Petrovskaya on 9/3/2015.
 * Project: freemarkerTest
 * *******************************
 */
@Controller
@EnableAutoConfiguration
public class MyController {
    @RequestMapping("/")
    public String foo(){
        return "index";
    }
    public static void main(String[] args) throws Exception {
        SpringApplication.run(MyController.class, args);
    }
}
