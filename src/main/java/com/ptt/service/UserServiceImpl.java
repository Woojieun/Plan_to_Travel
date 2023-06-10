package com.ptt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptt.mapper.UserMapper;
import com.ptt.model.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper usermapper;

	@Override
	public void userJoin(UserVO user) throws Exception
	{ 
		usermapper.userJoin(user);
	}
	
	@Override
	public int idCheck(String uID) throws Exception {
		
		return usermapper.idCheck(uID);
	}
}