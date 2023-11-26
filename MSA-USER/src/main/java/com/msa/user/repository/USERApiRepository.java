package com.msa.user.repository;

import com.msa.user.model.SCHEDULE_VO;
import com.msa.user.model.USERApiVO;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface USERApiRepository {

    Map<String, String> TEST();
    
    int INSERT(USERApiVO vo);

    Map<String, Long> loginCheck(String email, String password);
    int INSERT_SCHEDULE(SCHEDULE_VO vo);
    Map<String, Long> getSCHEDULE_NO(SCHEDULE_VO vo);
}
