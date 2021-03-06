package co.kr.swempire.yjh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.swempire.yjh.dao.YjhDAO;
import co.kr.swempire.yjh.vo.UploadVO;
import co.kr.swempire.yjh.vo.YjhVO;

@Service
public class YjhService {
	
	@Autowired
	YjhDAO yjhDAO;
	
	public List<YjhVO>selectTest(){
		List<YjhVO> list = yjhDAO.selectTest();
		
		return list;
	}
	
	public Map<Object,Object> selectList(YjhVO vo){
		return yjhDAO.selectList(vo);
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
	public List<YjhVO>readList(){
		List<YjhVO> list = yjhDAO.readList();
		
		return list;
	}
	
	public Map<Object,Object> DeleteData(YjhVO vo){
		return yjhDAO.deleteData(vo);
	}
	public String uploadFile(UploadVO vo) {
		return yjhDAO.uploadFile(vo);
	}
	

}
