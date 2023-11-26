package com.msa.ui.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UIController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @RequestMapping(value = {"/", "/index"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String index() {
        logger.debug("request : index");
        return "index";
    }

    @RequestMapping(value = "/login/redirect", method = {RequestMethod.GET, RequestMethod.POST})
    public String redirect(HttpServletRequest request, @RequestParam("sessionInfo") String sessionInfo) {
        logger.debug("request : /login/redirect");
        HttpSession session = request.getSession();
        session.setAttribute("sessionInfo", sessionInfo);
        return "redirect:/index";
    }

    @RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
    public String login() {
        logger.debug("request : login");
        return "login/login";
    }

    @RequestMapping(value = "/logout", method = {RequestMethod.GET, RequestMethod.POST})
    public String logout(HttpServletRequest request) {
        logger.debug("request : logout");
        HttpSession session = request.getSession();
        session.invalidate();
        return "index";
    }
}
