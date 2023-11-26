package com.msa.user.Service;

import com.msa.user.model.SCHEDULE_VO;
import com.msa.user.model.USERApiVO;
import com.msa.user.repository.USERApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class USERApiService {

    @Autowired
    USERApiRepository repository;

    public Map<String, String> TEST() {
        return repository.TEST();
    }
    public boolean INSERT(USERApiVO vo) {
        return repository.INSERT(vo) == 1;
    }

    public boolean loginCheck(String email, String password) {
        Map<String, Long> map = repository.loginCheck(email, password);
        return Integer.parseInt(String.valueOf(map.get("CNT_USER"))) == 1;
    }

    public boolean savecontent(SCHEDULE_VO vo) {
        vo.setWORKSPACE_NO("1");
        vo.setSCHEDULE_NO(repository.getSCHEDULE_NO(vo).get("SCHEDULE_NO") + "");
        vo.setSTATAS("1");
        vo.setWORKSPACE_NO("1");
        vo.setWORKSPACE_NO("1");
        vo.setWORKSPACE_NO("1");
        return repository.INSERT_SCHEDULE(vo) == 1;
    }

    public boolean savemodal(SCHEDULE_VO vo) {
        vo.setWORKSPACE_NO("1");
        vo.setSCHEDULE_NO("1");
        vo.setWORKSPACE_NO("1");
        vo.setWORKSPACE_NO("1");
        vo.setWORKSPACE_NO("1");
        vo.setWORKSPACE_NO("1");
        return repository.INSERT_SCHEDULE(vo) == 1;
    }
}
