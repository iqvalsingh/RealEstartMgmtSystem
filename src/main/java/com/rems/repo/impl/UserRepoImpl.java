/**
 * 
 */
package com.rems.repo.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.util.CollectionUtils;

import com.rems.bo.User;
import com.rems.repo.UserRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class UserRepoImpl extends CommonRepoImpl implements UserRepo
{

	@Override
	public List<User> getUsers(Map<String, Object> criteria)
	{
		List<User>		userList	= null;
		StringBuffer	query		= new StringBuffer("from User");
		if (criteria != null)
		{
			query.append(" where ");
			criteria.forEach((property, value) -> {
				switch (property)
				{
					case "EMAIL":
						query.append("email = '" + value.toString() + "' and ");
						break;
					case "PASSWORD":
						query.append("password = '" + value.toString() + "' and ");
						break;
					case "USERTYPE":
						query.append("userType = " + Integer.parseInt(value.toString()) + " and ");
						break;
					case "MOBILENUMBER":
						query.append("mobilenumber = " + Long.parseLong(value.toString()) + " and ");
						break;
				}
			});
			// To remove the last and
			query.delete(query.length() - 5, query.length());
		}
		userList = entityManager.createQuery(query.toString()).getResultList();
		return userList;
	}

	@Override
	public Map<String, Integer> getUserCountByType()
	{
		Map<String, Integer>	userTypeAndCount	= null;
		List<Object[]>			result				= (List<Object[]>) entityManager
				.createNativeQuery("SELECT usertype, count(*) FROM tbluser group by usertype").getResultList();
		if (!CollectionUtils.isEmpty(result))
		{
			userTypeAndCount = new HashMap<>();
			for (Object[] row : result)
			{
				userTypeAndCount.put((String) row[0].toString(), Integer.parseInt(row[1].toString()));
			}
		}
		return userTypeAndCount;
	}

}
