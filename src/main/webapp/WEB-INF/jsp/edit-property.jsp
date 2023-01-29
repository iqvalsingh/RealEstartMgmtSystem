<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%	String context=request.getContextPath(); %>

<jsp:include page="header.jsp" />        
        <!-- Page Title #1
============================================ -->
        <section id="page-title" class="page-title bg-overlay bg-overlay-dark2">
            <div class="bg-section">
                <img src="<%=context%>/html/assets/images/page-titles/1.jpg" alt="Background" />
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <div class="title title-1 text-center">
                            <div class="title--content">
                                <div class="title--heading">
                                    <h1>Manage Property</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active">Add Property</li>
                                </ol>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- .title end -->
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
            <!-- .container end -->
        </section>
        <!-- #page-title end -->

        <!-- #Add Property
============================================= -->
        <section id="add-property" class="add-property">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">

					<form modelAttribute="property" class="mb-0" method="post" action="saveProperty.html" enctype="multipart/form-data">
						<!--<p style="font-size:16px; color:red" align="center">Test</p>-->
						<div class="form-box">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<h4 class="form--title">Property Description</h4>
								</div>
								<!-- .col-md-12 end -->
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="form-group">
										<label for="property-title">Property Title*</label>
										<input type="text" class="form-control" name="propertyTitle" id="propertytitle" required="true" value="${property.propertyTitle}"/>
									</div>
								</div>
								<!-- .col-md-12 end -->
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="form-group">
										<label for="property-description">Property Description*</label>
										<textarea class="form-control" name="propertyDescription"
											id="propertydescription" rows="2">${property.propertyDescription}</textarea>
									</div>
								</div>
								<!-- .col-md-12 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="select-type">Type</label>
										<div class="select--box">
											<i class="fa fa-angle-down"></i>
											<select name="propertytypeid" id="propertyType" required="true">
												<option value="-1">Select Property Type</option>
												<c:forEach items="${propertyTypeList}" var="propertyType">
													<option value="${propertyType.propertyTypeId}" ${propertyType.propertyTypeId==property.propertytypeid?'selected':''} class="propertyTypeOptions">${propertyType.propertyType}
													</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="select-status">Status</label>
										<div class="select--box">
											<i class="fa fa-angle-down"></i>
											<select name="status" id="status" required="true">
												<option value="-1">Select Any Status</option>
												<option ${property.status=='Sale'?'selected':''} value="Sale">Sale</option>
												<option ${property.status=='Rent'?'selected':''} value="Rent">Rent</option>
											</select>
										</div>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="location">Location</label>
										<input type="text" class="form-control" name="location" id="location" value="${property.location}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Bedrooms">Bedrooms</label>
										<input type="text" class="form-control" name="bedrooms" id="bedrooms" value="${property.bedrooms}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Bathrooms">Bathrooms</label>
										<input type="text" class="form-control" name="bathrooms" id="bathrooms" value="${property.bathrooms}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Floors">Floors</label>
										<input type="text" class="form-control" name="floors" id="floors" value="${property.floors}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Garages">Garages</label>
										<input type="text" class="form-control" name="garages" id="garages" value="${property.garages}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Area">Area</label>
										<input type="text" class="form-control" name="area" id="area"
											placeholder="sq ft" value="${property.area} sq ft"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Size">Size</label>
										<input type="text" class="form-control" name="size" id="size"
											placeholder="sq ft" value="${property.size} sq ft"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Sale-Rent-Price">Sale or Rent Price*</label>
										<input type="text" class="form-control" name="rentOrSalePrice" id="salerentprice"
											required="true" value="${property.rentOrSalePrice}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Before-Price-Label">Before Price Label</label>
										<input type="text" class="form-control" name="beforePriceLabel"
											id="beforepricelabel" placeholder="ex: start from" value="${property.beforePriceLabel}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="After-Price-Label">After Price Label</label>
										<input type="text" class="form-control" name="afterPriceLabel"
											id="afterpricelabel" placeholder="ex: monthly" value="${property.afterPriceLabel}"/>
									</div>
								</div>

							</div>
							<!-- .row end -->
						</div>
						<!-- .form-box end -->
						<div class="form-box">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<h4 class="form--title">Property Features</h4>
								</div>
								<!-- .col-md-12 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Center Cooling</span>
											<input type="checkbox" name="centerCooling" id="centercolling" value="1" ${property.centerCooling?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Balcony</span>
											<input type="checkbox" name="balcony" id="balcony" value="1" ${property.balcony?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Pet Friendly</span>
											<input type="checkbox" name="petFriendly" id="petfrndly" value="1" ${property.petFriendly?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Barbeque</span>
											<input type="checkbox" name="barbeque" id="barbeque" value="1" ${property.barbeque?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Fire Alarm</span>
											<input type="checkbox" name="fireAlarm" id="firealarm" value="1" ${property.fireAlarm?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Modern Kitchen</span>
											<input type="checkbox" name="modernKitchen" id="modkitchen" value="1" ${property.modernKitchen?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Storage</span>
											<input type="checkbox" name="storage" id="storage" value="1" ${property.storage?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Dryer</span>
											<input type="checkbox" name="dryer" id="dryer" value="1" ${property.dryer?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Heating</span>
											<input type="checkbox" name="heating" id="heating" value="1" ${property.heating?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Pool</span>
											<input type="checkbox" name="pool" id="pool" value="1" ${property.pool?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Laundry</span>
											<input type="checkbox" name="laundry" id="laundry" value="1" ${property.laundry?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Sauna</span>
											<input type="checkbox" name="sauna" id="sauna" value="1" ${property.sauna?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Gym</span>
											<input type="checkbox" name="gym" id="gym" value="1" ${property.gym?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Elevator</span>
											<input type="checkbox" name="elevator" id="elevator" value="1" ${property.elevator?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Dish Washer</span>
											<input type="checkbox" name="dishWasher" id="dishwasher" value="1" ${property.dishWasher?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Emergency Exit</span>
											<input type="checkbox" name="emergencyExit" id="eexit" value="1" ${property.emergencyExit?'checked':''}/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
							</div>
							<!-- .row end -->
						</div>
						<!-- .form-box end -->

						<div class="form-box">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<h4 class="form--title">Property Gallery</h4>
								</div>
                            <!-- .col-md-12 end -->
                            <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <label for="address">Featured Image</label>
                                    <img src="html/propertyimages/${property.featuredImage}" width="200" height="150"><a href="changeimage.html?imageName=featuredImage&propertyId=${property.propertyId}"> &nbsp; Edit Image</a>
                                </div>
                            </div>
                              <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <label for="address">Gallery Image1</label>
                                    <img src="html/propertyimages/${property.galleryImage1}" width="200" height="150"><a href="changeimage.html?imageName=galleryImage1&propertyId=${property.propertyId}"> &nbsp; Edit Image</a>
                                </div>
                            </div>
                              <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <label for="address">Gallery Image2</label>
                                    <img src="html/propertyimages/${property.galleryImage2}" width="200" height="150"><a href="changeimage.html?imageName=galleryImage2&propertyId=${property.propertyId}"> &nbsp; Edit Image</a>
                                </div>
                            </div>
                              <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <label for="address">Gallery Image3</label>
                                    <img src="html/propertyimages/${property.galleryImage3}" width="200" height="150"><a href="changeimage.html?imageName=galleryImage3&propertyId=${property.propertyId}"> &nbsp; Edit Image</a>
                                </div>
                            </div>
                              <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <label for="address">Gallery Image4</label>
                                    <img src="html/propertyimages/${property.galleryImage4}" width="200" height="150"><a href="changeimage.html?imageName=galleryImage4&propertyId=${property.propertyId}"> &nbsp; Edit Image</a>
                                </div>
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <label for="address">Gallery Image5</label>
                                   <img src="html/propertyimages/${property.galleryImage5}" width="200" height="150"><a href="changeimage.html?imageName=galleryImage5&propertyId=${property.propertyId}"> &nbsp; Edit Image</a>
                                </div>
                            </div>
                            <!-- .col-md-12 end -->

							</div>
							<!-- .row end -->
						</div>
						<!-- .form-box end -->

						<div class="form-box">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<h4 class="form--title">Property Location</h4>
								</div>
								<!-- .col-md-12 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="address">Address*</label>
										<input type="text" class="form-control" name="address" id="address"
											placeholder="Enter your property address" required="true" value="${property.address}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="select-country">Country</label>
										<div class="select--box">
											<i class="fa fa-angle-down"></i>
											<select type="text" name="country" id="country" required="true"
												onChange="getState()" class="form-control">
												<option value="-1">Select Country</option>
												<c:forEach items="${countryList}" var="country">
													<option value="${country.countryId}"
														${country.countryId==property.country ? 'selected'
														: '' }>${country.countryName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>


								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="state">State</label>
										<div class="select--box">
											<i class="fa fa-angle-down"></i>
											<select type="text" name="state" id="state" required="true"
												onChange="getCity()" class="form-control">
												<option value="-1">Select State</option>
												<c:forEach items="${stateList}" var="state">
													<option value="${state.stateId}"
														class="stateOptions country${state.country.countryId}"
														${state.stateId==property.state ? 'selected' : '' }
														${state.country.countryId !=city.state.country.countryId
														? 'style=\"display: none;\"' : '' }>${state.stateName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>


								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="city">City</label>
										<div class="select--box">
											<i class="fa fa-angle-down"></i>
											<select name="city" id="city">
												<option value="-1">Select City</option>
												<c:forEach items="${cityList}" var="city">
													<option value="${city.cityId}"
														${city.cityId==property.city ? 'selected' : '' }
														class="cityOptions state${city.state.stateId}">${city.cityName}
													</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<!-- .col-md-4 end -->

								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Zip/Postal-code">Zip/Postal Code</label>
										<input type="text" class="form-control" name="zipCode" id="zipcode" value="${property.zipCode}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="neighborhood">Neighborhood</label>
										<input type="text" class="form-control" name="neighborhood" id="neighborhood" value="${property.neighborhood}"/>
									</div>
								</div>
								<!-- .col-md-4 end -->

								<!-- .col-md-12 end -->
							</div>
							<!-- .row end -->
						</div>
						<!-- .form-box end -->
						<input type="submit" value="Submit" name="submit" class="btn btn--primary"/>
					</form>
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
        </section>
	
	<script type="text/javascript">
		$(document).ready(function () {
			$(".stateOptions .cityOptions").hide();
		});

		function getState() {
			$(".stateOptions .cityOptions").hide();
			$(".country" + $("#country").val()).show();
			$("#state").val(-1);
		}

		function getCity() {
			$(".cityOptions").hide();
			$(".state" + $("#state").val()).show();
			$("#city").val(-1);
		}
	</script>

<jsp:include page="footer.jsp" />