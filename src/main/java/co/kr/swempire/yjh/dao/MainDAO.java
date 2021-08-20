package co.kr.swempire.yjh.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.swempire.yjh.vo.MainVO;

@Repository
public interface MainDAO {

	List<MainVO> mainpage();
}
