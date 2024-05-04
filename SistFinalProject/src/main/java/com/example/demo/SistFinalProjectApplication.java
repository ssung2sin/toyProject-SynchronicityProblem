package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.example.demo.sist.last.*")
@ComponentScan("com.example.demo")
@MapperScan("com.example.demo.sist.last.mapper")
public class SistFinalProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SistFinalProjectApplication.class, args);
	}
}
