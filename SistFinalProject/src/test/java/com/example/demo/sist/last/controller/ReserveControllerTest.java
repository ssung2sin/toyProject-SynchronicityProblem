package com.example.demo.sist.last.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.sist.last.service.ReserveService;

@SpringBootTest
@Transactional
public class ReserveControllerTest {

	@Autowired
	ReserveService reserveService;

}
