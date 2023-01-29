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
@Table(name = "tblenquiry")
public class Enquiry
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int			enquiryId	= -1;

	@Column(name = "fullname")
	private String		fullName;

	@Column(name = "email")
	private String		email;

	@Column(name = "mobilenumber")
	private long		mobileNumber;

	@Column(name = "message")
	private String		message;

	@Column(name = "enquirynumber")
	private String		enquiryNumber;

	@Column(name = "enquirydate")
	private Date		enquiryDate;

	@Column(name = "status")
	private String		status;

	@Column(name = "remark")
	private String		remark;

	@Column(name = "remarkdate")
	private Date		remarkDate;

	@ManyToOne
	@JoinColumn(name = "propertyid", nullable = false)
	private Property	property;

	public int getEnquiryId()
	{
		return enquiryId;
	}

	public void setEnquiryId(int enquiryId)
	{
		this.enquiryId = enquiryId;
	}

	public String getFullName()
	{
		return fullName;
	}

	public void setFullName(String fullName)
	{
		this.fullName = fullName;
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

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getEnquiryNumber()
	{
		return enquiryNumber;
	}

	public void setEnquiryNumber(String enquiryNumber)
	{
		this.enquiryNumber = enquiryNumber;
	}

	public Date getEnquiryDate()
	{
		return enquiryDate;
	}

	public void setEnquiryDate(Date enquiryDate)
	{
		this.enquiryDate = enquiryDate;
	}

	public String getStatus()
	{
		return status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

	public String getRemark()
	{
		return remark;
	}

	public void setRemark(String remark)
	{
		this.remark = remark;
	}

	public Date getRemarkDate()
	{
		return remarkDate;
	}

	public void setRemarkDate(Date remarkDate)
	{
		this.remarkDate = remarkDate;
	}

	public Property getProperty()
	{
		return property;
	}

	public void setProperty(Property property)
	{
		this.property = property;
	}

	@Override
	public String toString()
	{
		return "Enquiry [enquiryId=" + enquiryId + ", fullName=" + fullName + ", email=" + email + ", mobileNumber="
				+ mobileNumber + ", message=" + message + ", enquiryNumber=" + enquiryNumber + ", enquiryDate="
				+ enquiryDate + ", status=" + status + ", remark=" + remark + ", remarkDate=" + remarkDate
				+ ", property=" + property + "]";
	}

}
