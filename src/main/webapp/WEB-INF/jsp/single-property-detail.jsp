<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                                    <h1>Single Property</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active">Single Property</li>
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

        <!-- property single gallery
============================================= -->
        <section id="property-single-gallery" class="property-single-gallery">
           
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="property-single-gallery-info">
                            <div class="property--info clearfix">
                                <div class="pull-left">
                                    <h5 class="property--title">${property.propertyTitle}</h5>
                                    <p class="property--location">${property.address}, ${city.state.country.countryName}, ${city.state.stateName}, ${city.cityName}, ${property.zipCode}</p>
                                </div>
                                <div class="pull-right">
                                    <span class="property--status">${property.status}</span>
                                    <p class="property--price">${property.rentOrSalePrice}</p>
                                </div>
                            </div>
                            <!-- .property-info end -->
                            <div class="property--meta clearfix">
                                <div class="pull-left">
                                    <ul class="list-unstyled list-inline mb-0">
                                        <li>
                                            Property ID:<span class="value">${property.displayPropertyId}</span>
                                        </li>
                                       
                                    </ul>
                                </div>
                                
                            </div>
                            <!-- .property-info end -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-8">
                        <div class="property-single-carousel inner-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="heading">
                                        <h2 class="heading--title">Gallery</h2>
                                    </div>
                                </div>
                                <!-- .col-md-12 end -->
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="property-single-carousel-content">
                                        <div class="carousel carousel-thumbs slider-navs" data-slide="1" data-slide-res="1" data-autoplay="true" data-thumbs="true" data-nav="true" data-dots="false" data-space="30" data-loop="true" data-speed="800" data-slider-id="1">
                                            <img src="html/propertyimages/${property.featuredImage}" alt="Property Image">
                                            <img src="html/propertyimages/${property.galleryImage1}" alt="Property Image">
                                            <img src="html/propertyimages/${property.galleryImage2}" alt="Property Image">
                                            <img src="html/propertyimages/${property.galleryImage3}" alt="Property Image">
                                            <img src="html/propertyimages/${property.galleryImage4}" alt="Property Image">
                                            <img src="html/propertyimages/${property.galleryImage5}" alt="Property Image">
                                        </div>
                                        <!-- .carousel end -->
                                        <div class="owl-thumbs thumbs-bg" data-slider-id="1">
                                            <button class="owl-thumb-item">
								<img src="html/propertyimages/${property.featuredImage}" alt="Property Image thumb" width="100" height='100'>
							</button>
                                            <button class="owl-thumb-item">
						   		<img src="html/propertyimages/${property.galleryImage1}" alt="Property Image thumb" width="100" height='100'>
						   </button>
                                            <button class="owl-thumb-item">
								<img src="html/propertyimages/${property.galleryImage2}" alt="Property Image thumb" width="100" height='100'>
							</button>
                                            <button class="owl-thumb-item">
								<img src="html/propertyimages/${property.galleryImage3}" alt="Property Image thumb" width="100" height='100'>
							</button>
                                            <button class="owl-thumb-item">
								<img src="html/propertyimages/${property.galleryImage4}" alt="Property Image thumb" width="100" height='100'>
							</button>
                            <button class="owl-thumb-item">
                                <img src="html/propertyimages/${property.galleryImage5}" alt="Property Image thumb" width="100" height='100'>
                            </button>
                                        </div>
                                    </div>
                                    <!-- .col-md-12 end -->
                                </div>
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .property-single-desc end -->
                        <div class="property-single-desc inner-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="heading">
                                        <h2 class="heading--title">Description</h2>
                                    </div>
                                </div>
                                <!-- feature-panel #1 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-panel">
                                        <div class="feature--img">
                                            <img src="<%=context%>/html/assets/images/property-single/features/1.png" alt="icon">
                                        </div>
                                        <div class="feature--content">
                                            <h5>Area:</h5>
                                            <p>${property.area}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- feature-panel end -->
                                <!-- feature-panel #2 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-panel">
                                        <div class="feature--img">
                                            <img src="<%=context%>/html/assets/images/property-single/features/2.png" alt="icon">
                                        </div>
                                        <div class="feature--content">
                                            <h5>Beds:</h5>
                                            <p>${property.bedrooms}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- feature-panel end -->
                                <!-- feature-panel #3 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-panel">
                                        <div class="feature--img">
                                            <img src="<%=context%>/html/assets/images/property-single/features/3.png" alt="icon">
                                        </div>
                                        <div class="feature--content">
                                            <h5>Baths:</h5>
                                            <p>${property.bathrooms}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- feature-panel end -->
                                <!-- feature-panel #4 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-panel">
                                        <div class="feature--img">
                                            <img src="<%=context%>/html/assets/images/property-single/features/4.png" alt="icon">
                                        </div>
                                        <div class="feature--content">
                                            <h5>Size:</h5>
                                            <p>${property.size}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- feature-panel end -->
                                <!-- feature-panel #5 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-panel">
                                        <div class="feature--img">
                                            <img src="<%=context%>/html/assets/images/property-single/features/5.png" alt="icon">
                                        </div>
                                        <div class="feature--content">
                                            <h5>Floors:</h5>
                                            <p>${property.floors}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- feature-panel end -->
                                <!-- feature-panel #6 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-panel">
                                        <div class="feature--img">
                                            <img src="<%=context%>/html/assets/images/property-single/features/6.png" alt="icon">
                                        </div>
                                        <div class="feature--content">
                                            <h5>Garage:</h5>
                                            <p>${property.garages}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- feature-panel end -->
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="property--details">
                                        <p>${property.propertyDescription}</p>
                                    </div>
                                    <!-- .property-details end -->
                                </div>
                                <!-- .col-md-12 end -->
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .property-single-desc end -->


                        <div class="property-single-features inner-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="heading">
                                        <h2 class="heading--title">Features</h2>
                                    </div>
                                </div>
                                <!-- feature-item #1 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.centerCooling?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Center Cooling
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #2 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.balcony?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Balcony
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #3 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.petFriendly?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Pet Friendly
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #4 -->

					              <div class="col-xs-6 col-sm-4 col-md-4">
					                <div class="feature-item">
                                    	<p>    
											<img src=${property.barbeque?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Barbeque
   										</p>
                                    </div>
                                </div>


                                <div class="col-xs-6 col-sm-4 col-md-4">
                                	<div class="feature-item">
                                    	<p>    
											<img src=${property.fireAlarm?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Fire Alarm
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #5 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.modernKitchen?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Modern Kitchen
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #6 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.storage?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Storage
   										</p>
                                    </div>
                                </div>
                             	<div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.dryer?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Dryer
   										</p>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.heating?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Heating
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #8 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.pool?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Pool
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #9 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.laundry?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Laundry
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #10 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.gym?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Gym
   										</p>
                                    </div>
                                </div>

                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.sauna?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Sauna
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #11 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.elevator?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Elevator
   										</p>
                                    </div>
                                </div>
                                <!-- feature-item end -->
                                <!-- feature-item #12 -->
                                <div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.dishWasher?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											Dish Washer
   										</p>
                                    </div>
                                </div>
								<div class="col-xs-6 col-sm-4 col-md-4">
                                    <div class="feature-item">
                                    	<p>    
											<img src=${property.emergencyExit?"html/assets/images/check.png":"html/assets/images/close.png"} width="12" height="12">
   											EmergencyExit
   										</p>
                                    </div>
                                </div>

                                <!-- feature-item end -->
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .property-single-features end -->

                        <div class="property-single-location inner-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="heading">
                                        <h2 class="heading--title">Location</h2>
                                    </div>
                                </div>
                                <!-- .col-md-12 end -->
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <ul class="list-unstyled mb-20">
                                        <li><span>Address:</span>${property.address}</li>
                                        <li><span>City:</span>${city.cityName}</li>
                                        <li><span>Country:</span>${city.state.country.countryName}</li>
                                        <li><span>State:</span>${city.state.stateName}</li>
                                        <li><span>Zip/Postal code:</span>${property.zipCode}</li>
                                    </ul>
                                </div>
                                <!-- .col-md-12 end -->

                            </div>
                            <!-- .row end -->
                        </div>
                            
                        <!-- .property-single-location end -->

                     
                        <div class="property-single-reviews inner-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="heading">
										<h2 class="heading--title">${feedbacks.size()} Reviews</h2>
                                    </div>
                                </div>
                                <!-- .col-md-12 end -->
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <ul class="property-review">
                                    	<c:forEach items="${feedbacks}" var="feedback" >
	                                        <li class="review-comment">
	                                        <div class="avatar">${fn:substring(feedback.user.fullName, 0, 1)}</div>
	                                        <div class="comment">
		                                        <h6>${feedback.user.fullName}</h6>
		                                        <div class="date">${feedback.postingDate}</div>
		                                        <p>${feedback.userRemark}</p>
	                                        </div>
	                                        </li>
										</c:forEach>
                                    </ul>
                                    <!-- .comments-list end -->
                                </div>
                                <!-- .col-md-12 end -->
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .property-single-reviews end -->

                        <div class="property-single-leave-review inner-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="heading">
                                        <h2 class="heading--title">Leave a Review</h2>
                                    </div>
                                </div>
                                <!-- .col-md-12 end -->
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                  <form id="post-comment" class="mb-0" method="post" action="saveReview.html?propertyId=${property.propertyId}">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <div class="form-group">
                                                    <label for="review-comment">Review*</label>
   													<textarea class="form-control" id="reviewcomment" name="reviewcomment" rows="2" required></textarea>
                                                </div>
                                            </div>
                                            <!-- .col-md-12 -->
                                            <div class="col-xs-12 col-sm-12 col-md-12">
          										<button type="submit" name="submitreview" class="btn btn--primary">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- .col-md-12 end -->
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .property-single-leave-review end -->
                    </div>
                    <!-- .col-md-8 -->
                    <div class="col-xs-12 col-sm-12 col-md-4">
<!-- widget property agent=============================-->
                        <div class="widget widget-property-agent">
                             <div class="widget--title">
                            	<h5>${property.user.userType == 1?"Posted by  Agent/Broker":"Posted by  Owner"}</h5>
                           </div>
                            <div class="widget--content">
                                <a href="#">
                                    <div class="agent--img">
                                        <img src="html/propertyimages/images.png" alt="agent" class="img-responsive" height="100" width="100">
                                    </div>
   

                                    <div class="agent--info">
                                        <h5 class="agent--title">${property.user.fullName}</h5>
                                    </div>
                                </a>
                                <!-- .agent-profile-details end -->
                                <div class="agent--contact">
                                    <ul class="list-unstyled">
                                        <li><i class="fa fa-phone"></i>${property.user.mobileNumber}</li>
                                        <li><i class="fa fa-envelope-o"></i>${property.user.email}</li>
                                       
                                    </ul>
                                </div>
                                <!-- .agent-contact end -->
                                <!-- .agent-social-links -->
                            </div>
                        </div>
                        <!-- . widget property agent end -->

<!-- For Guest User =============================-->

                        <div class="widget widget-request">
                            <div class="widget--title">
                                <h5>Request a Showing</h5>
                            </div>
                            <div class="widget--content">
                                <form class="mb-0" method="post" action="saveEnquiry.html?propertyId=${property.propertyId}">
                                    <div class="form-group">
                                        <label for="contact-name">Your Name*</label>
                                        <input type="text" class="form-control" name="fullName" id="fullname" required="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="contact-email">Email Address*</label>
                                        <input type="email" class="form-control" name="email" id="email" required="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="contact-phone">Phone Number</label>
                                        <input type="text" class="form-control" name="mobileNumber" id="mobnum" required="true" maxlength="10" pattern="[0-9]+">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="message">Message*</label>
                                        <textarea class="form-control" name="message" id="message" rows="2" required="true"></textarea>
                                    </div>
                                    <!-- .form-group end -->
                                    <input type="submit" value="Send Request" name="submit" class="btn btn--primary btn--block">
                                </form>
                            </div>
                        </div>
                        <!-- . widget request end -->


     <div class="widget widget-request">
                            <div class="widget--title">
                                <h5>Request a Showing</h5>
                            </div>
                            <div class="widget--content">
                                <form class="mb-0" method="post">
                                    <div class="form-group">
                                        <label for="contact-name">Your Name*</label>
<input type="text" class="form-control"  name="fullname" id="fullname" required="true" readonly="true" >
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="contact-email">Email Address*</label>
<input type="email" class="form-control"   name="email" id="email" required="true" readonly="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="contact-phone">Phone Number</label>
<input type="text" class="form-control"   name="mobnum" id="mobnum" required="true" maxlength="10" pattern="[0-9]+" readonly="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="message">Message*</label>
                                        <textarea class="form-control" name="message" id="message" rows="2" required="true"></textarea>
                                    </div>
                                    <!-- .form-group end -->
                                    <input type="submit" value="Send Request" name="submit" class="btn btn--primary btn--block">
                                </form>
                            </div>
                        </div>


                     

<!-- widget mortgage calculator=============================-->

                        <div class="widget widget-mortgage-calculator">
                            <div class="widget--title">
                                <h5>Mortage Calculator</h5>
                            </div>
                            <div class="widget--content">
     <form class="mb-0" method="post" action="calculator.html">
                                    <div class="form-group">
                                        <label for="sale-price">Sale Price</label>
                                        <input type="text" class="form-control" name="saleprice" id="saleprice" placeholder="$" required="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="down-payment">Down Payment</label>
                                        <input type="text" class="form-control" name="downpayment" id="downpayment" placeholder="$" required="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="term">Term</label>
                                        <input type="text" class="form-control" name="term" id="term" placeholder="years" required="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <div class="form-group">
                                        <label for="interest-rate">Interest Rate</label>
                                        <input type="text" class="form-control" name="interestrate" id="interestrate" placeholder="%" required="true">
                                    </div>
                                    <!-- .form-group end -->
                                    <input type="submit" value="Calculate" name="submit" class="btn btn--primary btn--block">
                                </form>
                            </div>
                        </div>
                        <!-- . widget mortgage calculator end -->
                    </div>
                    <!-- .col-md-4 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
        <!-- #property-single end -->


        <!-- properties-carousel
============================================= -->
        <section id="properties-carousel" class="properties-carousel pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="heading heading-2  mb-70">
                            <h2 class="heading--title">Similar Properties</h2>
                        </div>
                        <!-- .heading-title end -->
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
               <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="carousel carousel-dots" data-slide="3" data-slide-rs="2" data-autoplay="true" data-nav="false" data-dots="true" data-space="25" data-loop="true" data-speed="800">
                            <!-- .property-item #1 -->
							<c:forEach items="${propertyList}" var="similarProperty" >
	                            <div class="property-item">
	                                <div class="property--img">
										<a href="single-property-detail.html?propertyId=${similarProperty.propertyId}">
											<img src="html/propertyimages/${similarProperty.featuredImage}"  width='380' height='300'>
										</a>
										<span class="property--status">${similarProperty.status}</span>
									</div>
									<div class="property--content">
										<div class="property--info">
											<h5 class="property--title"><a href="single-property-detail.html?propertyId=${similarProperty.propertyId}">${similarProperty.propertyTitle}</a></h5>
										    <p class="property--location">${similarProperty.location}</p>
											<p class="property--price">${similarProperty.rentOrSalePrice}</p>
									</div>
	                                <!-- .property-info end -->
									<div class="property--features">
										<ul class="list-unstyled mb-0">
											<li><span class="feature">Beds:</span><span class="feature-num">${similarProperty.bedrooms}</span></li>
											<li><span class="feature">Baths:</span><span class="feature-num">${similarProperty.bathrooms}</span></li>
											<li><span class="feature">Area:</span><span class="feature-num">${similarProperty.area} sq ft</span></li>
										</ul>
									</div>
	                                <!-- .property-features end -->
	                           	</div>
	                            </div>
							</c:forEach>
	                    </div>
                        <!-- .carousel end -->
                    </div>
                    <!-- .col-md-12 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
        <!-- #properties-carousel  end  -->

        <!-- cta #1
============================================= -->
        <section id="cta" class="cta cta-1 text-center bg-overlay bg-overlay-dark pt-90">
            <div class="bg-section"><img src="<%=context%>/html/assets/images/cta/bg-1.jpg" alt="Background"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <h3>Join our professional team & agents to start selling your house</h3>
                        <a href="contact.html" class="btn btn--primary">Contact</a>
                    </div>
                    <!-- .col-md-6 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
        <!-- #cta1 end -->

<jsp:include page="footer.jsp" />