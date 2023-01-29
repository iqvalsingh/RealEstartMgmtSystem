package com.rems.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbladmin")
public class Admin
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int		adminId;

	@Column(name = "adminname")
	private String	name;

	@Column(name = "username")
	private String	username;

	@Column(name = "email")
	private String	email;

	@Column(name = "mobilenumber")
	private long	mobileNumber;

	@Column(name = "password")
	private String	password;

	@Column(name = "adminregdate")
	private Date	creationDate;

	public int getAdminId()
	{
		return adminId;
	}

	public void setAdminId(int adminId)
	{
		this.adminId = adminId;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
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

	public Date getCreationDate()
	{
		return creationDate;
	}

	public void setCreationDate(Date creationDate)
	{
		this.creationDate = creationDate;
	}

	@Override
	public String toString()
	{
		return "Admin [adminId=" + adminId + ", name=" + name + ", username=" + username + ", email=" + email
				+ ", mobileNumber=" + mobileNumber + ", password=" + password + ", creationDate=" + creationDate + "]";
	}

}
