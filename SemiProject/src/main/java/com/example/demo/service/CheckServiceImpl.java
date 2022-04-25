package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.CheckRepository;

@Service
public class CheckServiceImpl implements CheckService {

	@Autowired
	private CheckRepository checkRepository;
	
	// 아이디 중복 체크
    @Override
    public int idCheck(String id) {
        int cnt = checkRepository.idCheck(id);
        return cnt;
    }
}
