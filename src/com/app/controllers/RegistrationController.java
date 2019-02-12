package com.app.controllers;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.pojos.User;
import com.app.services.UserServiceI;


@Controller
public class RegistrationController {
	
  @Autowired
  public UserServiceI userService;
  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("register");
    mav.addObject("user", new User());
    return mav;
  }
  
  @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("user") com.app.pojos.User user) {
	  
	  ModelAndView mav = null;
	  mav = new ModelAndView("welcome");
	  userService.register(user);
	  List<User> users = userService.getAllUsers();
	  mav.addObject("users", users);
	  mav.addObject("firstname", user.getFirstname());
	  return mav;
  }
}