package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Gym;
import com.example.demo.models.GymRepository;

@Service
public class GymService {
	@Autowired
	GymRepository gymRepository;
	
	public List<Gym> getGyms()
	{
		List<Gym> gyms = new ArrayList<Gym>();
		gymRepository.findAll().forEach(gym->gyms.add(gym));
		return gyms;
	}
}
