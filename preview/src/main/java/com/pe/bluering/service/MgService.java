package com.pe.bluering.service;

import java.util.ArrayList;
import java.util.List;

import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.surveyVO;

public interface MgService {

	void create(surveyVO surveyvo);
	
	List<surveyVO> list(surveyVO surveyvo);

	adminVO login(adminVO adminvo);
	
	int surveyCount();

	List<surveyVO> getAge(surveyVO surveyvo);

	List<surveyVO> getArea(surveyVO surveyvo);

	List<surveyVO> item1(surveyVO surveyvo);

}
