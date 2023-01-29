/**
 * 
 */
package com.rems.repo.impl;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.rems.bo.Admin;
import com.rems.repo.AdminRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class AdminRepoImpl extends CommonRepoImpl implements AdminRepo
{

	@PersistenceContext
	EntityManager entityManager;

	@Override
	public Admin getAdminForLogin(String username, String password)
	{
		Admin admin = (Admin) entityManager
				.createQuery("from Admin where username = :username and password = :password")
				.setParameter("username", username).setParameter("password", password).getSingleResult();
		return admin;
	}

	@Override
	public List<Admin> getAdminUser(Map<String, Object> criteria)
	{
		List<Admin>		adminList	= null;
		StringBuffer	query		= new StringBuffer("from Admin");
		if (criteria != null)
		{
			query.append(" where ");
			criteria.forEach((property, value) -> {
				switch (property)
				{
					case "USERNAME":
						query.append("username = '" + value.toString() + "' and ");
						break;
					case "PASSWORD":
						query.append("password = '" + value.toString() + "' and ");
						break;
					case "EMAIL":
						query.append("email = '" + value.toString() + "' and ");
						break;
					case "MOBILENUMBER":
						query.append("mobilenumber = " + Long.parseLong(value.toString()) + " and ");
						break;
				}
			});
			// To remove the last and
			query.delete(query.length() - 5, query.length());
		}
		adminList = entityManager.createQuery(query.toString()).getResultList();
		return adminList;
	}

	public static void main(String[] args)
	{
		// create instance of Random class
		Random	randomNum	= new Random();
		int		propertyId	= 100000000 + randomNum.nextInt(900000000);
		for (int i = 0; i < 20; i++)
			System.out.println("Random number between 1 and 100: " + (1 + randomNum.nextInt(9)));
	}

}
