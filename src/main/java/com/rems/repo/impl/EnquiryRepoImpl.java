/**
 * 
 */
package com.rems.repo.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.rems.bo.Enquiry;
import com.rems.repo.EnquiryRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class EnquiryRepoImpl extends CommonRepoImpl implements EnquiryRepo
{

	@Override
	public List<Enquiry> getEnquiryByCriteria(Map<String, Object> criteria)
	{
		List<Enquiry>	enquiryList	= null;
		StringBuffer	query		= new StringBuffer("from Enquiry");
		if (criteria != null)
		{
			query.append(" where ");
			criteria.forEach((property, value) -> {
				switch (property)
				{
					case "USERID":
						query.append("property.user.userId = " + Integer.parseInt(value.toString()) + " and ");
						break;
					case "STATUS":
						query.append("status ");
						if (value == null)
						{
							query.append(" is null and ");
						} else
						{
							query.append("= '" + value.toString() + "' and ");
						}
						break;
				}
			});
			// To remove the last and
			query.delete(query.length() - 5, query.length());
		}
		enquiryList = entityManager.createQuery(query.toString()).getResultList();

		return enquiryList;
	}

}
