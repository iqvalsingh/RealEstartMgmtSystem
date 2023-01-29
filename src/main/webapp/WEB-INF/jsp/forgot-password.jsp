<!DOCTYPE html>
<html dir="ltr" lang="en-US">
 <%	String context=request.getContextPath(); %>

<jsp:include page="header.jsp" />        
        <!-- Page Title #1
============================================ -->
        <section id="page-title" class="page-title bg-overlay bg-overlay-dark2">
            <div class="bg-section">
                <img src="<%=context%>/html/assets/images/page-titles/1.jpg" alt="Background" />
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <div class="title title-1 text-center">
                            <div class="title--content">
                                <div class="title--heading">
                                    <h1>Forgot Password</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li class="active">Forgot Password</li>
                                </ol>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- .title end -->
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
            <!-- .container end -->
        </section>
        <!-- #page-title end -->

        <!-- #Add Property
============================================= -->
        <section id="add-property" class="add-property">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <h4 class="form--title">Forgot Password</h4>
                                    
                                    <form role="form" method="post" action="reset-password.html">
					                    <p style="font-size:16px; color:red" align="center">${message}</p>
					                    <div class="form-group">
					                        <input class="form-control form-control-lg" type="email" name="email" required="true" placeholder="Your Email" >
					
					                    </div>
					                     <div class="form-group">
					                        <input class="form-control form-control-lg" type="type" name="mobilenumber" required="true" maxlength="10" pattern="[0-9]+" placeholder="Mobile Number">
					                        
					                    </div>
					                    <div class="form-group pt-1"><button type="submit" class="btn btn-primary btn-lg btn-block" name="submit">Reset</button></div>
					                </form>             
					            </div>
                                    <!-- .col-md-12 end -->
                            </div>
                                <!-- .row end -->
                        </div>
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
        </section>
        <section id="cta" class="cta cta-1 text-center bg-overlay bg-overlay-dark pt-90">
            <div class="bg-section"><img src="<%=context%>/html/assets/images/cta/bg-1.jpg" alt="Background"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <h3>Join our professional team & agents to start selling your house</h3>
                         <a href="contact.html" class="btn btn--primary">Contact</a>
                    </div>
                    <!-- .col-md-6 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

        </header>

<jsp:include page="footer.jsp" />