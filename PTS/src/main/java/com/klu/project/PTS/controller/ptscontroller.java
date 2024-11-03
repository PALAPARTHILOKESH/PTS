package com.klu.project.PTS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ptscontroller {

    @GetMapping("/home")
    public String homePage(Model model) {
        return "home";
    }
    @GetMapping("/login")
    public String loginPage(Model model) {
        return "login";
    }
    @GetMapping("/register")
    public String registerPage(Model model) {
        return "register";
    }
    @GetMapping("/aboutus")
    public String aboutusPage(Model model) {
        return "aboutus";
    }
    @GetMapping("/contactus")
    public String contactususPage(Model model) {
        return "contactus";
    }
}
