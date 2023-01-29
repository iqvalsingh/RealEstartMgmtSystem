/**
 * 
 */
package com.rems.services.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.Admin;
import com.rems.repo.AdminRepo;
import com.rems.services.AdminService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService
{
	@Autowired
	AdminRepo adminRepo;

	// @Override
	public void addAdmin(Admin admin)
	{
		adminRepo.create(admin);
	}

	// @Override
	public void deleteAdmin(int adminId)
	{
		adminRepo.deleteById(Admin.class, adminId);
	}

	@Override
	public List<Admin> getAdminUser(Map<String, Object> criteria)
	{
		List<Admin> adminList = adminRepo.getAdminUser(criteria);
		return adminList;
	}

	@Override
	public void updateAdmin(Admin admin)
	{
		adminRepo.update(admin);
	}

	@Override
	public Map<String, Integer> getCountOfAllTables()
	{
		return adminRepo.getCountOfAllTables();
	}

	@Override
	public Admin getAdminById(int adminId)
	{
		return adminRepo.getById(Admin.class, adminId);
	}

}
