<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String context=request.getContextPath();
%>
<jsp:include page="adminHeader.jsp" />
       
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Listed Properties</h2>
                           
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                       
                                        <li class="breadcrumb-item active" aria-current="page">Listed Properties</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Listed Properties</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
                                        <thead>
	                                        <tr>
												<th data-breakpoints="xs">S.NO</th>
											    <th>Property ID</th>
											    <th>Property Title</th>
											    <th>Full Name</th>
											    <th>Mobile Number</th>
											    <th>Listing Date</th>
											    <th data-breakpoints="xs">Action</th>
								            </tr>
							            </thead>
            							<tbody>
		    								<c:forEach items="${propertyList}" var="property" varStatus="count" >
								                <tr>
													<td>${count.index+1}</td>
													<td>${property.propertyId}</td>
													<td>${property.propertyTitle}</td>
													<td>${property.user.fullName}</td>
													<td>${property.user.mobileNumber}</td>
													<td>${property.listingDate}</td>
													<td><a href="<%=context%>/admin/view-property-details.html?propertyId=${property.propertyId}">View</a></td>
								                 </tr>
              								</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                </div>
               
               
                
                
            </div>
<jsp:include page="adminFooter.jsp" />