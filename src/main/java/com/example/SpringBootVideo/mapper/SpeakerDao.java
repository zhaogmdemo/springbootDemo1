package com.example.SpringBootVideo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.SpringBootVideo.model.Speaker;



public interface SpeakerDao {

	void add(Speaker speaker);

	void delete(int id);

	void update(Speaker speaker);

	Speaker selectOne(int id);

	List<Speaker> selectAll();

	List<Speaker> likeAll(Speaker speaker);
	List<Speaker> selectAll(@Param("page")int page,@Param("number")int number);

	void deleteAll(int[] ids);
}
