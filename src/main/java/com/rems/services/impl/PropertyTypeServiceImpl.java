/**
 * 
 */
package com.rems.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.PropertyType;
import com.rems.repo.CommonRepo;
import com.rems.services.PropertyTypeService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class PropertyTypeServiceImpl implements PropertyTypeService
{
	@Autowired
	@Qualifier("commonRepoImpl")
	CommonRepo commonRepo;

	@Override
	public List<PropertyType> getAllPropertyType()
	{
		return commonRepo.getAll(PropertyType.class);
	}

	@Override
	public PropertyType getPropertyTypeById(int propertyTypeId)
	{
		return commonRepo.getById(PropertyType.class, propertyTypeId);
	}

	@Override
	public void updatePropertyType(PropertyType propertyType)
	{
		commonRepo.update(propertyType);
	}

	@Override
	public void savePropertyType(PropertyType propertyType)
	{
		commonRepo.create(propertyType);
	}

}
