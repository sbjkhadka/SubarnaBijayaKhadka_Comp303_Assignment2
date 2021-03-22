package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Member {
	
	
	
	public Member() { super();}

	public Member(int member_id, String first_name, String last_name, String street, String city, String postal_code,
			String phone, String user_name, String user_pass, int gym_id) {
		super();
		this.member_id = member_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.street = street;
		this.city = city;
		this.postal_code = postal_code;
		this.phone = phone;
		this.user_name = user_name;
		this.user_pass = user_pass;
		this.gym_id = gym_id;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int member_id;
	private String first_name;
	private String last_name;
	private String street;
	private String city;
	private String postal_code;
	private String phone;
	public String user_name;
	public String user_pass;
	private int gym_id;
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
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
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getGym_id() {
		return gym_id;
	}
	public void setGym_id(int gym_id) {
		this.gym_id = gym_id;
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", street=" + street + ", city=" + city + ", postal_code=" + postal_code + ", phone=" + phone
				+ ", user_name=" + user_name + ", user_pass=" + user_pass + ", gym_id=" + gym_id + "]";
	}
	
	
	

}
