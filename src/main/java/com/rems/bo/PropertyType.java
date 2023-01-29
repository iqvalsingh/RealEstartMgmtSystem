package com.rems.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblpropertytype")
public class PropertyType
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int		propertyTypeId;

	@Column(name = "properttype")
	private String	propertyType;

	@Column(name = "enterdate")
	private Date	creationDate;

	public int getPropertyTypeId()
	{
		return propertyTypeId;
	}

	public void setPropertyTypeId(int propertyTypeId)
	{
		this.propertyTypeId = propertyTypeId;
	}

	public String getPropertyType()
	{
		return propertyType;
	}

	public void setPropertyType(String propertyType)
	{
		this.propertyType = propertyType;
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
		return "PropertyType [propertyTypeId=" + propertyTypeId + ", propertyType=" + propertyType + ", creationDate="
				+ creationDate + "]";
	}

}
