package com.example.SpringBootVideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringBootVideo.mapper.AdminDao;
import com.example.SpringBootVideo.model.Admin;
import com.example.SpringBootVideo.service.AdminService;


@Service
public class AdminServiceImpl implements AdminService{
@Autowired
AdminDao dao;
	public Admin selectByName(String accounts) {
		Admin admin = dao.selectName( accounts);
		if(admin!=null){
			return admin;	
		}else{
			return admin;
		}	
	}
	@Override
	public void add(Admin admin) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void update(Admin admin) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public Admin selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Admin selectName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Admin> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Admin> likeAll(Admin admin) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void deleteAll(int[] ids) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
	

}
