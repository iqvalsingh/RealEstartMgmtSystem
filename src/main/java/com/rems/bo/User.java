package com.rems.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbluser")
public class User
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int		userId;

	@Column(name = "fullname")
	private String	fullName;

	@Column(name = "email")
	private String	email;

	@Column(name = "mobilenumber")
	private long	mobileNumber;

	@Column(name = "password")
	private String	password;

	@Column(name = "usertype")
	private int		userType;

	@Column(name = "postingdate")
	private Date	creationDate;

	@Column(name = "aboutme")
	private String	aboutMe;

	@Column(name = "updationdate")
	private Date	updationDate;

	public int getUserId()
	{
		return userId;
	}

	public void setUserId(int userId)
	{
		this.userId = userId;
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

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public int getUserType()
	{
		return userType;
	}

	public void setUserType(int userType)
	{
		this.userType = userType;
	}

	public Date getCreationDate()
	{
		return creationDate;
	}

	public void setCreationDate(Date creationDate)
	{
		this.creationDate = creationDate;
	}

	public String getAboutMe()
	{
		return aboutMe;
	}

	public void setAboutMe(String aboutMe)
	{
		this.aboutMe = aboutMe;
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
		return "User [userId=" + userId + ", fullName=" + fullName + ", email=" + email + ", mobileNumber="
				+ mobileNumber + ", password=" + password + ", userType=" + userType + ", creationDate=" + creationDate
				+ ", aboutMe=" + aboutMe + ", updationDate=" + updationDate + "]";
	}

}
