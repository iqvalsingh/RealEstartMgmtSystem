package com.rems.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblpage")
public class Page
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int		pageId;

	@Column(name = "pagetype")
	private String	pageType;

	@Column(name = "pagetitle")
	private String	pageTitle;

	@Column(name = "pagedescription")
	private String	pageDescription;

	@Column(name = "email")
	private String	email;

	@Column(name = "mobilenumber")
	private long	mobileNumber;

	@Column(name = "updationdate")
	private Date	updationDate;

	public int getPageId()
	{
		return pageId;
	}

	public void setPageId(int pageId)
	{
		this.pageId = pageId;
	}

	public String getPageType()
	{
		return pageType;
	}

	public void setPageType(String pageType)
	{
		this.pageType = pageType;
	}

	public String getPageTitle()
	{
		return pageTitle;
	}

	public void setPageTitle(String pageTitle)
	{
		this.pageTitle = pageTitle;
	}

	public String getPageDescription()
	{
		return pageDescription;
	}

	public void setPageDescription(String pageDescription)
	{
		this.pageDescription = pageDescription;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public long getMobileNumber()
	{
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber)
	{
		this.mobileNumber = mobileNumber;
	}

	public Date getUpdationDate()
	{
		return updationDate;
	}

	public void setUpdationDate(Date updationDate)
	{
		this.updationDate = updationDate;
	}

	@Override
	public String toString()
	{
		return "Page [pageId=" + pageId + ", pageType=" + pageType + ", pageTitle=" + pageTitle + ", pageDescription="
				+ pageDescription + ", email=" + email + ", mobileNumber=" + mobileNumber + ", updationDate="
				+ updationDate + "]";
	}

}
