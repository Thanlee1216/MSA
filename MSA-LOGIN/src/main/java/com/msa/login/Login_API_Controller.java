package com.msa.login;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/login")
public class Login_API_Controller {

    @RequestMapping(value = "/loginAct")
    public ResponseEntity<String> login() {
        String result = "";
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
