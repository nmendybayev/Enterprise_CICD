package com.mendybayev.nurbol.helloapp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloAppController {

    @GetMapping("/")
    public String hello(Model model) {
        model.addAttribute("message", "Hello World! This is Enterprise level CI/CD Pipeline");
        return "index";
    }

    @GetMapping("/error")
    public String handleError() {
        return "error";
    }
}

