package com.example.demo.AppController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.models.EditModel;
import com.example.demo.models.Gym;
import com.example.demo.models.LoginModel;
import com.example.demo.models.Member;
import com.example.demo.models.MemberRepository;
import com.example.demo.services.GymService;
import com.example.demo.services.MemberService;

@Controller
public class AppController {
	
	@Autowired
	GymService gymService;
	
	@Autowired
	MemberService memberService;
	
	Member currentLoggedIn;
	
	
	// GET handler for login route
	@RequestMapping("/")
	public ModelAndView login()
	{
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("errorMessage","");
		return modelAndView;
	}
	
	
	// POST handler for login route
	@RequestMapping(value="/", method = RequestMethod.POST)
	public ModelAndView showDetails(LoginModel loginModel)
	{
		ModelAndView modelAndView;
		System.out.println(loginModel.getUser_name() + ',' + loginModel.getUser_pass());
		
		System.out.println( memberService.getOneMemberBasedOnId(loginModel.getUser_name()));
		
		Member member = memberService.getOneMemberBasedOnId(loginModel.getUser_name());
		System.out.println(member);
		
		if(member!= null &&  member.getUser_name().equals( loginModel.getUser_name()) && member.getUser_pass() .equals( loginModel.getUser_pass()))
		{
		System.out.println("match");
		modelAndView = new ModelAndView("index");
		modelAndView.addObject("LoggedInUser", member);
		this.currentLoggedIn = member; // member is logged in now
		List<Gym> iterator = gymService.getGyms();
		modelAndView.addObject("gym_list", iterator);
			
		} else {
			modelAndView = new ModelAndView("login");
			modelAndView.addObject("errorMessage", "Invalid credentials!");
			System.out.println("non-match");
		}
		return modelAndView;
		
	}

	// GET handler for register route
	@RequestMapping("/register")
	public ModelAndView register()
	{
		ModelAndView modelAndView = new ModelAndView("register");
		List<Gym> iterator = gymService.getGyms();
		modelAndView.addObject("gym_list", iterator);
		return modelAndView;
	}
	
	// POST handler for register route
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String showDetails(@ModelAttribute Member memberBean, Model model)
	{
		memberService.createMember(memberBean);
		return "redirect:/";
	}

	// redirect to login for all the GET requests for non logged in user
	@RequestMapping("/memberArea")
	public String index() 
	{
		return "redirect:/";
	}
	
	@RequestMapping(value = "/contactNumber", method = RequestMethod.POST)
	public String changeContactNumber(EditModel editModel)
	{
		if(this.currentLoggedIn != null) {
			System.out.println("Someone is logged in" + editModel);
			Member member = memberService.findById(this.currentLoggedIn.getMember_id());
			member.setPhone(editModel.getSomethingToEdit());
			memberService.createMember(member);
		} 
		return "redirect:/";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.POST)
	public String changeAddress(EditModel editModel)
	{
		if(this.currentLoggedIn != null) {
			System.out.println("Someone is logged in" + editModel);
			Member member = memberService.findById(this.currentLoggedIn.getMember_id());
			member.setStreet(editModel.getSomethingToEdit());
			memberService.createMember(member);
		} 
		return "redirect:/";
	}
	
	@RequestMapping(value = "/password", method = RequestMethod.POST)
	public String changePassword(EditModel editModel)
	{
		if(this.currentLoggedIn != null) {
			System.out.println("Someone is logged in" + editModel);
			Member member = memberService.findById(this.currentLoggedIn.getMember_id());
			member.setUser_pass(editModel.getSomethingToEdit());
			memberService.createMember(member);
		} 
		return "redirect:/";
	}
	
	
	@RequestMapping("/logout")
	public String logout()
	{
		if(this.currentLoggedIn != null) {
			System.out.println("Someone is logged in");
			currentLoggedIn = null;
			
		}else {
			System.out.println("No one is logged in now");
		}
		return "redirect:/";
	}	
}


