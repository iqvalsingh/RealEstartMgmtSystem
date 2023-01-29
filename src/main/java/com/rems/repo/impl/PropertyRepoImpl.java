/**
 * 
 */
package com.rems.repo.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.rems.bo.Property;
import com.rems.repo.PropertyRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class PropertyRepoImpl extends CommonRepoImpl implements PropertyRepo
{

	@Override
	public List<Property> getPropertyByCriteria(Map<String, Object> criteria)
	{
		List<Property>	propertyList	= null;
		StringBuffer	query			= new StringBuffer("from Property");
		if (criteria != null)
		{
			query.append(" where ");
			criteria.forEach((property, value) -> {
				switch (property)
				{
					case "PROPERTY_TYPE":
						query.append("propertytypeid = " + Integer.parseInt(value.toString()) + " and ");
						break;
					case "STATUS":
						query.append("status = '" + value.toString() + "' and ");
						break;
					case "CITY":
						query.append("city = " + Integer.parseInt(value.toString()) + " and ");
						break;
					case "USERID":
						query.append("user.userId = " + Integer.parseInt(value.toString()) + " and ");
						break;
				}
			});
			// To remove the last and
			query.delete(query.length() - 5, query.length());
		}
		propertyList = entityManager.createQuery(query.toString()).getResultList();
		return propertyList;
	}

	@Override
	public List<Property> getRandomProperties(String propertyId)
	{
		List<Property>	propertyList	= null;
		StringBuffer	query			= new StringBuffer(
				"from Property where propertyId != " + propertyId + " order by rand()");
		propertyList = entityManager.createQuery(query.toString()).setMaxResults(9).getResultList();
		return propertyList;
	}

}
