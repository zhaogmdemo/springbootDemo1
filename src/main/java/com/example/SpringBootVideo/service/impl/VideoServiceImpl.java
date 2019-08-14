package com.example.SpringBootVideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringBootVideo.mapper.VideoDao;
import com.example.SpringBootVideo.model.Video;
import com.example.SpringBootVideo.service.VideoService;


@Service
public class VideoServiceImpl implements VideoService {
	@Autowired
	VideoDao dao;
		public List<Video> selectAll() {
			List<Video> list = dao.selectAll();
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
	
		
		
		
		
		
		
		public List<Video> selectCourse(int course_id) {
			List<Video> list = 	dao.selectCourse(course_id);
			if(list!=null){
				return list;
			}
			return null;
		}
		@Override
		public void add(Video video) {
			// TODO Auto-generated method stub
			
		}
		@Override
		public void update(Video video) {
			// TODO Auto-generated method stub
			
		}
		@Override
		public Video selectOne(int id) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public List<Video> selectSpeakerId() {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public List<Video> selectCourse(Integer subjectId) {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public List<Video> selectVideoFirst(Integer id) {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public List<Video> selectVideo(Integer id) {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public List<Video> likeAll(String factor, Integer speakerId, Integer courseId) {
			// TODO Auto-generated method stub
			return null;
		}
}
		

