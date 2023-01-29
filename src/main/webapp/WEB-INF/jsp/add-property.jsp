<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<% String context=request.getContextPath(); %>

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
								<h1>Add Property</h1>
							</div>
							<ol class="breadcrumb">
								<li><a href="#">Home</a></li>
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

	</section>
	<!-- #page-title end -->

	<!-- #Add Property
============================================= -->

	<section id="add-property" class="add-property">

		<div class="container">

			<div class="row">

				<div class="col-xs-12 col-sm-12 col-md-12">

					<form modelAttribute="propertyForm" class="mb-0" method="post" action="saveProperty.html" enctype="multipart/form-data">
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
										<input type="text" class="form-control" name="propertyTitle" id="propertytitle" required="true"/>
									</div>
								</div>
								<!-- .col-md-12 end -->
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="form-group">
										<label for="property-description">Property Description*</label>
										<textarea class="form-control" name="propertyDescription"
											id="propertydescription" rows="2"></textarea>
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
													<option value="${propertyType.propertyTypeId}" class="propertyTypeOptions">${propertyType.propertyType}
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
												<option value="Sale">Sale</option>
												<option value="Rent">Rent</option>
											</select>
										</div>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="location">Location</label>
										<input type="text" class="form-control" name="location" id="location"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Bedrooms">Bedrooms</label>
										<input type="text" class="form-control" name="bedrooms" id="bedrooms"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Bathrooms">Bathrooms</label>
										<input type="text" class="form-control" name="bathrooms" id="bathrooms"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Floors">Floors</label>
										<input type="text" class="form-control" name="floors" id="floors"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Garages">Garages</label>
										<input type="text" class="form-control" name="garages" id="garages"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Area">Area</label>
										<input type="text" class="form-control" name="area" id="area"
											placeholder="sq ft"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Size">Size</label>
										<input type="text" class="form-control" name="size" id="size"
											placeholder="sq ft"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Sale-Rent-Price">Sale or Rent Price*</label>
										<input type="text" class="form-control" name="rentOrSalePrice" id="salerentprice"
											required="true"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="Before-Price-Label">Before Price Label</label>
										<input type="text" class="form-control" name="beforePriceLabel"
											id="beforepricelabel" placeholder="ex: start from"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="After-Price-Label">After Price Label</label>
										<input type="text" class="form-control" name="afterPriceLabel"
											id="afterpricelabel" placeholder="ex: monthly"/>
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
											<input type="checkbox" name="centerCooling" id="centercolling" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Balcony</span>
											<input type="checkbox" name="balcony" id="balcony" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Pet Friendly</span>
											<input type="checkbox" name="petFriendly" id="petfrndly" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Barbeque</span>
											<input type="checkbox" name="barbeque" id="barbeque" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Fire Alarm</span>
											<input type="checkbox" name="fireAlarm" id="firealarm" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Modern Kitchen</span>
											<input type="checkbox" name="modernKitchen" id="modkitchen" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Storage</span>
											<input type="checkbox" name="storage" id="storage" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Dryer</span>
											<input type="checkbox" name="dryer" id="dryer" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Heating</span>
											<input type="checkbox" name="heating" id="heating" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Pool</span>
											<input type="checkbox" name="pool" id="pool" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Laundry</span>
											<input type="checkbox" name="laundry" id="laundry" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Sauna</span>
											<input type="checkbox" name="sauna" id="sauna" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Gym</span>
											<input type="checkbox" name="gym" id="gym" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Elevator</span>
											<input type="checkbox" name="elevator" id="elevator" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Dish Washer</span>
											<input type="checkbox" name="dishWasher" id="dishwasher" value="1"/>
											<span class="check-indicator"></span>
										</label>
									</div>
								</div>
								<!-- .col-md-3 end -->
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="input-checkbox">
										<label class="label-checkbox">
											<span>Emergency Exit</span>
											<input type="checkbox" name="emergencyExit" id="eexit" value="1"/>
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
										<input type="file" class="form-control" name="uploadedFeaturedImage" required="true"/>
									</div>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="address">Gallery Image1</label>
										<input type="file" class="form-control" name="uploadedGalleryImage1" required="true"/>
									</div>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="address">Gallery Image2</label>
										<input type="file" class="form-control" name="uploadedGalleryImage2" required="true"/>
									</div>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="address">Gallery Image3</label>
										<input type="file" class="form-control" name="uploadedGalleryImage3" required="true"/>
									</div>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="address">Gallery Image4</label>
										<input type="file" class="form-control" name="uploadedGalleryImage4" required="true"/>
									</div>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="address">Gallery Image5</label>
										<input type="file" class="form-control" name="uploadedGalleryImage5" required="true"/>
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
											placeholder="Enter your property address" required="true"/>
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
														${country.countryId==city.state.country.countryId ? 'selected'
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
														${state.stateId==city.state.stateId ? 'selected' : '' }
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
										<input type="text" class="form-control" name="zipCode" id="zipcode"/>
									</div>
								</div>
								<!-- .col-md-4 end -->
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<label for="neighborhood">Neighborhood</label>
										<input type="text" class="form-control" name="neighborhood" id="neighborhood"/>
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