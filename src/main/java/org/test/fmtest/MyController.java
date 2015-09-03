package org.test.fmtest;

import org.hibernate.validator.constraints.CreditCardNumber;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * *******************************
 * Created by Irina.Petrovskaya on 9/3/2015.
 * Project: freemarkerTest
 * *******************************
 */
@Controller
//@EnableAutoConfiguration
public class MyController {
    @RequestMapping("/")
    public String foo(ModelMap model){
        List<String> myStringsList = new ArrayList<>();
        myStringsList.add("item1");
        myStringsList.add("item2");
        myStringsList.add("item3");
        myStringsList.add("item4");
        List<String> myStrList = new ArrayList<>();
        myStrList.add("item1");
        myStrList.add("item2");
        myStrList.add("item3");
        myStrList.add("item4");
        model.addAttribute("myStringsList",myStringsList);
        model.addAttribute("myStrList",myStrList);
        return "index";
    }

}
