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
                            <h2 class="pageheader-title">Change Password </h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                        
                                        <li class="breadcrumb-item active" aria-current="page">Change Password</li>
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
                                <h5 class="card-header">Change Password</h5>
                                <div class="card-body">
                                    <form  method="post" name="changepassword" action="updatePassword.html" onsubmit="return checkpass();">
                                        <p style="font-size:16px; color:red" align="center">${message}</p>
                                            <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Current Password</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                 <input type="password" name="currentpassword" id="currentpassword" class="form-control" value="" required='true'>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">New Password</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                 <input type="password" name="newpassword" id="newpassword" class="form-control" value="" required='true'>
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Confirm Password</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" value="" required='true'>
                                            </div>
                                        </div>
                                    <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                               <p style="text-align: center;"> <button type="submit" class="btn btn-space btn-primary" name="submit">Change</button></p>
                                                
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
            <script type="text/javascript">
            	function checkpass()
            	{
					if($("#newpassword").val()!=$("#confirmpassword").val())
            		{
            			alert("New Password and Confirm Password did not match");
            			return false;
            		}
            		return true;
            	}
            </script>
<jsp:include page="adminFooter.jsp" />