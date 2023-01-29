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
@Table(name = "tblproperty")
public class Property
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int		propertyId	= -1;

	@ManyToOne
	@JoinColumn(name = "userid", nullable = false)
	private User	user;

	@Column(name = "propertytitle")
	private String	propertyTitle;

	@Column(name = "propertydescription")
	private String	propertyDescription;

	@Column(name = "propertytypeid")
	private int		propertytypeid;

	@Column(name = "status")
	private String	status;

	@Column(name = "location")
	private String	location;

	@Column(name = "bedrooms")
	private int		bedrooms;

	@Column(name = "bathrooms")
	private int		bathrooms;

	@Column(name = "floors")
	private int		floors;

	@Column(name = "garages")
	private int		garages;

	@Column(name = "area")
	private double	area;

	@Column(name = "size")
	private double	size;

	@Column(name = "rentorsaleprice")
	private String	rentOrSalePrice;

	@Column(name = "beforepricelabel")
	private String	beforePriceLabel;

	@Column(name = "afterpricelabel")
	private String	afterPriceLabel;

	@Column(name = "propertyid")
	private int		displayPropertyId;

	@Column(name = "centercooling")
	private boolean	centerCooling;

	@Column(name = "balcony")
	private boolean	balcony;

	@Column(name = "petfriendly")
	private boolean	petFriendly;

	@Column(name = "barbeque")
	private boolean	barbeque;

	@Column(name = "firealarm")
	private boolean	fireAlarm;

	@Column(name = "modernkitchen")
	private boolean	modernKitchen;

	@Column(name = "storage")
	private boolean	storage;

	@Column(name = "dryer")
	private boolean	dryer;

	@Column(name = "heating")
	private boolean	heating;

	@Column(name = "pool")
	private boolean	pool;

	@Column(name = "laundry")
	private boolean	laundry;

	@Column(name = "sauna")
	private boolean	sauna;

	@Column(name = "gym")
	private boolean	gym;

	@Column(name = "elevator")
	private boolean	elevator;

	@Column(name = "dishwasher")
	private boolean	dishWasher;

	@Column(name = "emergencyexit")
	private boolean	emergencyExit;

	@Column(name = "featuredimage")
	private String	featuredImage;

	@Column(name = "galleryimage1")
	private String	galleryImage1;

	@Column(name = "galleryimage2")
	private String	galleryImage2;

	@Column(name = "galleryimage3")
	private String	galleryImage3;

	@Column(name = "galleryimage4")
	private String	galleryImage4;

	@Column(name = "galleryimage5")
	private String	galleryImage5;

	@Column(name = "address")
	private String	address;

	@Column(name = "countryid")
	private int		country;

	@Column(name = "cityid")
	private int		city;

	@Column(name = "stateid")
	private int		state;

	@Column(name = "zipcode")
	private String	zipCode;

	@Column(name = "neighborhood")
	private String	neighborhood;

	@Column(name = "listingdate")
	private Date	listingDate;

	public int getPropertyId()
	{
		return propertyId;
	}

	public void setPropertyId(int propertyId)
	{
		this.propertyId = propertyId;
	}

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public String getPropertyTitle()
	{
		return propertyTitle;
	}

	public void setPropertyTitle(String propertyTitle)
	{
		this.propertyTitle = propertyTitle;
	}

	public String getPropertyDescription()
	{
		return propertyDescription;
	}

	public void setPropertyDescription(String propertyDescription)
	{
		this.propertyDescription = propertyDescription;
	}

	public int getPropertytypeid()
	{
		return propertytypeid;
	}

	public void setPropertytypeid(int propertytypeid)
	{
		this.propertytypeid = propertytypeid;
	}

	public String getStatus()
	{
		return status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

	public String getLocation()
	{
		return location;
	}

	public void setLocation(String location)
	{
		this.location = location;
	}

	public int getBedrooms()
	{
		return bedrooms;
	}

	public void setBedrooms(int bedrooms)
	{
		this.bedrooms = bedrooms;
	}

	public int getBathrooms()
	{
		return bathrooms;
	}

	public void setBathrooms(int bathrooms)
	{
		this.bathrooms = bathrooms;
	}

	public int getFloors()
	{
		return floors;
	}

	public void setFloors(int floors)
	{
		this.floors = floors;
	}

	public int getGarages()
	{
		return garages;
	}

	public void setGarages(int garages)
	{
		this.garages = garages;
	}

	public double getArea()
	{
		return area;
	}

	public void setArea(double area)
	{
		this.area = area;
	}

	public double getSize()
	{
		return size;
	}

	public void setSize(double size)
	{
		this.size = size;
	}

	public String getRentOrSalePrice()
	{
		return rentOrSalePrice;
	}

	public void setRentOrSalePrice(String rentOrSalePrice)
	{
		this.rentOrSalePrice = rentOrSalePrice;
	}

	public String getBeforePriceLabel()
	{
		return beforePriceLabel;
	}

	public void setBeforePriceLabel(String beforePriceLabel)
	{
		this.beforePriceLabel = beforePriceLabel;
	}

	public String getAfterPriceLabel()
	{
		return afterPriceLabel;
	}

	public void setAfterPriceLabel(String afterPriceLabel)
	{
		this.afterPriceLabel = afterPriceLabel;
	}

	public int getDisplayPropertyId()
	{
		return displayPropertyId;
	}

	public void setDisplayPropertyId(int displayPropertyId)
	{
		this.displayPropertyId = displayPropertyId;
	}

	public boolean isCenterCooling()
	{
		return centerCooling;
	}

	public void setCenterCooling(boolean centerCooling)
	{
		this.centerCooling = centerCooling;
	}

	public boolean isBalcony()
	{
		return balcony;
	}

	public void setBalcony(boolean balcony)
	{
		this.balcony = balcony;
	}

	public boolean isPetFriendly()
	{
		return petFriendly;
	}

	public void setPetFriendly(boolean petFriendly)
	{
		this.petFriendly = petFriendly;
	}

	public boolean isBarbeque()
	{
		return barbeque;
	}

	public void setBarbeque(boolean barbeque)
	{
		this.barbeque = barbeque;
	}

	public boolean isFireAlarm()
	{
		return fireAlarm;
	}

	public void setFireAlarm(boolean fireAlarm)
	{
		this.fireAlarm = fireAlarm;
	}

	public boolean isModernKitchen()
	{
		return modernKitchen;
	}

	public void setModernKitchen(boolean modernKitchen)
	{
		this.modernKitchen = modernKitchen;
	}

	public boolean isStorage()
	{
		return storage;
	}

	public void setStorage(boolean storage)
	{
		this.storage = storage;
	}

	public boolean isDryer()
	{
		return dryer;
	}

	public void setDryer(boolean dryer)
	{
		this.dryer = dryer;
	}

	public boolean isHeating()
	{
		return heating;
	}

	public void setHeating(boolean heating)
	{
		this.heating = heating;
	}

	public boolean isPool()
	{
		return pool;
	}

	public void setPool(boolean pool)
	{
		this.pool = pool;
	}

	public boolean isLaundry()
	{
		return laundry;
	}

	public void setLaundry(boolean laundry)
	{
		this.laundry = laundry;
	}

	public boolean isSauna()
	{
		return sauna;
	}

	public void setSauna(boolean sauna)
	{
		this.sauna = sauna;
	}

	public boolean isGym()
	{
		return gym;
	}

	public void setGym(boolean gym)
	{
		this.gym = gym;
	}

	public boolean isElevator()
	{
		return elevator;
	}

	public void setElevator(boolean elevator)
	{
		this.elevator = elevator;
	}

	public boolean isDishWasher()
	{
		return dishWasher;
	}

	public void setDishWasher(boolean dishWasher)
	{
		this.dishWasher = dishWasher;
	}

	public boolean isEmergencyExit()
	{
		return emergencyExit;
	}

	public void setEmergencyExit(boolean emergencyExit)
	{
		this.emergencyExit = emergencyExit;
	}

	public String getFeaturedImage()
	{
		return featuredImage;
	}

	public void setFeaturedImage(String featuredImage)
	{
		this.featuredImage = featuredImage;
	}

	public String getGalleryImage1()
	{
		return galleryImage1;
	}

	public void setGalleryImage1(String galleryImage1)
	{
		this.galleryImage1 = galleryImage1;
	}

	public String getGalleryImage2()
	{
		return galleryImage2;
	}

	public void setGalleryImage2(String galleryImage2)
	{
		this.galleryImage2 = galleryImage2;
	}

	public String getGalleryImage3()
	{
		return galleryImage3;
	}

	public void setGalleryImage3(String galleryImage3)
	{
		this.galleryImage3 = galleryImage3;
	}

	public String getGalleryImage4()
	{
		return galleryImage4;
	}

	public void setGalleryImage4(String galleryImage4)
	{
		this.galleryImage4 = galleryImage4;
	}

	public String getGalleryImage5()
	{
		return galleryImage5;
	}

	public void setGalleryImage5(String galleryImage5)
	{
		this.galleryImage5 = galleryImage5;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public int getCountry()
	{
		return country;
	}

	public void setCountry(int country)
	{
		this.country = country;
	}

	public int getCity()
	{
		return city;
	}

	public void setCity(int city)
	{
		this.city = city;
	}

	public int getState()
	{
		return state;
	}

	public void setState(int state)
	{
		this.state = state;
	}

	public String getZipCode()
	{
		return zipCode;
	}

	public void setZipCode(String zipCode)
	{
		this.zipCode = zipCode;
	}

	public String getNeighborhood()
	{
		return neighborhood;
	}

	public void setNeighborhood(String neighborhood)
	{
		this.neighborhood = neighborhood;
	}

	public Date getListingDate()
	{
		return listingDate;
	}

	public void setListingDate(Date listingDate)
	{
		this.listingDate = listingDate;
	}

	@Override
	public String toString()
	{
		return "Property [propertyId=" + propertyId + ", user=" + user + ", propertyTitle=" + propertyTitle
				+ ", propertyDescription=" + propertyDescription + ", propertytypeid=" + propertytypeid + ", status="
				+ status + ", location=" + location + ", bedrooms=" + bedrooms + ", bathrooms=" + bathrooms
				+ ", floors=" + floors + ", garages=" + garages + ", area=" + area + ", size=" + size
				+ ", rentOrSalePrice=" + rentOrSalePrice + ", beforePriceLabel=" + beforePriceLabel
				+ ", afterPriceLabel=" + afterPriceLabel + ", displayPropertyId=" + displayPropertyId
				+ ", centerCooling=" + centerCooling + ", balcony=" + balcony + ", petFriendly=" + petFriendly
				+ ", barbeque=" + barbeque + ", fireAlarm=" + fireAlarm + ", modernKitchen=" + modernKitchen
				+ ", storage=" + storage + ", dryer=" + dryer + ", heating=" + heating + ", pool=" + pool + ", laundry="
				+ laundry + ", sauna=" + sauna + ", gym=" + gym + ", elevator=" + elevator + ", dishWasher="
				+ dishWasher + ", emergencyExit=" + emergencyExit + ", featuredImage=" + featuredImage
				+ ", galleryImage1=" + galleryImage1 + ", galleryImage2=" + galleryImage2 + ", galleryImage3="
				+ galleryImage3 + ", galleryImage4=" + galleryImage4 + ", galleryImage5=" + galleryImage5 + ", address="
				+ address + ", country=" + country + ", city=" + city + ", state=" + state + ", zipCode=" + zipCode
				+ ", neighborhood=" + neighborhood + ", listingDate=" + listingDate + "]";
	}

}
