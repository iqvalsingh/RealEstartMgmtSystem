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
                            <h2 class="pageheader-title">State</h2>
                           
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                        
                                        <li class="breadcrumb-item active" aria-current="page">Manage State</li>
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
                            <h5 class="card-header">State</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
                                        <thead>
                                        <tr>
                                            <tr>
                  <th>S.NO</th>
            
                  <th>Country Name</th>
                    <th>State Name</th>       
                   <th>Action</th>
                </tr>
                                        </tr>
                                        </thead>
                                        <tbody>
		    <c:forEach items="${stateList}" var="state" varStatus="count" >
                <tr>
                  <td>${count.index+1}</td>
                  <td>${state.country.countryName}</td>
                  <td>${state.stateName}</td>
                  <td><a href="<%=context%>/admin/edit-state.html?stateId=${state.stateId}">Edit Details</a></td>
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