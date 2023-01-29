<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
    	String context=request.getContextPath();
    %>

<jsp:include page="header.jsp" />
        <!-- Hero Search
============================================= -->
        <section id="heroSearch" class="hero-search mtop-100 pt-0 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="slider--content">
                            <div class="text-center">
                                <h1>Find Your Favorite Property</h1>
                            </div>
                            <form class="mb-0" method="post" name="search" action="<%=context%>/properties-grid.html">
                                <div class="form-box search-properties">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <div class="form-group">
                                                <div class="select--box">
                                                    <i class="fa fa-angle-down"></i>
                                                    <select name="city" id="city">
		                                				<option value="-1">Select City</option>
			    										<c:forEach items="${cityList}" var="city" >
		                                                    <option value="${city.cityId}" class="cityOptions">${city.cityName}</option>
		                                                </c:forEach>
                 									</select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- .col-md-3 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <div class="form-group">
                                                <div class="select--box">
                                                    <i class="fa fa-angle-down"></i>
                                                    <select name="propertyType" id="propertyType" required="true">
		                                				<option value="-1">Select Property Type</option>
			    										<c:forEach items="${propertyTypeList}" var="propertyType" >
		                                                    <option value="${propertyType.propertyTypeId}" class="propertyTypeOptions">${propertyType.propertyType}</option>
		                                                </c:forEach>
                                        			</select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- .col-md-3 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <div class="form-group">
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
                                        <!-- .col-md-3 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <input type="submit" value="Search" name="search" class="btn btn--primary btn--block">
                                        </div>
                                      
                                      
                                    </div>
                                    <!-- .row end -->
                                </div>
                                <!-- .form-box end -->
                            </form>
                        </div>
                    </div>
                    <!-- .container  end -->
                </div>
                <!-- .slider-text end -->
            </div>
            <div class="carousel slider-navs" data-slide="1" data-slide-rs="1" data-autoplay="true" data-nav="true" data-dots="false" data-space="0" data-loop="true" data-speed="800">
                <!-- Slide #1 -->
                <div class="slide--item bg-overlay bg-overlay-dark3">
                    <div class="bg-section">
                        <img src="<%=context%>/html/assets/images/slider/slide-bg/3.jpg" alt="background">
                    </div>
                </div>
                <!-- .slide-item end -->
                <!-- Slide #2 -->
                <div class="slide--item bg-overlay bg-overlay-dark3">
                    <div class="bg-section">
                        <img src="<%=context%>/html/assets/images/slider/slide-bg/1.jpg" alt="background">
                    </div>
                </div>
                <!-- .slide-item end -->
                <!-- Slide #3 -->
                <div class="slide--item bg-overlay bg-overlay-dark3">
                    <div class="bg-section">
                        <img src="<%=context%>/html/assets/images/slider/slide-bg/3.jpg" alt="background">
                    </div>
                </div>
                <!-- .slide-item end -->
            </div>
        </section>
        <!-- #property-single-slider end -->

        <!-- properties-carousel
============================================= -->
        <section id="properties-carousel" class="properties-carousel pt-90 pb-90">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="heading heading-2 text-center mb-70">
                            <h2 class="heading--title">Latest Properties</h2>
                            <p class="heading--desc">Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
                        </div>
                        <!-- .heading-title end -->
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="carousel carousel-dots" data-slide="3" data-slide-rs="2" data-autoplay="true" data-nav="false" data-dots="true" data-space="25" data-loop="true" data-speed="800">
                            <!-- .property-item -->
							<c:forEach items="${propertyList}" var="property" >
                                <div class="property-item">
                                    <div class="property--img">
										<a href="#">
											<img src="html/propertyimages/${property.featuredImage}"  width='380' height='300'>
										</a>
										<span class="property--status">${property.status}</span>
									</div>
									<div class="property--content">
										<div class="property--info">
											<h5 class="property--title"><a href="#">${property.propertyTitle}</a></h5>
										    <p class="property--location">${property.location}</p>
											<p class="property--price">${property.rentOrSalePrice}</p>
									</div>
                                    <!-- .property-info end -->
									<div class="property--features">
										<ul class="list-unstyled mb-0">
											<li><span class="feature">Beds:</span><span class="feature-num">${property.bedrooms}</span></li>
											<li><span class="feature">Baths:</span><span class="feature-num">${property.bathrooms}</span></li>
											<li><span class="feature">Area:</span><span class="feature-num">${property.area} sq ft</span></li>
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

        <!-- Feature


     
============================================= -->
        <section id="cta" class="cta cta-1 text-center bg-overlay bg-overlay-dark pt-90">
            <div class="bg-section"><img src="<%=context%>/html/assets/images/cta/bg-1.jpg" alt="Background"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <h3>Join our professional team & agents to start selling your house</h3>
                        <a href="<%=context%>/contact.html" class="btn btn--primary">Contact</a>
                    </div>
                    <!-- .col-md-6 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
        <!-- #cta1 end -->

<jsp:include page="footer.jsp" />