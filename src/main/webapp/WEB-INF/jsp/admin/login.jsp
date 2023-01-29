<!doctype html>
<html lang="en">
 <%	String context=request.getContextPath(); %>
<head>
    <title>Allinone Property Soluction || Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="<%=context%>/html/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/libs/css/style.css">
    <link rel="stylesheet" href="<%=context%>/html/admin/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><h2 style="color: blue">Allinone Property Soluction</h2><span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
              <form action="<%=context%>/admin/login" method="post" name="login">
                      <!--  <p style="font-size:16px; color:red" align="center">Test</p> -->
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" type="text" placeholder="Username" required="true" name="username" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" type="password" placeholder="Password" name="password" required="true">
                    </div>
                    
                    <button type="submit" class="btn btn-primary btn-lg btn-block" name="login">Sign in</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
                
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="<%=context%>/admin/forgot-password.html" class="footer-link">Forgot Password</a>

                </div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="<%=context%>/index.html" class="footer-link">Back to Home</a>

                </div>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="<%=context%>/html/admin/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="<%=context%>/html/admin/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>