package com.app.services;

import java.util.List;

import com.app.pojos.Login;
import com.app.pojos.User;


public interface UserServiceI {
	
	User validateUser(Login login);
	void register(User user);
	List<User> getAllUsers();

}
