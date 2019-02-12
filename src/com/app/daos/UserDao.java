package com.app.daos;


import java.util.List;

import com.app.pojos.Login;
import com.app.pojos.User;


public interface UserDao {
	
  void register(User user);
  User validateUser(Login login);
  List<User> getAllUsers();
}