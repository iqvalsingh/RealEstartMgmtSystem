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
                                    <h1>Add Property</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="#">Home</a></li>
                                    <li class="active">Update Image</li>
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

                        <form class="mb-0" method="post" action="saveImage.html?imageName=${imageName}&propertyId=${propertyId}" enctype="multipart/form-data">
                            <p style="font-size:16px; color:red" align="center">${message}</p>
                             <input type="hidden" class="form-control" name="propertyId" id="propertyId" required='true' value="${propertyId}">
                             <input type="hidden" class="form-control" name="imageName" id="imageName" required='true' value="${imageName}">
                             <div class="form-box">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <h4 class="form--title">Property Description</h4>
                                    </div>
                                     <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <label for="property-title">Property Title*</label>
                                           <input type="text" class="form-control" name="propertyTitle" id="propertytitle" required='true' readonly value="${propertyTitle}">
                                        </div>
                                    </div>
   
                                </div>
                                <!-- .row end -->
                            </div>
                           

                            <div class="form-box">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <h4 class="form--title">Property Gallery</h4>
                                    </div>
                                    <!-- .col-md-12 end -->
                                    <div class="col-xs-4 col-sm-4 col-md-4">
                                        <div class="form-group">
                                            <label for="address">Featured Image</label>
                                            <img src="html/propertyimages/${propertyImage}" width="200" height="150">
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-4">
                                        <div class="form-group">
                                            <label for="address">New Featured Image</label>
                                            <input type="file" class="form-control" name="image" required='true'>
                                        </div>
                                    </div>
                                   
                                   
                                    <!-- .col-md-12 end -->

                                </div>
                                <!-- .row end -->
                            </div>
                            <input type="submit" value="Save Edits" name="submit" class="btn btn--primary">
                        </form>
                    </div>
                    <!-- .col-md-12 end -->
                </div>
                <!-- .row end -->
            </div>
        </section>

<jsp:include page="footer.jsp" />