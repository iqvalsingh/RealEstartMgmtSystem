/**
 * 
 */
package com.rems.controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rems.bo.Admin;
import com.rems.bo.City;
import com.rems.bo.Country;
import com.rems.bo.Feedback;
import com.rems.bo.Page;
import com.rems.bo.Property;
import com.rems.bo.PropertyType;
import com.rems.bo.State;
import com.rems.bo.User;
import com.rems.services.AdminService;
import com.rems.services.CityService;
import com.rems.services.CountryService;
import com.rems.services.FeedbackService;
import com.rems.services.PageService;
import com.rems.services.PropertyService;
import com.rems.services.PropertyTypeService;
import com.rems.services.StateService;
import com.rems.services.UserService;

/**
 * @author Satbir Kaur
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController
{
	@Autowired
	AdminService		adminService;

	@Autowired
	UserService			userService;

	@Autowired
	PropertyTypeService	propertyTypeService;

	@Autowired
	CountryService		countryService;

	@Autowired
	StateService		stateService;

	@Autowired
	CityService			cityService;

	@Autowired
	PropertyService		propertyService;

	@Autowired
	FeedbackService		feedbackService;

	@Autowired
	PageService			pageService;

	@GetMapping(value = "/login.html")
	public ModelAndView loginPage(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("admin/login", "Function_Name", "login");
		return model;
	}

	@GetMapping(value = "/forgot-password.html")
	public ModelAndView resetPasswordPage(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("admin/forgot-password", "Function_Name", "resetPasswordPage");
		return model;
	}

	@GetMapping(value = "/add-propertytype.html")
	public ModelAndView addPropertyType(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("admin/add-propertytype");
		return model;
	}

	@GetMapping(value = "/add-country.html")
	public ModelAndView addCountry(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("admin/add-country");
		return model;
	}

	@GetMapping(value = "/add-state.html")
	public ModelAndView addState(HttpServletRequest request, HttpServletResponse response)
	{
		List<Country>	countryList	= countryService.getAllCountry();
		ModelAndView	model		= new ModelAndView("admin/add-state");
		model.addObject("countryList", countryList);
		return model;
	}

	@GetMapping(value = "/add-city.html")
	public ModelAndView addCity(HttpServletRequest request, HttpServletResponse response)
	{
		List<Country>	countryList	= countryService.getAllCountry();
		List<State>		stateList	= stateService.getAllState();
		ModelAndView	model		= new ModelAndView("admin/add-city");
		model.addObject("countryList", countryList);
		model.addObject("stateList", stateList);
		return model;
	}

	@GetMapping(value = "/manage-propertytype.html")
	public ModelAndView managePropertyType(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView		model				= new ModelAndView("admin/manage-propertytype");
		List<PropertyType>	propertyTypeList	= propertyTypeService.getAllPropertyType();
		model.addObject("propertyTypeList", propertyTypeList);
		return model;
	}

	@GetMapping(value = "/manage-country.html")
	public ModelAndView manageCountry(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView	model		= new ModelAndView("admin/manage-country");
		List<Country>	countryList	= countryService.getAllCountry();
		model.addObject("countryList", countryList);
		return model;
	}

	@GetMapping(value = "/manage-state.html")
	public ModelAndView manageState(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView	model		= new ModelAndView("admin/manage-state");
		List<State>		stateList	= stateService.getAllState();
		model.addObject("stateList", stateList);
		return model;
	}

	@GetMapping(value = "/manage-city.html")
	public ModelAndView manageCity(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView	model		= new ModelAndView("admin/manage-city");
		List<City>		cityList	= cityService.getAllCity();
		model.addObject("cityList", cityList);
		return model;
	}

	@GetMapping(value = "/manage-agents.html")
	public ModelAndView manageAgents(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView		model		= new ModelAndView("admin/manage-agents");
		Map<String, Object>	criteria	= new HashMap<>();
		criteria.put("USERTYPE", 1);
		List<User> userList = userService.getUsers(criteria);
		model.addObject("agents", userList);
		return model;
	}

	@GetMapping(value = "/manage-owners.html")
	public ModelAndView manageOwners(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView		model		= new ModelAndView("admin/manage-owners");
		Map<String, Object>	criteria	= new HashMap<>();
		criteria.put("USERTYPE", 2);
		List<User> userList = userService.getUsers(criteria);
		model.addObject("owners", userList);
		return model;
	}

	@GetMapping(value = "/manage-users.html")
	public ModelAndView manageUsers(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView		model		= new ModelAndView("admin/manage-users");
		Map<String, Object>	criteria	= new HashMap<>();
		criteria.put("USERTYPE", 3);
		List<User> userList = userService.getUsers(criteria);
		model.addObject("users", userList);
		return model;
	}

	@GetMapping(value = "/edit-propertytype.html")
	public ModelAndView editPropertyType(HttpServletRequest request, HttpServletResponse response)
	{
		int				propertyTypeId	= Integer.parseInt(request.getParameter("propertyTypeId").toString());
		PropertyType	propertyType	= propertyTypeService.getPropertyTypeById(propertyTypeId);
		ModelAndView	model			= new ModelAndView("admin/edit-propertytype");
		model.addObject("propertyType", propertyType);
		return model;
	}

	@GetMapping(value = "/edit-country.html")
	public ModelAndView editCountry(HttpServletRequest request, HttpServletResponse response)
	{
		int				countryId	= Integer.parseInt(request.getParameter("countryId").toString());
		Country			country		= countryService.getCountryById(countryId);
		ModelAndView	model		= new ModelAndView("admin/edit-country");
		model.addObject("country", country);
		return model;
	}

	@GetMapping(value = "/edit-state.html")
	public ModelAndView editState(HttpServletRequest request, HttpServletResponse response)
	{
		int				stateId		= Integer.parseInt(request.getParameter("stateId").toString());
		State			state		= stateService.getStateById(stateId);
		List<Country>	countryList	= countryService.getAllCountry();
		ModelAndView	model		= new ModelAndView("admin/edit-state");
		model.addObject("state", state);
		model.addObject("countryList", countryList);
		return model;
	}

	@GetMapping(value = "/edit-city.html")
	public ModelAndView editCity(HttpServletRequest request, HttpServletResponse response)
	{
		int				cityId		= Integer.parseInt(request.getParameter("cityId").toString());
		City			city		= cityService.getCityById(cityId);
		List<Country>	countryList	= countryService.getAllCountry();
		List<State>		stateList	= stateService.getAllState();
		ModelAndView	model		= new ModelAndView("admin/edit-city");
		model.addObject("city", city);
		model.addObject("countryList", countryList);
		model.addObject("stateList", stateList);
		return model;
	}

	@GetMapping(value = "/view-users-details.html")
	public ModelAndView viewUserDetails(HttpServletRequest request, HttpServletResponse response)
	{
		int				userId	= Integer.parseInt(request.getParameter("userId").toString());
		User			user	= userService.getUserById(userId);
		ModelAndView	model	= new ModelAndView("admin/view-users-details");
		model.addObject(user);
		return model;
	}

	@GetMapping(value = "/listed-properties.html")
	public ModelAndView propertiesListing(HttpServletRequest request, HttpServletResponse response)
	{
		List<Property>	propertyList	= propertyService.getAllProperty();
		ModelAndView	model			= new ModelAndView("admin/listed-properties");
		model.addObject("propertyList", propertyList);
		return model;
	}

	@GetMapping(value = "/view-property-details.html")
	public ModelAndView viewPropertyDetails(HttpServletRequest request, HttpServletResponse response)
	{
		int				propertyId	= Integer.parseInt(request.getParameter("propertyId").toString());
		Property		property	= propertyService.getPropertyById(propertyId);
		ModelAndView	model		= new ModelAndView("admin/view-property-details");
		model.addObject(property);
		return model;
	}

	@GetMapping(value = "/new-reviews.html")
	public ModelAndView newReviewListing(HttpServletRequest request, HttpServletResponse response)
	{
		List<Feedback>	feedbackList	= feedbackService.getFeedbackByPublishType(-1);
		ModelAndView	model			= new ModelAndView("admin/new-reviews");
		model.addObject("feedbackList", feedbackList);
		return model;
	}

	@GetMapping(value = "/approved-reviews.html")
	public ModelAndView approvedReviewListing(HttpServletRequest request, HttpServletResponse response)
	{
		List<Feedback>	feedbackList	= feedbackService.getFeedbackByPublishType(1);
		ModelAndView	model			= new ModelAndView("admin/approved-reviews");
		model.addObject("feedbackList", feedbackList);
		return model;
	}

	@GetMapping(value = "/unapproved-reviews.html")
	public ModelAndView unapprovedReviewListing(HttpServletRequest request, HttpServletResponse response)
	{
		List<Feedback>	feedbackList	= feedbackService.getFeedbackByPublishType(0);
		ModelAndView	model			= new ModelAndView("admin/unapproved-reviews");
		model.addObject("feedbackList", feedbackList);
		return model;
	}

	@GetMapping(value = "/aboutus.html")
	public ModelAndView aboutUs(HttpServletRequest request, HttpServletResponse response)
	{
		Page			page	= pageService.getPageByPageType("aboutus");
		ModelAndView	model	= new ModelAndView("admin/aboutus");
		model.addObject("page", page);
		return model;
	}

	@GetMapping(value = "/contactus.html")
	public ModelAndView contactUs(HttpServletRequest request, HttpServletResponse response)
	{
		Page			page	= pageService.getPageByPageType("contactus");
		ModelAndView	model	= new ModelAndView("admin/contactus");
		model.addObject("page", page);
		return model;
	}

	@GetMapping(value = "/search-property.html")
	public ModelAndView searchProperty(HttpServletRequest request, HttpServletResponse response)
	{
		List<Property>	propertyList	= propertyService.getAllProperty();
		ModelAndView	model			= new ModelAndView("admin/search-property");
		model.addObject("propertyList", propertyList);
		return model;
	}

	@GetMapping(value = "/admin-profile.html")
	public ModelAndView adminProfile(HttpServletRequest request, HttpServletResponse response)
	{
		Admin			admin	= (Admin) request.getSession().getAttribute("adminUser");
		ModelAndView	model	= new ModelAndView("admin/admin-profile");
		model.addObject("admin", admin);
		return model;
	}

	@GetMapping(value = "/change-password.html")
	public ModelAndView changePassword(HttpServletRequest request, HttpServletResponse response)
	{
		Admin			admin	= (Admin) request.getSession().getAttribute("adminUser");
		ModelAndView	model	= new ModelAndView("admin/change-password");
		model.addObject("admin", admin);
		return model;
	}

	@PostMapping(value = "/updatePassword.html")
	public ModelAndView updatePassword(HttpServletRequest request, HttpServletResponse response)
	{
		Admin			admin				= (Admin) request.getSession().getAttribute("adminUser");
		String			currentPassword		= (String) request.getParameter("currentpassword");
		String			newPassword			= (String) request.getParameter("newpassword");
		String			confirmPassword		= (String) request.getParameter("confirmpassword");

		String			tempCurrentPassword	= currentPassword;
		MessageDigest	md					= null;
		try
		{
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e)
		{
			// Log
		}
		md.update(currentPassword.getBytes());
		BigInteger hash = new BigInteger(1, md.digest());
		tempCurrentPassword = hash.toString(16);
		while (tempCurrentPassword.length() < 32)
		{ // 40 for SHA-1
			tempCurrentPassword = "0" + tempCurrentPassword;
		}
		ModelAndView model = new ModelAndView("admin/change-password");
		if (!tempCurrentPassword.equals(admin.getPassword()))
		{
			model.addObject("message", "Your current password is wrong");
			return model;
		}

		if (newPassword != null && confirmPassword != null && newPassword.equals(confirmPassword))
		{
			String password = newPassword;
			md.update(newPassword.getBytes());
			password = hash.toString(16);
			while (password.length() < 32)
			{ // 40 for SHA-1
				password = "0" + password;
			}
			admin.setPassword(password);
			adminService.updateAdmin(admin);
			model.addObject("message", "Your password successully changed");
		}
		return model;
	}

	@GetMapping(value = "/logout.html")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
	{
		Admin admin = (Admin) request.getSession().getAttribute("adminUser");
		if (admin == null)
		{
			// Already logged out
		}
		ModelAndView model = new ModelAndView("redirect:login.html");
		return model;
	}

	@PostMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
	{
		String			username		= (String) request.getParameter("username");
		String			passwordInput	= (String) request.getParameter("password");

		String			password		= passwordInput;
		MessageDigest	md				= null;
		try
		{
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e)
		{
			// Log
		}
		md.update(passwordInput.getBytes());
		BigInteger hash = new BigInteger(1, md.digest());
		password = hash.toString(16);
		while (password.length() < 32)
		{ // 40 for SHA-1
			password = "0" + password;
		}

		Map<String, Object> loginMap = new HashMap<>();
		loginMap.put("USERNAME", username);
		loginMap.put("PASSWORD", password);
		List<Admin> adminList = adminService.getAdminUser(loginMap);
		if (CollectionUtils.isEmpty(adminList))
		{
			return new ModelAndView("admin/login");
		} else
		{
			request.getSession().setAttribute("adminUser", adminList.get(0));
			return new ModelAndView("redirect:/admin/dashboard.html");
		}
	}

	@GetMapping(value = "/dashboard.html")
	public ModelAndView dashboard(HttpServletRequest request, HttpServletResponse response)
	{
		Map<String, Integer>	tableNameRowCount	= adminService.getCountOfAllTables();
		Map<String, Integer>	userTypeAndCount	= userService.getUserCountByType();
		ModelAndView			model				= new ModelAndView();
		model.addObject("propertyType", tableNameRowCount.get("tblpropertytype"));
		model.addObject("country", tableNameRowCount.get("tblcountry"));
		model.addObject("state", tableNameRowCount.get("tblstate"));
		model.addObject("city", tableNameRowCount.get("tblcity"));
		model.addObject("agent", userTypeAndCount.get("1"));
		model.addObject("owner", userTypeAndCount.get("2"));
		model.addObject("user", userTypeAndCount.get("3"));
		model.addObject("property", tableNameRowCount.get("tblproperty"));
		model.setViewName("admin/dashboard");
		return model;
	}

	@PostMapping(value = "/resetPassword")
	public ModelAndView resetPassword(HttpServletRequest request, HttpServletResponse response)
	{
		String				email			= (String) request.getParameter("email");
		String				mobilenumber	= (String) request.getParameter("contactno");
		Map<String, Object>	loginMap		= new HashMap<>();
		loginMap.put("EMAIL", email);
		loginMap.put("MOBILENUMBER", mobilenumber);
		List<Admin>		adminList	= adminService.getAdminUser(loginMap);
		ModelAndView	model		= new ModelAndView("admin/reset-password");
		if (CollectionUtils.isEmpty(adminList))
		{
			model = new ModelAndView("admin/forgot-password");
			model.addObject("message", "Invalid Details. Please try again.");
		} else
		{
			model.addObject("adminUser", adminList.get(0));
		}
		return model;
	}

	@PostMapping(value = "/saveNewPassword.html")
	public ModelAndView saveNewPassword(HttpServletRequest request, HttpServletResponse response)
	{
		String	newPassword		= (String) request.getParameter("newpassword");
		String	confirmPassword	= (String) request.getParameter("confirmpassword");
		if (newPassword != null && confirmPassword != null && newPassword.equals(confirmPassword))
		{
			String			adminId		= (String) request.getParameter("adminId");
			Admin			admin		= adminService.getAdminById(Integer.parseInt(adminId));
			String			password	= newPassword;
			MessageDigest	md			= null;
			try
			{
				md = MessageDigest.getInstance("MD5");
			} catch (NoSuchAlgorithmException e)
			{
				// Log
			}
			md.update(newPassword.getBytes());
			BigInteger hash = new BigInteger(1, md.digest());
			password = hash.toString(16);
			while (password.length() < 32)
			{ // 40 for SHA-1
				password = "0" + password;
			}
			admin.setPassword(password);
			adminService.updateAdmin(admin);
			return new ModelAndView("admin/login");
		} else
		{
			// Passwords did not match
			return new ModelAndView("admin/reset-password");
		}
	}

	@PostMapping(value = "/savePropertyType")
	public ModelAndView savePropertyType(HttpServletRequest request, HttpServletResponse response)
	{
		String			propertyTypeName	= (String) request.getParameter("propertyType");
		PropertyType	propertyType		= new PropertyType();
		propertyType.setPropertyType(propertyTypeName);
		propertyType.setCreationDate(new Date());
		propertyTypeService.savePropertyType(propertyType);
		return managePropertyType(request, response);
	}

	@PostMapping(value = "/updatePropertyType")
	public ModelAndView updatePropertyType(HttpServletRequest request, HttpServletResponse response)
	{
		int				propertyTypeId		= Integer.parseInt(request.getParameter("propertyTypeId").toString());
		String			propertyTypeName	= (String) request.getParameter("propertyType");
		PropertyType	propertyType		= propertyTypeService.getPropertyTypeById(propertyTypeId);
		propertyType.setPropertyType(propertyTypeName);
		propertyTypeService.updatePropertyType(propertyType);
		return managePropertyType(request, response);
	}

	@PostMapping(value = "/saveCountry")
	public ModelAndView saveCountry(HttpServletRequest request, HttpServletResponse response)
	{
		String	countryName	= (String) request.getParameter("countryName");
		Country	country		= new Country();
		country.setCountryName(countryName);
		country.setCreationDate(new Date());
		countryService.saveCountry(country);
		return manageCountry(request, response);
	}

	@PostMapping(value = "/updateCountry")
	public ModelAndView updateCountry(HttpServletRequest request, HttpServletResponse response)
	{
		int		countryId	= Integer.parseInt(request.getParameter("countryId").toString());
		String	countryName	= (String) request.getParameter("countryName");
		Country	country		= countryService.getCountryById(countryId);
		country.setCountryName(countryName);
		countryService.updateCountry(country);
		return manageCountry(request, response);
	}

	@PostMapping(value = "/saveState")
	public ModelAndView saveState(HttpServletRequest request, HttpServletResponse response)
	{
		String	stateName	= (String) request.getParameter("stateName");
		int		countryId	= Integer.parseInt(request.getParameter("country").toString());
		State	state		= new State();
		Country	country		= new Country();
		country.setCountryId(countryId);
		state.setCountry(country);
		state.setStateName(stateName);
		state.setCreationDate(new Date());
		stateService.saveState(state);
		stateService.flush();
		return manageState(request, response);
	}

	@PostMapping(value = "/updateState")
	public ModelAndView updateState(HttpServletRequest request, HttpServletResponse response)
	{
		int		stateId		= Integer.parseInt(request.getParameter("stateId").toString());
		int		countryId	= Integer.parseInt(request.getParameter("country").toString());
		String	stateName	= (String) request.getParameter("stateName");
		State	state		= stateService.getStateById(stateId);
		if (countryId != state.getCountry().getCountryId())
		{
			Country country = new Country();
			country.setCountryId(countryId);
			state.setCountry(country);
		}
		state.setStateName(stateName);
		stateService.updateState(state);
		stateService.flush();
		return manageState(request, response);
	}

	@PostMapping(value = "/saveCity")
	public ModelAndView saveCity(HttpServletRequest request, HttpServletResponse response)
	{
		String	cityName	= (String) request.getParameter("cityName");
		int		stateId		= Integer.parseInt(request.getParameter("state").toString());
		int		countryId	= Integer.parseInt(request.getParameter("country").toString());
		City	city		= new City();
		State	state		= new State();
		Country	country		= new Country();
		country.setCountryId(countryId);
		state.setCountry(country);
		state.setStateId(stateId);
		city.setState(state);
		city.setCityName(cityName);
		city.setCreationDate(new Date());
		cityService.saveCity(city);
		cityService.flush();
		return manageCity(request, response);
	}

	@PostMapping(value = "/updateCity")
	public ModelAndView updateCity(HttpServletRequest request, HttpServletResponse response)
	{
		int		cityId		= Integer.parseInt(request.getParameter("cityId").toString());
		int		stateId		= Integer.parseInt(request.getParameter("state").toString());
		int		countryId	= Integer.parseInt(request.getParameter("country").toString());
		String	cityName	= (String) request.getParameter("cityName");
		City	city		= cityService.getCityById(cityId);
		State	state		= new State();
		if (countryId != city.getState().getCountry().getCountryId())
		{
			Country country = new Country();
			country.setCountryId(countryId);
			state.setCountry(country);
		}
		if (stateId != city.getState().getStateId())
		{
			state.setStateId(stateId);
			city.setState(state);
		}
		city.setCityName(cityName);
		cityService.updateCity(city);
		cityService.flush();
		return manageCity(request, response);
	}

	@GetMapping(value = "/approveFeedback")
	public ModelAndView approveFeedback(HttpServletRequest request, HttpServletResponse response)
	{
		int			feedbackId	= Integer.parseInt(request.getParameter("feedbackId").toString());
		String		fromPage	= request.getParameter("fromPage").toString();
		Feedback	feedback	= feedbackService.getFeedbackById(feedbackId);
		feedback.setIsPublish(true);
		feedbackService.updateFeedback(feedback);
		feedbackService.flush();

		ModelAndView model = null;
		if (fromPage.equalsIgnoreCase("new-reviews"))
		{
			model = newReviewListing(request, response);
		} else
		{
			model = unapprovedReviewListing(request, response);
		}
		return model;
	}

	@GetMapping(value = "/unapproveFeedback")
	public ModelAndView unapproveFeedback(HttpServletRequest request, HttpServletResponse response)
	{
		int			feedbackId	= Integer.parseInt(request.getParameter("feedbackId").toString());
		String		fromPage	= request.getParameter("fromPage").toString();
		Feedback	feedback	= feedbackService.getFeedbackById(feedbackId);
		feedback.setIsPublish(false);
		feedbackService.updateFeedback(feedback);
		feedbackService.flush();

		ModelAndView model = null;
		if (fromPage.equalsIgnoreCase("new-reviews"))
		{
			model = newReviewListing(request, response);
		} else
		{
			model = approvedReviewListing(request, response);
		}
		return model;
	}

	@GetMapping(value = "/deleteFeedback")
	public ModelAndView deleteFeedback(HttpServletRequest request, HttpServletResponse response)
	{
		int		feedbackId	= Integer.parseInt(request.getParameter("feedbackId").toString());
		String	fromPage	= request.getParameter("fromPage").toString();
		feedbackService.deleteFeedbackById(feedbackId);
		feedbackService.flush();

		ModelAndView model = null;
		switch (fromPage)
		{
			case "new-reviews":
				model = newReviewListing(request, response);
				break;
			case "approved-reviews":
				model = approvedReviewListing(request, response);
				break;
			case "unapproved-reviews":
				model = unapprovedReviewListing(request, response);
				break;
		}
		return model;
	}

	@PostMapping(value = "/updatePage")
	public ModelAndView updatePage(HttpServletRequest request, HttpServletResponse response)
	{
		int		pageId			= Integer.parseInt(request.getParameter("pageId").toString());
		String	pageTitle		= request.getParameter("pagetitle").toString();
		String	email			= (String) request.getParameter("email");
		String	mobileNumber	= (String) request.getParameter("mobnum");
		String	pageDescription	= (String) request.getParameter("pagedes");
		Page	page			= pageService.getPageById(pageId);
		page.setPageTitle(pageTitle);
		page.setPageDescription(pageDescription);
		if (email != null)
		{
			page.setEmail(email);
			page.setMobileNumber(Long.parseLong(mobileNumber));
		}
		page.setUpdationDate(new Date());
		pageService.updatePage(page);
		pageService.flush();

		ModelAndView model = null;
		switch (page.getPageType())
		{
			case "aboutus":
				model = aboutUs(request, response);
				break;
			case "contactus":
				model = contactUs(request, response);
				break;
		}
		return model;
	}

}
