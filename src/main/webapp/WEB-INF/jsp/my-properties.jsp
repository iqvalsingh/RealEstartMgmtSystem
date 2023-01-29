<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	String context=request.getContextPath(); %>

<jsp:include page="header.jsp" />
        <!-- Page Title #1-->
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
                                    <h1>my properties</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active">my properties</li>
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

        <!-- #my properties
============================================= -->
        <section id="my-properties" class="my-properties properties-list">
            <div class="container">
                <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4">
                        <div class="edit--profile-area">
                        <ul class="edit--profile-links list-unstyled mb-0">
                            <li><a href="user-profile.html" class="active">Edit Profile</a></li>
                            <li><a href="change-password.html">Change Password</a></li>
							<c:choose>
								<c:when test="${user.userType==3}">
                            		<li><a href="enquiries.html>Enquiry Status</a></li>
	                            </c:when>
	                            <c:otherwise>
	                                <li><a href="add-property.html">Add Property</a></li>
	                                <li><a href="my-properties.html">My Properties</a></li>
	                                <li><a href="enquiries.html?status=Received">Received Enquiries</a></li>
	                                <li><a href="enquiries.html?status=Answered">Answered Enquiries</a></li>
	                            </c:otherwise>
                            </c:choose>
                            <li><a href="logout.html">Logout</a></li>
                         </ul>
                        </div>
                    </div>
                    <!-- .col-md-4 -->
    				<div class="col-xs-12 col-sm-8 col-md-8">
						<c:forEach items="${propertyList}" var="property" >
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
                                    		<a href="edit-property.html?propertyId=${property.propertyId}" class="edit--btn"><i class="fa fa-edit"></i>Edit</a>
										</div>
                                        <!-- .property-features end -->
                                   	</div>
                                </div>
                     <!-- .property item end -->
					</c:forEach>
                </div>
				<c:if test="${propertyList.size()==0}">
					<h3 style="color:red" align="center"> No Properties added yet </h3>
				</c:if>
                        <!-- .pagination end -->
                    </div>
                    <!-- .col-md-8 end -->
                </div>
                <!-- .row end -->
            </div>
            <!-- .container end -->
        </section>
        <!-- #my properties  end -->

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