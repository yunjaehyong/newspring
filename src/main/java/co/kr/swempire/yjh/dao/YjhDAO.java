package co.kr.swempire.yjh.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import co.kr.swempire.yjh.vo.YjhVO;

@Repository
public interface YjhDAO {

	List<YjhVO> selectTest();
	
	public Integer insertTest(YjhVO vo);
	
	public Integer insertData(YjhVO vo);

	public Map<Object, Object> updateTest(YjhVO vo);
	
	public Integer updateData(Map<String, Object> map);
	
	public Integer deleteData(Map<String,Object>map);
	
	List<YjhVO> index2();

	public Map<Object, Object> selectList(YjhVO vo);
	
	
	public Map<Object,Object> deleteData(YjhVO vo);
}
