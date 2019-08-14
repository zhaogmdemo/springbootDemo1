package com.example.SpringBootVideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringBootVideo.mapper.SpeakerDao;
import com.example.SpringBootVideo.model.Speaker;
import com.example.SpringBootVideo.service.SpeakerService;


@Service
public class SpeakerServiceImpl implements SpeakerService {
@Autowired
SpeakerDao dao;
	public List<Speaker> selectAll(int page,int number) {
		List<Speaker> list = dao.selectAll(page,number);
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
	public void update(Speaker Speaker) {
		dao.update(Speaker);
		
	}
	public void add(Speaker Speaker) {
		dao.add(Speaker);
		
	}
	public Speaker selectById(int id) {
		Speaker list = dao.selectOne(id);
		if(list!=null){
			return list;
		}
		return null;
	}

	@Override
	public Speaker selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Speaker> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Speaker> likeAll(Speaker speaker) {
		// TODO Auto-generated method stub
		return null;
	}


}
