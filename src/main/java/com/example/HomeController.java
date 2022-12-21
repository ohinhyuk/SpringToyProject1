package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(){
        return "index";
    }

    @RequestMapping("list")
    public String List(Model model){
        List<String> list = new ArrayList<String>();

        list.add("Hello");
        list.add("My");
        list.add("Name");
        list.add("Is");
        list.add("Inhyuk");

        model.addAttribute("list",list);
        return "list";
    }

}
