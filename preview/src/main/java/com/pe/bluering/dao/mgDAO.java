package com.pe.bluering.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.surveyVO;

@Repository
public class mgDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insert(surveyVO surveyvo) {
		return this.sqlSessionTemplate.insert("mg.insert",surveyvo);
	}

	public int surveyCount() {
		return this.sqlSessionTemplate.selectOne("mg.surveyCount");
	}

	public List<surveyVO> getAge(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("mg.surveyGetAgeCount");
	}

	public List<surveyVO> getArea(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("mg.surveyGetAreaCount");
	}

	public List<surveyVO> item1(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("mg.item1");
	}




}
