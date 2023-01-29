<%
	String context=request.getContextPath();
%>
<jsp:include page="adminHeader.jsp" />
       
        <div class="dashboard-wrapper">
            <div class="dashboard-finance">
                <div class="container-fluid dashboard-content">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h3 class="mb-2">Dashboard </h3>
                                
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Admin Dashboard</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                   
                    <div class="row">
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                               <h5 class="card-header">Total Property Type</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${propertyType}</h1>
                                    </div>
                                    
                                </div>
                                
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-propertytype.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                 <h5 class="card-header">Total Country</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${country}</h1>
                                    </div>
                                  
                                </div>
                                
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-country.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Total State</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${state}</h1>
                                    </div>
                                   
                                </div>
                               
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-state.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Total City</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${city}</h1>
                                    </div>
                                    
                                </div>
                                
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-city.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                   
           <div class="row">
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Total Agents Listed</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${agent}</h1>
                                    </div>
                                    
                                </div>
                                
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-agents.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Total Owners Listed</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${owner}</h1>
                                    </div>
                                  
                                </div>
                                
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-owners.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Total Users</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${user}</h1>
                                    </div>
                                   
                                </div>
                               
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/manage-users.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Total Property Listed</h5>
                                <div class="card-body">
                                    <div class="metric-value d-inline-block">
                                        <h1 class="mb-1">${property}</h1>
                                    </div>
                                    
                                </div>
                                
                                <div class="card-footer text-center bg-white">
                                    <a href="<%=context%>/admin/listed-properties.html" class="card-link">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<jsp:include page="adminFooter.jsp" />