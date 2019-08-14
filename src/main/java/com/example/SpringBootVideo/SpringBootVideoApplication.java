package com.example.SpringBootVideo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@MapperScan("com.example.SpringBootVideo.mapper")
@SpringBootApplication
public class SpringBootVideoApplication {

	public static void main(String[] args) {
		System.out.println("111");
		SpringApplication.run(SpringBootVideoApplication.class, args);
		
	}

}
