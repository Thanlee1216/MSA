package com.msa.user.Controller;

import com.msa.user.Service.USERApiService;
import com.msa.user.model.SCHEDULE_VO;
import com.msa.user.model.USERApiVO;
import com.msa.user.util.Base64Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/USERAPI")
public class USER_API_Controller {

    @Autowired
    USERApiService service;

    @Autowired
    Base64Util base64Util;

    @RequestMapping(value = "/Health", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> login(HttpServletRequest request) {
        Map<String, String> resultMap = service.TEST();
        return new ResponseEntity<Map<String, String>>(service.TEST(), HttpStatus.OK);
    }

    @RequestMapping(value = "/loginAct", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> login(HttpServletRequest request, @RequestBody Map<String,String> param) throws Exception {

        Map<String, String> resultMap = new HashMap<>();
        String email = param.get("email");
        String password = base64Util.sha256(param.get("password"));

        if(service.loginCheck(email, password)) {
            resultMap.put("result", email);
        }else {
            resultMap.put("result", "false");
        }

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }

    @RequestMapping(value = "/signUp", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> signUp(HttpServletRequest request, @RequestBody USERApiVO vo) throws Exception{

        Map<String, String> resultMap = new HashMap<>();

        vo.setPwd(base64Util.sha256(vo.getPwd()));

        if(service.INSERT(vo)) {
            resultMap.put("result", "true");
        }else {
            resultMap.put("result", "false");
        }

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }

    @RequestMapping(value = "/savecontent", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> saveContent(HttpServletRequest request, @RequestBody SCHEDULE_VO vo) throws Exception{

        Map<String, String> resultMap = new HashMap<>();

        if(service.savemodal(vo)) {
            resultMap.put("result", "true");
        }else {
            resultMap.put("result", "false");
        }

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }

    @RequestMapping(value = "/savemodal", method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity<Map<String, String>> saveModal(HttpServletRequest request, @RequestBody SCHEDULE_VO vo) throws Exception{

        Map<String, String> resultMap = new HashMap<>();

        if(service.savemodal(vo)) {
            resultMap.put("result", "true");
        }else {
            resultMap.put("result", "false");
        }

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }
}
