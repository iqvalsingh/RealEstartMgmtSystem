/**
 * 
 */
package com.rems.services;

import java.util.List;

import com.rems.bo.City;

/**
 * @author Satbir Kaur
 *
 */
public interface CityService
{
	public List<City> getAllCity();

	public City getCityById(int cityId);

	public void updateCity(City city);

	public void saveCity(City city);

	public void flush();
}
