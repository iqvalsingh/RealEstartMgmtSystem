/**
 * 
 */
package com.rems.services;

import java.util.List;
import java.util.Map;

import com.rems.bo.Enquiry;

/**
 * @author Satbir Kaur
 *
 */
public interface EnquiryService
{

	public List<Enquiry> getEnquiryByCriteria(Map<String, Object> criteria);

	public Enquiry getEnquiryById(int enquiryId);

	public void updateEnquiry(Enquiry enquiry);

	public void saveEnquiry(Enquiry enquiry);

	public void flush();
}
