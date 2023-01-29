<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String context=request.getContextPath();
%> 
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="<%=context%>/html/admin/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/libs/css/style.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/vector-map/jqvmap.css">
    <link href="<%=context%>/html/admin/assets/vendor/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/html/admin/assets/vendor/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="<%=context%>/html/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/libs/css/style.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/html/admin/assets/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/html/admin/assets/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/html/admin/assets/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/html/admin/assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="<%=context%>/html/admin/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/libs/css/style.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <script src="<%=context%>/html/admin/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <title>Allinone Property Soluction || Dashboard</title>
</head>
<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
      <!-- Header Start-->
		 <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="<%=context%>/admin/dashboard.html">Allinone Property Soluction</a>
               
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                      
                     
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<%=context%>/html/admin/assets/images/images.png" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">name</h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="<%=context%>/admin/admin-profile.html"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="<%=context%>/admin/change-password.html"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="<%=context%>/admin/logout.html"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
		 <!-- Header Stop-->
		
		 <!-- sidebar Start-->
		  <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="<%=context%>/admin/dashboard.html">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                           <li class="nav-divider">Menu</li>
                          <li class="nav-item">
                            <a class="nav-link" href="<%=context%>/admin/dashboard.html"><i class="fa fa-fw fa-user-circle"></i>Dashboard</a>
                           </li>
                           <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fa fa-fw fa-rocket"></i>Property Type</a>
                                <div id="submenu-2" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/add-propertytype.html">Add Property Type </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-propertytype.html">Manage Property Type </a>
                                        </li>
                                       
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i class="fas fa-fw fa-chart-pie"></i>Country</a>
                                <div id="submenu-3" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/add-country.html">Add Country</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-country.html">Manage Country</a>
                                        </li>
                                       
                                    </ul>
                                </div>
                            </li>
                             <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fab fa-fw fa-wpforms"></i>State</a>
                                <div id="submenu-4" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/add-state.html">Add State</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-state.html">Manage State</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-fw fa-table"></i>City</a>
                                <div id="submenu-5" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/add-city.html">Add City</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-city.html">Manage City</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                              <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-owners.html"><i class="fas fa-fw fa-file"></i>Owner</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-agents.html"><i class="fas fa-fw fa-file"></i>Agents</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/manage-users.html"><i class="fas fa-fw fa-file"></i>Users</a>
                                        </li>
                                         <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/listed-properties.html"><i class="fas fa-fw fa-file"></i>List of Properties</a>
                                        </li>

                                <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-212" aria-controls="submenu-2"><i class="fas fa-fw fa-file"></i>Reviews</a>
                                <div id="submenu-212" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                <li class="nav-item">
                                <a class="nav-link" href="<%=context%>/admin/new-reviews.html">New </a>
                                </li>
                                <li class="nav-item">
                                <a class="nav-link" href="<%=context%>/admin/approved-reviews.html">Approved </a>
                                </li>

                                <li class="nav-item">
                                <a class="nav-link" href="<%=context%>/admin/unapproved-reviews.html">Unapproved </a>
                                </li>
              

                                    </ul>
                                </div>
                            </li>



                                    </ul>
                                
                            <li class="nav-divider">
                                Features
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-file"></i> Pages </a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/aboutus.html">About Us</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/contactus.html">Contact Us</a>
                                        </li>
                                      
                                    </ul>

                                </div>
                            </li>
                             <li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/search-property.html"><i class="fa fa-fw fa-search"></i>Search Property</a>
                                        </li>
							<li class="nav-item">
                                            <a class="nav-link" href="<%=context%>/admin/bwdates-reports-ds.html"><i class="fa fa-fw fa-search"></i>Reports</a>
                                        </li>
						</ul>                          
						  </div>
                           </nav> 
                    </div>
				</div>
        <!-- sidebar Stop-->