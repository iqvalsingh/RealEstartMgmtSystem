<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                                    <h1>Answered Enquiry</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active">Update Image</li>
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
                            <div class="form-box">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <h4 class="form--title">Total Answered Enquiry</h4>
                                        
                                        <table class="table">
                							<thead>
		                                        <tr>
		                                            <tr>
														<th>S.NO</th>
									                    <th>Enquiry Number</th>
									                    <th>Full Name</th>
									                    <th>Mobile Number</th>
														<th>Action</th>
                									</tr>
                                        		</tr>
                                        	</thead>
											<c:forEach items="${enquiryList}" var="enquiry" >
								                <tr>
													<td>${enquiry.enquiryId}</td>
													<td>${enquiry.enquiryNumber}</td>
													<td>${enquiry.fullName}</td>
													<td>${enquiry.mobileNumber}</td>
													<td><a href="view-enquiry-detail.html?eqnuiryId=${enquiry.enquiryId}">View Details</a></td>
								                </tr>
								            </c:forEach>
											<c:if test="${enquiryList.size()==0}">
								                <tr>
									                <th colspan="5" style="text-align: center; color:red">No Record found</th>   
								                </tr>
											</c:if>
               
              							</table>
              						</div>
                                    <!-- .col-md-12 end -->
                                   
                                   
                                   
                                   
                                    <!-- .col-md-12 end -->

                                </div>
                                <!-- .row end -->
                            </div>
                  
                            
                       
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
        </section>
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

<jsp:include page="footer.jsp" />