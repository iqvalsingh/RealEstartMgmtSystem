package com.rems.services;

import java.util.List;
import java.util.Map;

import com.rems.bo.Admin;

public interface AdminService
{
	// public Admin getAdminForLogin(String username, String password);

	// public void addAdmin(Admin admin);

	// public void deleteAdmin(int adminId);

	public List<Admin> getAdminUser(Map<String, Object> criteria);

	public void updateAdmin(Admin admin);

	public Map<String, Integer> getCountOfAllTables();

	public Admin getAdminById(int adminId);
}
