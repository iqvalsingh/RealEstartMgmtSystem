<%	
	String context=request.getContextPath();
   	String issue=(String)session.getAttribute("issue");
%>
        <!-- Footer #1
============================================= -->
      <!----Footer Start-->
      <footer id="footer" class="footer footer-1 bg-white">
        <!-- Widget Section
============================================= -->
        <div class="footer-widget">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3 widget--about">
                        <div class="widget--content">
                             <div class="footer--logo">
                                <img src="<%=context%>/html/assets/images/logo/logo-dark3.png" alt="logo">
                            </div>
                            <p>D-204, Hole Town South West,
                                Delhi-110096,India
                            </p>
                            <div class="footer--contact">
                                <ul class="list-unstyled mb-0">
                                    <li>+8655643324</li>
                                    <li><p>info@gmail.com</p></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- .col-md-2 end -->
                    <div class="col-xs-12 col-sm-3 col-md-2 col-md-offset-1 widget--links">
                        <div class="widget--title">
                            <h5>Company</h5>
                        </div>
                        <div class="widget--content">
                            <ul class="list-unstyled mb-0">
                                <li><a href="about.html">About us</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                               <li><a href="properties-grid.html">Properties</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- .col-md-2 end -->
                    <div class="col-xs-12 col-sm-3 col-md-2 widget--links">
                        <div class="widget--title">
                            <h5>More Links</h5>
                        </div>
                        <div class="widget--content">
                            <ul class="list-unstyled mb-0">
                                <li><a href="admin/login.html">Admin</a></li>
                                <li><a href="index.html">Home</a></li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- .col-md-2 end -->
                    <div class="col-xs-12 col-sm-12 col-md-4 widget--newsletter">
                        <img src="<%=context%>/html/assets/images/about/download.jpg" width="500" height="300" alt="logo">
                    </div>
                    <!-- .col-md-4 end -->

                </div>
            </div>
            <!-- .container end -->
        </div>
        <!-- .footer-widget end -->

        <!-- Copyrights
============================================= -->
        <div class="footer--copyright text-center">
            <div class="container">
                <div class="row footer--bar">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <span>© 2022 , Allinone Property Soluction.</span>
                    </div>

                </div>
                <!-- .row end -->
            </div>
            <!-- .container end -->
        </div>
        <!-- .footer-copyright end -->
    </footer>
     <!----Footer Stop-->
    </div>
    <!-- #wrapper end -->

    <!-- Footer Scripts
============================================= -->
    <script src="<%=context%>/html/assets/js/jquery-2.2.4.min.js"></script>
    <script src="<%=context%>/html/assets/js/plugins.js"></script>
    <script src="<%=context%>/html/assets/js/functions.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true&amp;key=AIzaSyCiRALrXFl5vovX0hAkccXXBFh7zP8AOW8"></script>
    <script src="<%=context%>/html/assets/js/plugins/jquery.gmap.min.js"></script>
    <script src="<%=context%>/html/assets/js/map-addresses.js"></script>
    <script src="<%=context%>/html/assets/js/map-custom.js"></script>

    <script type="text/javascript">
    	$(document).ready(function(){
    		if(<%=issue%>=="ISSUE-USER-NOT-LOGGED-IN")
    		{
    			alert("Please Login to perform this action");
    		}
    	});
    </script>
    
</body>

</html>
