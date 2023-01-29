/**
 * 
 */
package com.rems.services;

import java.util.List;
import java.util.Map;

import com.rems.bo.Property;

/**
 * @author Satbir Kaur
 *
 */
public interface PropertyService
{

	public List<Property> getAllProperty();

	public Property getPropertyById(int propertyId);

	public void updateProperty(Property property);

	public void saveProperty(Property property);

	public void flush();

	public List<Property> getPropertyByCriteria(Map<String, Object> criteria);

	public List<Property> getRandomProperties(String propertyId);
}
