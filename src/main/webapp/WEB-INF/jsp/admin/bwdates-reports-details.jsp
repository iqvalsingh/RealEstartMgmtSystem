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
                            <h2 class="pageheader-title">B/W date Reports</h2>
                           
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                        
                                        <li class="breadcrumb-item active" aria-current="page">B/W date Reports</li>
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
                            <h4>Between dates reports:</h4>
                <h5 align="center" style="color:blue">Report from fdate to tdate</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
                                        <thead>
                                        <tr>
                                            <tr>
                                            <th data-breakpoints="xs">S.NO</th>
                                            <th>Property ID</th>
                                            <th>Property Title</th>
                                            <th>Full Name</th>
                                            <th>Mobile Number</th>
                                            <th>Listing Date</th>
                                            <th data-breakpoints="xs">Action</th>
                                                </tr>
                                        </tr>
                                        </thead>
                                        <tbody>
                 <tr>
                  <td>cnt</td>
                  <td>PropertyID</td>
                <td>PropertyTitle</td>
                  <td>FullName</td>
                 <td>MobileNumber</td>
                  <td>ListingDate</td>
                  <td><a href="#">View</a></td>
                </tr>
               
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