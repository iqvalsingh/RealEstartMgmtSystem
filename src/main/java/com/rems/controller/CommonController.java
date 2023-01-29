/**
 * 
 */
package com.rems.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rems.bo.City;
import com.rems.bo.Enquiry;
import com.rems.bo.Feedback;
import com.rems.bo.Page;
import com.rems.bo.Property;
import com.rems.bo.PropertyType;
import com.rems.services.CityService;
import com.rems.services.EnquiryService;
import com.rems.services.FeedbackService;
import com.rems.services.PageService;
import com.rems.services.PropertyService;
import com.rems.services.PropertyTypeService;

/**
 * @author Satbir Kaur
 *
 */

@Controller
@RequestMapping(value = "/")
public class CommonController
{

	@Autowired
	PageService			pageService;

	@Autowired
	PropertyTypeService	propertyTypeService;

	@Autowired
	CityService			cityService;

	@Autowired
	PropertyService		propertyService;

	@Autowired
	FeedbackService		feedbackService;

	@Autowired
	EnquiryService		enquiryService;

	@GetMapping(value = "/index.html")
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView	model		= new ModelAndView("index", "Function_Name", "home");
		List<City>		cityList	= cityService.getAllCity();
		model.addObject("cityList", cityList);
		List<PropertyType> propertyTypeList = propertyTypeService.getAllPropertyType();
		model.addObject("propertyTypeList", propertyTypeList);
		List<Property> propertyList = propertyService.getAllProperty();
		model.addObject("propertyList", propertyList);
		return model;
	}

	@GetMapping(value = "/about.html")
	public ModelAndView about(HttpServletRequest request, HttpServletResponse response)
	{
		Page			page	= pageService.getPageByPageType("aboutus");
		ModelAndView	model	= new ModelAndView("about", "Function_Name", "about");
		model.addObject("pageDetails", page.getPageDescription());
		return model;
	}

	@GetMapping(value = "/contact.html")
	public ModelAndView contact(HttpServletRequest request, HttpServletResponse response)
	{
		Page			page	= pageService.getPageByPageType("contactus");
		ModelAndView	model	= new ModelAndView("contact", "Function_Name", "contact");
		model.addObject("page", page);
		return model;
	}

	@GetMapping(value = "/properties-grid.html")
	public ModelAndView getPropertiesListing(HttpServletRequest request, HttpServletResponse response)
	{
		return propertiesListing(request, response);
	}

	@PostMapping(value = "/properties-grid.html")
	public ModelAndView propertiesListing(HttpServletRequest request, HttpServletResponse response)
	{
		String			propertyTypeId	= (String) request.getParameter("propertyTypeId");
		String			status			= (String) request.getParameter("status");
		String			cityId			= (String) request.getParameter("cityId");

		ModelAndView	model			= new ModelAndView("properties-grid");
		List<City>		cityList		= cityService.getAllCity();
		model.addObject("cityList", cityList);
		List<PropertyType> propertyTypeList = propertyTypeService.getAllPropertyType();
		model.addObject("propertyTypeList", propertyTypeList);
		List<Property>		propertyList	= null;
		Map<String, Object>	criteria		= new HashMap<>();
		if (propertyTypeId != null)
		{
			criteria.put("PROPERTY_TYPE", propertyTypeId);
		}
		if (status != null)
		{
			criteria.put("STATUS", status);
		}
		if (cityId != null)
		{
			criteria.put("CITY", cityId);
		}
		if (criteria.isEmpty())
		{
			propertyList = propertyService.getAllProperty();
		} else
		{
			propertyList = propertyService.getPropertyByCriteria(criteria);
		}
		model.addObject("propertyList", propertyList);
		return model;
	}

	@GetMapping(value = "/single-property-detail.html")
	public ModelAndView propertyDetails(HttpServletRequest request, HttpServletResponse response)
	{
		String			propertyId		= (String) request.getParameter("propertyId");
		Property		property		= propertyService.getPropertyById(Integer.parseInt(propertyId));
		City			city			= cityService.getCityById(property.getCity());
		List<Feedback>	feedbacks		= feedbackService.getFeedbackByPropertyId(propertyId);
		// Get Random 9 except current property
		List<Property>	propertyList	= propertyService.getRandomProperties(propertyId);
		ModelAndView	model			= new ModelAndView("single-property-detail");
		model.addObject("property", property);
		model.addObject("city", city);
		model.addObject("feedbacks", feedbacks);
		model.addObject("propertyList", propertyList);
		return model;
	}

	@PostMapping(value = "/saveEnquiry.html")
	public ModelAndView saveEnquiry(@ModelAttribute Enquiry enquiry, HttpServletRequest request)
	{
		String		propertyId	= (String) request.getParameter("propertyId");
		Property	property	= new Property();
		property.setPropertyId(Integer.parseInt(propertyId));
		enquiry.setEnquiryDate(new Date());
		Random	randomNum		= new Random();
		int		enquiryNumber	= 100000000 + randomNum.nextInt(900000000);
		enquiry.setEnquiryNumber(enquiryNumber + "");
		enquiry.setProperty(property);
		enquiryService.saveEnquiry(enquiry);

		return new ModelAndView("redirect:/single-property-detail.html?propertyId=" + propertyId);
	}
}
