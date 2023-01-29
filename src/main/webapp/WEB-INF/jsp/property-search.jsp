<!DOCTYPE html>
<html dir="ltr" lang="en-US">
 <%	String context=request.getContextPath(); %>

<jsp:include page="header.jsp" />
        <!-- map
============================================ -->
<section>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="slider--content">
                            <div class="text-center">
                                <h1>Find Your Favorite Property</h1>
                            </div>
                            <form class="mb-0" method="post" name="search" action="property-search.html">
                                <div class="form-box search-properties">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <div class="form-group">
                                                <div class="select--box">
                                                    <i class="fa fa-angle-down"></i>
                                                    <select name="city" id="city">
                                        <option value="">Select City</option>
                                      <option>test</option>
                                     </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- .col-md-3 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <div class="form-group">
                                                <div class="select--box">
                                                    <i class="fa fa-angle-down"></i>
                                                    <select name="type" id="type" required="true">
                                        <option value="">Select Property Type</option>
                                        <option>Test</option>
                                        </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- .col-md-3 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <div class="form-group">
                                                <div class="select--box">
                                                    <i class="fa fa-angle-down"></i>
                                                    <select name="status" id="status" required="true">
                                        <option value="">Select Any Status</option>
                                        <option value="">Test</option>
                                     </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- .col-md-3 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                                            <input type="submit" value="Search" name="search" class="btn btn--primary btn--block">
                                        </div>
                                      
                                      
                                    </div>
                                    <!-- .row end -->
                                </div>
                                <!-- .form-box end -->
                            </form>
                        </div>
                    </div>
                    <!-- .container  end -->
                </div>
                <!-- .slider-text end -->
            </div>
            <div>
                <!-- Slide #1 -->

              
                <!-- .slide-item end -->
            </div>
        </section>
        <!-- #map end -->

        <!-- properties-grid
============================================= -->
        <section id="properties-grid" style="margin-top:-10%">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <!-- widget property type
=============================-->

                        <div class="widget widget-property">
                           
                            <div class="widget--title">
                                <h5>Property Type</h5>
                            </div>

                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">Test</a>
                                     </li>
                                 </ul>
                            </div>
                        </div>
                        
                        <!-- . widget property type end -->

                        <!-- widget property status
=============================-->
                        <div class="widget widget-property">
                            <div class="widget--title">
                                <h5>Property Status</h5>
                            </div>
                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                    <li>
                                       <a href="#">#</a>
                                    </li>
                                 </ul>
                            </div>
                        </div>
                        <!-- . widget property status end -->


                        <!-- widget property city
=============================-->
                        <div class="widget widget-property">
                            <div class="widget--title">
                                <h5>Property By City</h5>
                            </div>
                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                   
                                    <li>
                                       <a href="#">City</a>
                                    </li>
                                   </ul>
                            </div>
                        </div>
                      
                    </div>
                    <!-- .col-md-4 end -->
                    <div class="col-xs-12 col-sm-12 col-md-8">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="properties-filter clearfix">
                                  
                                    <!-- .select-box -->
                                    <div class="view--type pull-right">
                                        <a id="switch-list" href="#" class=""><i class="fa fa-th-list"></i></a>
                                        <a id="switch-grid" href="#" class="active"><i class="fa fa-th-large"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="properties properties-grid">
                                <!-- .col-md-12 end -->
          <div class="col-xs-12 col-sm-6 col-md-6" width='300' height='300'>
                                    <!-- .property-item #1 -->
                                    <div class="property-item">
                                        <div class="property--img">
<a href="#">
<img src="propertyimages/b9fb9d37bdf15a699bc071ce49baea531565329246.jpg"   width='380' height='300'>
                                </a>
<span class="property--status">Sale</span>
 </div>
 <div class="property--content">
<div class="property--info">
 <h5 class="property--title">
<a href="#">PropertyTitle</a></h5>
<p class="property--location">Address &nbsp;
City &nbsp;
StateName &nbsp;  
CountryName </p>
<p class="property--price"> RentorsalePrice </p>
 </div>
                                            <!-- .property-info end -->
<div class="property--features">
<ul class="list-unstyled mb-0">
<li><span class="feature">Beds:</span><span class="feature-num">Bedrooms </span></li>
<li><span class="feature">Baths:</span><span class="feature-num">Bathrooms </span></li>
<li><span class="feature">Area:</span><span class="feature-num">Area </span></li>
</ul>
</div>
                                            <!-- .property-features end -->
                                        </div>
                                    </div>
                                </div>
           <h2 align="center" style="color:red">No Record found</h2>
                             <!-- .property item end -->

                              
                                <!-- .property item end -->
                            </div>
                     
                            <!-- .col-md-12 end -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .col-md-8 end -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
        <!-- #properties-grid  end  -->

        <!-- cta #1
============================================= -->
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
        <!-- #cta1 end -->

<jsp:include page="footer.jsp" />