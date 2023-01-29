/**
 * 
 */
package com.rems.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.City;
import com.rems.repo.CommonRepo;
import com.rems.services.CityService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class CityServiceImpl implements CityService
{
	@Autowired
	@Qualifier("commonRepoImpl")
	CommonRepo commonRepo;

	@Override
	public List<City> getAllCity()
	{
		return commonRepo.getAll(City.class);
	}

	@Override
	public City getCityById(int cityId)
	{
		return commonRepo.getById(City.class, cityId);
	}

	@Override
	public void updateCity(City city)
	{
		commonRepo.update(city);
	}

	@Override
	public void saveCity(City city)
	{
		commonRepo.create(city);
	}

	@Override
	public void flush()
	{
		commonRepo.flush();
	}

}
