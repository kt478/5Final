package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.CampTipDAO;
import kh.spring.dto.CampTipDTO;

@Service
public class CampTipService {

	@Autowired
	private CampTipDAO dao;
	
	public int insert(CampTipDTO dto) throws Exception {
		return dao.insert(dto);
	}
	
	public List<CampTipDTO> selectAll() throws Exception {
		return dao.selectAll();
	}
	
	public CampTipDTO read(int camp_tip_num) throws Exception {
		return dao.read(camp_tip_num);
	}
	
	public int viewCount(int camp_tip_num) throws Exception {
		return dao.viewCount(camp_tip_num);
	}
	
	public int delete(int delNum) throws Exception {
		return dao.delete(delNum);
	}
	
//	public int modify(CampTipDTO dto)throws Exception {
//		System.out.println("수정화면 요청완료");
//		return dao.modify(dto);
//	}
	
}