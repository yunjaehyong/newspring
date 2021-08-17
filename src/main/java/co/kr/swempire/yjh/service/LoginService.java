package co.kr.swempire.yjh.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.swempire.yjh.dto.LoginDTO;
import co.kr.swempire.yjh.vo.LoginVO;

@Service
public class LoginService {

	@Autowired
	LoginDTO logindto;
	
	public Integer insertlogin(LoginVO vo) {
		return logindto.insertlogin(vo);
	}
	public Map<Object, Object> insertloginData(LoginVO vo){
		return this.logindto.insertloginData(vo);
	}
	
}
