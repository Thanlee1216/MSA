package com.msa.login.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@RequestMapping(value = "/LOGINAPI")
public class Login_API_Controller {

    @RequestMapping(value = "/loginAct")
    public ResponseEntity<String> login(HttpServletRequest request, @RequestBody Map<String,String> param) {
        String result = "";
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
