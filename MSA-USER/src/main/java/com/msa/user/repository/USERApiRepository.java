package com.msa.user.repository;

import com.msa.user.model.USERApiVO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class USERApiRepository {

    public Map<String, Long> loginCheck(String email, String password) {
        return new HashMap<>();
    }

    public int INSERT(USERApiVO vo) {
        return 1;
    }

    public Map<String, String> TEST() {
        return new HashMap<>();
    }
}
