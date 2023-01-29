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
                            <h2 class="pageheader-title">Reviews</h2>
                           
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/manage-city.html" class="breadcrumb-link"> Reviews</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Approved Reviews</li>
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
                            <h5 class="card-header">Approved Reviews</h5>
                            <div class="card-body">
                                <div class="table-responsive">
									<table class="table table-striped table-bordered first">
                                        <thead>
                                            <tr>
												<th>S.NO</th>
												<th>User name</th>
												<th>Property </th> 
												<th>Review</th>    
												<th>Review Date</th>   
												<th>Action</th>
                                        	</tr>
                                        </thead>
                                        <tbody>
		    								<c:forEach items="${feedbackList}" var="feedback" varStatus="count">
                								<tr>
                  									<td>${count.index+1}</td>
									                <td><a href="<%=context%>/admin/view-users-details.html?userId=${feedback.user.userId}">${feedback.user.fullName}</a></td>
									                <td><a href="<%=context%>/admin/view-property-details.html?propertyId=${feedback.property.propertyId}">${feedback.property.propertyTitle}</a></td>
									                <td>${feedback.userRemark}</td>
									                <td>${feedback.postingDate}</td>
									                <td>
										                <a href="<%=context%>/admin/unapproveFeedback?feedbackId=${feedback.feedbackId}&fromPage=approved-reviews">Unapprove</a> | 
										                <a href="<%=context%>/admin/deleteFeedback?feedbackId=${feedback.feedbackId}&fromPage=approved-reviews">Delete</a>
									                </td>
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