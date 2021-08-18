package co.kr.swempire.yjh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.swempire.yjh.dao.YjhDAO;
import co.kr.swempire.yjh.vo.YjhVO;

@Service
public class YjhService {
	
	@Autowired
	YjhDAO yjhDAO;
	
	public List<YjhVO>selectTest(){
		List<YjhVO> list = yjhDAO.selectTest();
		
		return list;
	}
	public Integer insertTest(YjhVO vo) {
		int a = yjhDAO.insertTest(vo);
		return a;
	}
	public Integer insertData(YjhVO vo) {
		return yjhDAO.insertData(vo);
	}
	public Map<Object, Object> updateTest(YjhVO vo) {
		return yjhDAO.updateTest(vo);
	}
	public Integer updateData(Map<String, Object>map) {
		return this.yjhDAO.updateData(map);
	}
	public Integer deleteData(Map<String,Object>map) {
		return this.yjhDAO.deleteData(map);
	}
	public List<YjhVO>index2(){
		List<YjhVO> list = yjhDAO.index2();
		
		return list;
	}

}
