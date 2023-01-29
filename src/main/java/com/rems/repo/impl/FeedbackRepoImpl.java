/**
 * 
 */
package com.rems.repo.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.rems.bo.Feedback;
import com.rems.repo.FeedbackRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class FeedbackRepoImpl extends CommonRepoImpl implements FeedbackRepo
{

	@Override
	public List<Feedback> getFeedbackByPublishType(int publishType)
	{
		List<Feedback>	feedbackList	= null;
		StringBuffer	query			= new StringBuffer("from Feedback");
		switch (publishType)
		{
			case -1:
				query.append(" where isPublish is null");
				break;
			case 0:
				query.append(" where isPublish=0");
				break;
			case 1:
				query.append(" where isPublish=1");
				break;
		}
		feedbackList = entityManager.createQuery(query.toString()).getResultList();

		return feedbackList;
	}

	@Override
	public List<Feedback> getFeedbackByPropertyId(String propertyId)
	{
		List<Feedback>	feedbackList	= null;
		StringBuffer	query			= new StringBuffer("from Feedback where isPublish=1 and property.propertyId=");
		query.append(propertyId);

		feedbackList = entityManager.createQuery(query.toString()).getResultList();
		return feedbackList;
	}

}
