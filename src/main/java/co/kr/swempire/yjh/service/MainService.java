package co.kr.swempire.yjh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.swempire.yjh.dao.MainDAO;
import co.kr.swempire.yjh.vo.MainVO;


@Service
public class MainService {

	@Autowired
	MainDAO mainDAO;
	
	public List<MainVO>mainpage(){
		List<MainVO> list = mainDAO.mainpage();
		return list;

	}
}
