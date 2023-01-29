/**
 * 
 */
package com.rems.repo;

import java.util.List;

import com.rems.bo.Feedback;

/**
 * @author Satbir Kaur
 *
 */
public interface FeedbackRepo extends CommonRepo
{
	public List<Feedback> getFeedbackByPublishType(int publishType);

	public List<Feedback> getFeedbackByPropertyId(String propertyId);
}
