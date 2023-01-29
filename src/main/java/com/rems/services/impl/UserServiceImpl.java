/**
 * 
 */
package com.rems.services.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.User;
import com.rems.repo.UserRepo;
import com.rems.services.UserService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class UserServiceImpl implements UserService
{

	@Autowired
	UserRepo userRepo;

	@Override
	public Map<String, Integer> getUserCountByType()
	{
		return userRepo.getUserCountByType();
	}

	@Override
	public List<User> getUsers(Map<String, Object> criteria)
	{
		return userRepo.getUsers(criteria);
	}

	@Override
	public User getUserById(int userId)
	{
		return userRepo.getById(User.class, userId);
	}

	@Override
	public void addUser(User user)
	{
		userRepo.create(user);
	}

	@Override
	public void updateUser(User user)
	{
		userRepo.update(user);
	}

}
