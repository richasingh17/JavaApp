package com.app.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.pojos.User;
import com.app.services.UserServiceI;


@Controller
public class MainController {
	
	@Autowired
	UserServiceI UserService;
	
	@RequestMapping(value = "/getUsers", method = RequestMethod.GET)
	public ModelAndView getUsers(){
		List<User> users = UserService.getAllUsers();
		ModelAndView mav = null;
		if(users != null){
			mav = new ModelAndView("welcome");
			mav.addObject("users", users);
			
		for (User user : users) {
			
			System.out.println(user.getUsername());
		}
		}
		
		return mav;
	}

}
