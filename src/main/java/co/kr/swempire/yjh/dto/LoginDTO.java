package co.kr.swempire.yjh.dto;

import java.util.Map;

import org.springframework.stereotype.Repository;

import co.kr.swempire.yjh.vo.LoginVO;
import co.kr.swempire.yjh.vo.YjhVO;

@Repository
public interface LoginDTO {

	public Integer insertlogin(LoginVO vo);
	
	public Map<Object, Object> insertloginData(LoginVO vo);
}
