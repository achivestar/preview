package com.pe.bluering.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.mgDAO;
import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.surveyVO;

@Service
public class MgServiceImpl implements MgService {

	@Autowired
	mgDAO mgdao;
	
	@Override
	public void create(surveyVO surveyvo) {
		this.mgdao.insert(surveyvo);
	}

	@Override
	public List<surveyVO> list(surveyVO surveyvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public adminVO login(adminVO adminvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int surveyCount() {
		return mgdao.surveyCount();
		
	}

	@Override
	public List<surveyVO> getAge(surveyVO surveyvo) {
		return mgdao.getAge(surveyvo);
	}

	@Override
	public List<surveyVO> getArea(surveyVO surveyvo) {
		return mgdao.getArea(surveyvo);
	}

	@Override
	public List<surveyVO> item1(surveyVO surveyvo) {
		return mgdao.item1(surveyvo);
	}


}
