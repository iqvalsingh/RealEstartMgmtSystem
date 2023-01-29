package com.rems.repo;

import java.util.List;
import java.util.Map;

import com.rems.bo.Admin;

public interface AdminRepo extends CommonRepo
{

	public Admin getAdminForLogin(String username, String password);

	public List<Admin> getAdminUser(Map<String, Object> criteria);

}
