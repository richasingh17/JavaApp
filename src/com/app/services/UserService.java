package com.app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.daos.UserDao;
import com.app.pojos.Login;
import com.app.pojos.User;

@Service
public class UserService implements UserServiceI {

	@Autowired
	private  UserDao dao;
	
	public User validateUser(Login login) {
		// TODO Auto-generated method stub
		return dao.validateUser(login);
	}

	public void register(User user) {
		// TODO Auto-generated method stub
		dao.register(user);
	}

	@Override
	public List<User> getAllUsers() {
		return dao.getAllUsers();
	}

}
