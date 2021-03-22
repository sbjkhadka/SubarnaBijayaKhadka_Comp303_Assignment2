package com.example.demo.models;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MemberRepository extends JpaRepository<Member, Integer> {
	
	@Query("SELECT m FROM Member m WHERE m.user_name =?1" )
	public Member findByUserName(String user_name);

}
