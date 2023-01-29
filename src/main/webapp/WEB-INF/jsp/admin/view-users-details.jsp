<%
	String context=request.getContextPath();
%>
<jsp:include page="adminHeader.jsp" />
       
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">View Details </h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                       
                                        <li class="breadcrumb-item active" aria-current="page">View Details</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                
                    <div class="row">
                        <!-- ============================================================== -->
                        <!-- valifation types -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">View Details</h5>
                                <div class="card-body">
                                    <form class="form-horizontal" method="post">
                            <p style="font-size:16px; color:red" align="center">Test</p>
                                 <table border="1" class="table table-striped table-bordered first" >
                                <tr>
                                    <th >Full Name </th>
                                    <td style="padding-left: 10px">${user.fullName}</td>
                                </tr>
                                <tr>
                                    <th>Mobile Number </th>
                                    <td style="padding-left: 10px">${user.mobileNumber}</td>
                                </tr>
                                <tr>
                                    <th>Email </th>
                                    <td style="padding-left: 10px">${user.email}</td>
                                </tr>
                                <tr>
                                    <th>About Me </th>
                                    <td style="padding-left: 10px">${user.aboutMe}</td>
                                </tr>
                                </table>
                           </div>
                    </div>
           </form>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end valifation types -->
                        <!-- ============================================================== -->
                    </div>
           
            </div>
<jsp:include page="adminFooter.jsp" />