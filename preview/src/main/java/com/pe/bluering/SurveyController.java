package com.pe.bluering;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pe.bluering.service.MgService;
import com.pe.bluering.service.SurveyService;
import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.surveyVO;

@Controller
public class SurveyController {
	@Autowired
	SurveyService surveyService;

	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index(HttpSession session,Model model) throws Exception {

		return "index";
	}
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index2(HttpSession session,Model model) throws Exception {
		
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		String todayTime = format.format(time);
		model.addAttribute("todayTime",todayTime);
		
		
		return "index";
	}
	

	@RequestMapping(value="/index", method=RequestMethod.POST)
	public void insert(surveyVO surveyvo,Model model,HttpServletRequest request) throws IllegalStateException, IOException {

		surveyService.insert(surveyvo);	
	}

	

}
