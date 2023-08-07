package com.msa.ui;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UIController {

    @RequestMapping(value = {"/", "/index"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/contact", method = {RequestMethod.GET, RequestMethod.POST})
    public String contact() {
        return "contact";
    }

    @RequestMapping(value = "/projects", method = {RequestMethod.GET, RequestMethod.POST})
    public String projects() {
        return "projects";
    }

    @RequestMapping(value = "/resume", method = {RequestMethod.GET, RequestMethod.POST})
    public String resume() {
        return "resume";
    }
}
