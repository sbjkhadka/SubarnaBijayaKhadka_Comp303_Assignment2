package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.demo.models.Member;
import com.example.demo.models.MemberRepository;

@Service
public class MemberService {
	
	@Autowired
	MemberRepository memberRepository;

	public List<Member> getMembers()
	{
		List<Member> members = new ArrayList<Member>();
		memberRepository.findAll().forEach(member->members.add(member));
		System.out.println(members);
		return members;
	}
	
	public void createMember(Member member)
	{
		memberRepository.save(member);
	}
	
	public Member getOneMemberBasedOnId(String user_name)
	{
		Member member = memberRepository.findByUserName(user_name);
		return member;
	}
	
	public Member findById(int id)
	{
		Member member = memberRepository.getOne(id);
		return member;
	}
	
}
