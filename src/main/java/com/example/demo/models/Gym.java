package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Gym {
	
	public Gym(int gym_id, String gym_name, String street, String postal_code, String phone) {
		super();
		this.gym_id = gym_id;
		this.gym_name = gym_name;
		this.street = street;
		this.postal_code = postal_code;
		this.phone = phone;
	}
	
	public Gym() {super();}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int gym_id;
	
	private String gym_name;
	
	private String street;
	
	private String postal_code;
	
	private String phone;

	public int getGym_id() {
		return gym_id;
	}

	public void setGym_id(int gym_id) {
		this.gym_id = gym_id;
	}

	public String getGym_name() {
		return gym_name;
	}

	public void setGym_name(String gym_name) {
		this.gym_name = gym_name;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	@Override
	public String toString() {
		return "Gym [gym_id=" + gym_id + ", gym_name=" + gym_name + ", street=" + street + ", postal_code="
				+ postal_code + ", phone=" + phone + "]";
	}
	
	
	
	
}
