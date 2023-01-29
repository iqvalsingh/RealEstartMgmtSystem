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
                                    <h1>Enquiry</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active">Enquiry</li>
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
                    <p style="font-size:16px; color:red" align="center">test</p>
                 <div class="form-box">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <h4 class="form--title">Enquiry Detail</h4>
                                    </div>
                                    <!-- .col-md-12 end -->
                                    <div class="col-xs-12 col-sm-12 col-md-12">
										<table border="1" class="table table-bordered mg-b-0">
											<tr>
                                				<th>Full Name</th>
                                   				<td>${enquiry.fullName}</td>
                                   			</tr>  
                                   			<tr>
                                				<th>Property Title</th>
                                   				<td>${enquiry.property.propertyTitle}</td>
                                   			</tr>                           
											<tr>
			                                	<th>Email</th>
												<td>${enquiry.email}</td>
                                   			</tr>
			                                <tr>
            				                    <th>MobileNumber</th>
												<td>${enquiry.mobileNumber}</td>
                                   			</tr>
                                   			<tr>
                                    			<th>Message</th>
                                      			<td>${enquiry.message}</td>
                                  			</tr>
											<tr>  
												<th>Enquiry Date</th>
	                                        	<td>${enquiry.enquiryDate}</td>
	                                    	</tr>
											<tr>
												<th>Status</th>
												<td>
													<c:choose>
														<c:when test="${enquiry.status=='Answer'}">
															Answered Enquiry
														</c:when>
														<c:otherwise>
															Unanswered Enquiry
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</table>
                                    </div>
                                </div>
								<table class="table mb-0">
									<c:if test="${enquiry.status==''}">
										<form class="mb-0" method="post" name="submit">
											<tr>
											    <th>Remark :</th>
											    <td>
											    <textarea name="remark" placeholder="" rows="12" cols="14" class="form-control" required="true"></textarea></td>
											</tr>
											
											<tr align="center">
											    <td colspan="2"><button type="submit" name="submit" class="btn btn--primary"></i> Update</button></td>
											</tr>
										</form>
									</c:if>
									<c:if test="${enquiry.status=='Answer'}">
										<tr>
											<td colspan="2" style="text-align: center; color:blue"><strong>Broker / Owner Remark</strong></td>
										</tr>
										<tr>
										    <th>Remark</th>
										    <td>Remark</td>
										</tr>
										<tr>
											<th>Remark date</th>
											<td>RemarkDate</td>
										</tr>
									</c:if>
								</table>
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
        </section>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

        </header>
        

<jsp:include page="footer.jsp" />