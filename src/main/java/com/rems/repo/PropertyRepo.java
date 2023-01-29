/**
 * 
 */
package com.rems.repo;

import java.util.List;
import java.util.Map;

import com.rems.bo.Property;

/**
 * @author Satbir Kaur
 *
 */
public interface PropertyRepo extends CommonRepo
{
	public List<Property> getPropertyByCriteria(Map<String, Object> criteria);

	public List<Property> getRandomProperties(String propertyId);
}
