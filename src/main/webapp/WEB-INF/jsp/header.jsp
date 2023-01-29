<%@ page import="com.rems.bo.User" %>
    <%
    	String context=request.getContextPath();
    	User user=(User)session.getAttribute("user");
    %>

<head>
    <!-- Fonts
    ============================================= -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CPoppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Stylesheets
    ============================================= -->
    <link href="<%=context%>/html/assets/css/external.css" rel="stylesheet">
    <link href="<%=context%>/html/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=context%>/html/assets/css/style.css" rel="stylesheet">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="<%=context%>/html/assets/js/html5shiv.js"></script>
      <script src="<%=context%>/html/assets/js/respond.min.js"></script>
    <![endif]-->
    <!-- Document Title
    ============================================= -->
    <title>Allinone Property Soluction ||Contact Us</title>
</head>

<body>
    <!-- Document Wrapper
	============================================= -->
    <div id="wrapper" class="wrapper clearfix">
          <!--Header start-->
	  <header id="navbar-spy" class="header header-1 header-transparent header-fixed">
        <nav id="primary-menu" class="navbar navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
             <a class="logo" href="index.html">
                <strong style="color:#34495e; font-size:18px;">Allinone Property Soluction</strong>
            </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-right" id="navbar-collapse-1">
                    <ul class="nav navbar-nav nav-pos-center navbar-left">
                        <!-- Home Menu -->
                        <li>
                            <a href="index.html">home</a>
                           
                        </li>
                        <!-- li end -->

                         <li><a href="about.html">about</a></li>

                    
                        <li><a href="properties-grid.html">properties</a></li>

                        <li><a href="contact.html">contact</a></li>
                          <!-- Profile Menu-->
                        <%
                        	if(user!=null)
                        	{
                        %>
                        <li class="has-dropdown">
                           <a href="#" data-toggle="dropdown" class="dropdown-toggle menu-item">My Account</a>
                            <ul class="dropdown-menu">
                                <li><a href="user-profile.html">user profile</a></li>
                                <li><a href="change-password.html">change password</a></li>
                               <li><a href="logout.html">Logout</a></li>
                            </ul>
                         </li>
                         <%
                         	}
                         	else
                         	{
                         %>
                        <li>
                            <a href="admin/login.html">admin</a>
                        </li>
                        <%
                        	}
                        %>
                    </ul>
                    <!-- Module Signup  -->

                    <div class="module module-login pull-left">
                    <%
                    	if(user==null)
                    	{
                    %>
                        <a class="btn-popup" data-toggle="modal" data-target="#signupModule">Login</a>
                        <div class="modal register-login-modal fade" tabindex="-1" role="dialog" id="signupModule">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <div class="row">

                                            <!-- Nav tabs -->
                                            <ul class="nav nav-tabs">
                                                <li class="active"><a href="#login" data-toggle="tab">login</a>
                                                </li>
                                                <li><a href="#signup" data-toggle="tab">signup</a>
                                                </li>
                                            </ul>
                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div class="tab-pane fade in active" id="login">
                                                    <div class="signup-form-container text-center">
                                                        <form class="mb-0" method="post" name="signin" action="login.html">
                                                            
                                                            <div class="or-text">
                                                            <span style="color: blue">Allinone Property Soluction</span>
                                                        </div>
                                                            <div class="form-group">
                                                                <input type="email" class="form-control" name="email" id="email" required="true" placeholder="Email Address">
                                                            </div>
                                                            <!-- .form-group end -->
                                                            <div class="form-group">
                                                                <input type="password" class="form-control" name="password" id="password" required="true" placeholder="Password">
                                                            </div>
                                                           
                                                            <input type="submit" name="signin" class="btn btn--primary btn--block" value="Sign In">
                                                            <a href="forgot-password.html" class="forget-password">Forget your password?</a>
                                                        </form>
                                                        <!-- form  end -->
                                                    </div>
                                                    <!-- .signup-form end -->
                                                </div>
                                                <div class="tab-pane" id="signup">
                                                    <form class="mb-0" method="post" name="signup" action="signup.html">
                                                        
                                                        <div class="or-text">
                                                            <span style="color: blue">Allinone Property Soluction</span>
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" name="fullname" id="fullname" placeholder="Full Name">
                                                        </div>
                                                        <!-- .form-group end -->
                                                       <div class="form-group">
                                                            <input type="email" class="form-control" name="email" id="email" required="true" placeholder="Email Address">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" name="mobilenumber" id="mobilenumber" maxlength="10" required="true" placeholder="Mobile Number">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="password" class="form-control" name="password" id="password" required="true" placeholder="Password">
                                                        </div>
                                                         <div class="form-group">
                                                           
                                                            <input type="radio" name="usertype" value="1" checked="true">Broker &nbsp; &nbsp;<input type="radio" name="usertype" value="2" >Owner &nbsp; &nbsp; <input type="radio" name="usertype" value="3">User
                                                        </div>
                                                        <!-- .form-group end -->
                                                    
                                                        <input type="submit" class="btn btn--primary btn--block" name="signup" value="Register">
                                                    </form>
                                                    <!-- form  end -->
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                        </div>
                    </div>
                    <%
                    }
                    %>
                    <div class="module module-property pull-left">
                        <a href="add-property.html"  class="btn"><i class="fa fa-plus"></i> add property</a>
                    </div>
                 </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

    </header>
  <!--Header Stop-->