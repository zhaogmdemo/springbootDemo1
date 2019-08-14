package com.example.SpringBootVideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringBootVideo.mapper.SubjectDao;
import com.example.SpringBootVideo.model.Subject;
import com.example.SpringBootVideo.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService {
@Autowired
SubjectDao dao;
	public List<Subject> selectAll() {
		return dao.selectAll();
	}

	public void deleteAll(int[] ids) {
		// TODO Auto-generated method stub
		
	}

	public Subject selectById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	public void update(Subject Subject) {
		// TODO Auto-generated method stub
		
	}

	public void add(Subject Subject) {
		// TODO Auto-generated method stub
		
	}

	public int selectCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Subject selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Subject> likeAll(Subject subject) {
		// TODO Auto-generated method stub
		return null;
	}

}
