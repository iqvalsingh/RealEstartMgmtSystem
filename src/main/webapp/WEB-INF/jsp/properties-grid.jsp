<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	String context=request.getContextPath(); %>

<jsp:include page="header.jsp" />
        <!-- map
============================================ -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="slider--content">
                    <div class="text-center">
                        <h1>Find Your Favorite Property</h1>
                    </div>
                    <form class="mb-0" method="post" name="search" action="properties-grid.html">
                        <div class="form-box search-properties">
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="form-group">
                                        <div class="select--box">
                                            <i class="fa fa-angle-down"></i>
                                            <select name="cityId" id="city">
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
                                            <select name="propertyTypeId" id="propertyType" required="true">
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
    <div>
        <!-- Slide #1 -->

      
        <!-- .slide-item end -->
    </div>
</section>
        <!-- #map end -->

        <!-- properties-grid
============================================= -->
        <section id="properties-grid" style="margin-top:-10%">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <!-- widget property type
=============================-->

                        <div class="widget widget-property">
                           
                            <div class="widget--title">
                                <h5>Property Type</h5>
                            </div>

                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                    <li>
										<c:forEach items="${propertyTypeList}" var="propertyType" >
                                            <a href="properties-grid.html?propertyTypeId=${propertyType.propertyTypeId}">${propertyType.propertyType}</a>
                                        </c:forEach>
                                    </li>
                                  </ul>
                            </div>
                        </div>
                        
                        <!-- . widget property type end -->

                        <!-- widget property status
=============================-->
                        <div class="widget widget-property">
                            <div class="widget--title">
                                <h5>Property Status</h5>
                            </div>
                            <div class="widget--content">
                                 <ul class="list-unstyled mb-0">
                                    <li>
                                       <a href="properties-grid.html?status=Sale">Sale</a>
                                       <a href="properties-grid.html?status=Rent">Rent</a>
                                    </li>
                                  </ul>
                            </div>
                        </div>
                        <!-- . widget property status end -->


                        <!-- widget property city
=============================-->
                        <div class="widget widget-property">
                            <div class="widget--title">
                                <h5>Property By City</h5>
                            </div>
                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                     <li>
										<c:forEach items="${cityList}" var="city" >
                                            <a href="properties-grid.html?cityId=${city.cityId}">${city.cityName}</a>
                                        </c:forEach>
                                    </li>
                                    </ul>
                            </div>
                        </div>
                      
                    </div>
                    <!-- .col-md-4 end -->
                    <div class="col-xs-12 col-sm-12 col-md-8">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="properties-filter clearfix">
                                  
                                    <!-- .select-box -->
                                    <div class="view--type pull-right">
                                        <a id="switch-list" href="#" class=""><i class="fa fa-th-list"></i></a>
                                        <a id="switch-grid" href="#" class="active"><i class="fa fa-th-large"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="properties properties-grid">
                                <!-- .col-md-12 end -->
								<c:forEach items="${propertyList}" var="property" >
	                     			<div class="col-xs-12 col-sm-6 col-md-6" width='300' height='300'>
	                                    <!-- .property-item #1 -->
		                                    <div class="property-item">
		                                        <div class="property--img">
													<a href="single-property-detail.html?propertyId=${property.propertyId}">
														<img src="html/propertyimages/${property.featuredImage}"  width='380' height='300'>
													</a>
													<span class="property--status">${property.status}</span>
												</div>
												<div class="property--content">
													<div class="property--info">
														<h5 class="property--title"><a href="single-property-detail.html?propertyId=${property.propertyId}">${property.propertyTitle}</a></h5>
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
	                                </div>
                             <!-- .property item end -->
							</c:forEach>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 text-center mt-50">
                          <ul class="pagination" >
        <li class="active"><a href="?pageno=1">First</a></li>
        <li class="">
            <a href="#">Prev</a>
        </li>
        <li class="#">
            <a href="#">Next</a>
        </li>
        <li><a href="#">Last</a></li>
    </ul>
                            </div>
                            <!-- .col-md-12 end -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .col-md-8 end -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
        <!-- #properties-grid  end  -->

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