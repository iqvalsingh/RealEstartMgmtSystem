/**
 * 
 */
package com.rems.services.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rems.bo.Enquiry;
import com.rems.repo.EnquiryRepo;
import com.rems.services.EnquiryService;

/**
 * @author Satbir Kaur
 *
 */
@Service
@Transactional
public class EnquiryServiceImpl implements EnquiryService
{
	@Autowired
	EnquiryRepo enquiryRepo;

	@Override
	public List<Enquiry> getEnquiryByCriteria(Map<String, Object> criteria)
	{
		return enquiryRepo.getEnquiryByCriteria(criteria);
	}

	@Override
	public Enquiry getEnquiryById(int enquiryId)
	{
		return enquiryRepo.getById(Enquiry.class, enquiryId);
	}

	@Override
	public void updateEnquiry(Enquiry enquiry)
	{
		enquiryRepo.update(enquiry);
	}

	@Override
	public void saveEnquiry(Enquiry enquiry)
	{
		enquiryRepo.create(enquiry);
	}

	@Override
	public void flush()
	{
		enquiryRepo.flush();
	}

}
