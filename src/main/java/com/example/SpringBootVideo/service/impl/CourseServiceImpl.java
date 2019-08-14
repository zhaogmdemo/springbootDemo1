package com.example.SpringBootVideo.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringBootVideo.mapper.CourseDao;
import com.example.SpringBootVideo.model.Course;
import com.example.SpringBootVideo.service.CourseService;



@Service
public class CourseServiceImpl implements CourseService {
@Autowired
CourseDao dao;
	public List<Course> selectAll() {
		List<Course> list = dao.selectAll();
		if(list!=null){
			return list;
		}
		return null;
	}
	public void deleteAll(int[] ids) {
		dao.deleteAll(ids);
		
	}
	public void delete(int id) {
		dao.delete(id);
		
	}
	public void update(Course course) {
		dao.update(course);
		
	}
	public void add(Course course) {
		
	}
	public Course selectById(int id) {
		/*Course list = dao.selectById(id);
		if(list!=null){
			return list;
		}*/
		return null;
	}
	public int selectCount() {
		return 0;
	}
	@Override
	public void deleteIn(ArrayList<Integer> ids) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public Course selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Course> selectHtml(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Course> likeAll(Course course) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int deleteAll(Integer[] ids) {
		// TODO Auto-generated method stub
		return 0;
	}
}
	

