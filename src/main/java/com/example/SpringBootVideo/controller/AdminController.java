package com.example.SpringBootVideo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.SpringBootVideo.model.Admin;
import com.example.SpringBootVideo.model.Course;
import com.example.SpringBootVideo.model.Speaker;
import com.example.SpringBootVideo.model.Subject;
import com.example.SpringBootVideo.service.AdminService;
import com.example.SpringBootVideo.service.CourseService;
import com.example.SpringBootVideo.service.SpeakerService;
import com.example.SpringBootVideo.service.SubjectService;
import com.example.SpringBootVideo.util.MD5Utils;




/**
 * Servlet implementation class AdminController
 */
@Controller
public class AdminController  {
	@Autowired
	AdminService dao;
	@Autowired
	CourseService courseService;
	@Autowired
	SubjectService subjectService;
	@Autowired
	SpeakerService speakerService;
	@RequestMapping(value="AdminLogin.action")
	public String AdminLogin(Admin admin,HttpServletRequest req, HttpServletResponse resp){
		List<Subject> subject666 = subjectService.selectAll();
		Admin admin2 = dao.selectName(admin.getAccounts());
		List<Speaker> speaker2s = speakerService.selectAll();
		List<Course> course2s = courseService.selectAll();
		String md5=MD5Utils.md5(admin.getPassword());
		if(admin2==null){
			req.setAttribute("msg","账号不正确");
		}else if(!(admin2.getPassword().equals(md5))){
			req.setAttribute("msg","密码不正确");
		}else{			
			req.getSession().setAttribute("admin3", admin2);	
			req.getSession().setAttribute("subject2s", subject666);	
			req.getSession().setAttribute("speaker2s", speaker2s);	
			req.getSession().setAttribute("course2s", course2s);	
			
			return "redirect:CourseSelectAll.action";
		
		}

		return "forward:jsp/index.jsp";
	}
	
	@RequestMapping(value="index")
	public String index(){
		return "index";
	}
	

}
