/**
 * 
 */
package com.rems.services;

import java.util.List;

import com.rems.bo.Feedback;

/**
 * @author Satbir Kaur
 *
 */
public interface FeedbackService
{
	public List<Feedback> getFeedbackByPublishType(int publishType);

	public Feedback getFeedbackById(int feedbackId);

	public void updateFeedback(Feedback feedback);

	public void saveFeedback(Feedback feedback);

	public void deleteFeedbackById(int feedbackId);

	public void flush();

	public List<Feedback> getFeedbackByPropertyId(String propertyId);
}
