package com.msa.login.Service;

import com.msa.login.util.Base64Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Service
public class Login_API_Service {

    @Autowired
    Base64Util base64Util;

    @RequestMapping(value = "/loginAct", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> login(HttpServletRequest request, @RequestBody Map<String,String> param) throws Exception {

        Map<String, String> resultMap = new HashMap<>();
        String email = param.get("email");
        String password = base64Util.sha256(param.get("password"));


        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }
}
