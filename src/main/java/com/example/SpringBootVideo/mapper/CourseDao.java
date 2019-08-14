package com.example.SpringBootVideo.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.SpringBootVideo.model.Course;



public interface CourseDao {

	void add(Course course);

	void delete(int id);

	void update(Course course);
	void deleteAll(int[] ids);
	void deleteIn(ArrayList<Integer> ids);

	Course selectOne(int id);

	List<Course> selectAll();
	
	List<Course> selectHtml(Integer id);

	List<Course> likeAll(Course course);
	List<Course> selectAll(@Param("page")int page,@Param("number")int number);

	int deleteAll(Integer[] ids);
}
