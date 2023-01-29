/**
 * 
 */
package com.rems.services;

import java.util.List;
import java.util.Map;

import com.rems.bo.User;

/**
 * @author Satbir Kaur
 *
 */
public interface UserService
{
	public Map<String, Integer> getUserCountByType();

	public List<User> getUsers(Map<String, Object> criteria);

	public User getUserById(int userId);

	public void addUser(User user);

	public void updateUser(User user);
}
