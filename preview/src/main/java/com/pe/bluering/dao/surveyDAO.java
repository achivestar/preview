package com.pe.bluering.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.vo.surveyVO;

@Repository
public class surveyDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int insert(surveyVO surveyvo) {
		return this.sqlSessionTemplate.insert("survey.insert",surveyvo);
	}
	
	
}
