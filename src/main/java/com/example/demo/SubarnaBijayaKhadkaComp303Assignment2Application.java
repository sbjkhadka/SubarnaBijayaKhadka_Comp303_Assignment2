package com.example.demo;

import java.util.Iterator;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;

import com.example.demo.models.Gym;
import com.example.demo.models.GymRepository;
import com.example.demo.models.Member;
import com.example.demo.models.MemberRepository;

import antlr.collections.List;

@SpringBootApplication
public class SubarnaBijayaKhadkaComp303Assignment2Application {

	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(SubarnaBijayaKhadkaComp303Assignment2Application.class, args);
	}

}
