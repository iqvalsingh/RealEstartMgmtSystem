package com.rems.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tblfeedback")
public class Feedback
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int			feedbackId	= -1;

	@ManyToOne
	@JoinColumn(name = "userid", nullable = false)
	private User		user;

	@ManyToOne
	@JoinColumn(name = "propertyid", nullable = false)
	private Property	property;

	@Column(name = "userremark")
	private String		userRemark;

	@Column(name = "postingdate")
	private Date		postingDate;

	@Column(name = "is_publish")
	private Boolean		isPublish	= false;

	public int getFeedbackId()
	{
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId)
	{
		this.feedbackId = feedbackId;
	}

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public Property getProperty()
	{
		return property;
	}

	public void setProperty(Property property)
	{
		this.property = property;
	}

	public String getUserRemark()
	{
		return userRemark;
	}

	public void setUserRemark(String userRemark)
	{
		this.userRemark = userRemark;
	}

	public Date getPostingDate()
	{
		return postingDate;
	}

	public void setPostingDate(Date postingDate)
	{
		this.postingDate = postingDate;
	}

	public Boolean getIsPublish()
	{
		return isPublish;
	}

	public void setIsPublish(Boolean isPublish)
	{
		this.isPublish = isPublish;
	}

	@Override
	public String toString()
	{
		return "Feedback [feedbackId=" + feedbackId + ", user=" + user + ", property=" + property + ", userRemark="
				+ userRemark + ", postingDate=" + postingDate + ", isPublish=" + isPublish + "]";
	}

}
