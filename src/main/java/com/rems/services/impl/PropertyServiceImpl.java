/**
 * 
 */
package com.rems.services.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.Property;
import com.rems.repo.PropertyRepo;
import com.rems.services.PropertyService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class PropertyServiceImpl implements PropertyService
{
	@Autowired
	PropertyRepo propertyRepo;

	@Override
	public List<Property> getAllProperty()
	{
		return propertyRepo.getAll(Property.class);
	}

	@Override
	public Property getPropertyById(int propertyId)
	{
		return propertyRepo.getById(Property.class, propertyId);
	}

	@Override
	public void updateProperty(Property property)
	{
		propertyRepo.update(property);
	}

	@Override
	public void saveProperty(Property property)
	{
		propertyRepo.create(property);
	}

	@Override
	public void flush()
	{
		propertyRepo.flush();
	}

	@Override
	public List<Property> getPropertyByCriteria(Map<String, Object> criteria)
	{
		return propertyRepo.getPropertyByCriteria(criteria);
	}

	@Override
	public List<Property> getRandomProperties(String propertyId)
	{
		return propertyRepo.getRandomProperties(propertyId);
	}

}
