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
                                        <li class="breadcrumb-item"><a href="add-country.html" class="breadcrumb-link">View Details</a></li>
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
                                    <td style="padding-left: 10px">${property.user.fullName}</td>
                                </tr>
                                <tr>
                                    <th>Mobile Number </th>
                                    <td style="padding-left: 10px">${property.user.mobileNumber}</td>
                                </tr>
                                <tr>
                                    <th>Email </th>
                                    <td style="padding-left: 10px">${property.user.email}</td>
                                </tr>
                                <tr>
                                    <th>Property Title </th>
                                    <td style="padding-left: 10px">${property.propertyTitle}</td>
                                </tr>
                                <tr>
                                    <th>Property Description </th>
                                    <td style="padding-left: 10px">${property.propertyDescription}</td>
                                </tr>
                                <tr>
                                    <th>Type </th>
                                    <td style="padding-left: 10px">${property.propertytypeid}</td>
                                </tr>
                                <tr>
                                    <th>Status </th>
                                    <td style="padding-left: 10px">${property.status}</td>
                                </tr>
                                <tr>
                                    <th>Location </th>
                                    <td style="padding-left: 10px">${property.location}</td>
                                </tr>
                                <tr>
                                    <th>Bedrooms </th>
                                    <td style="padding-left: 10px">${property.bedrooms}</td>
                                </tr>
                                <tr>
                                    <th>Bathrooms </th>
                                    <td style="padding-left: 10px">${property.bathrooms}</td>
                                </tr>
                                <tr>
                                    <th>Floors </th>
                                    <td style="padding-left: 10px">${property.floors}</td>
                                </tr>
                                <tr>
                                    <th>Garages </th>
                                    <td style="padding-left: 10px">${property.garages}</td>
                                </tr>
                                <tr>
                                    <th>Area </th>
                                    <td style="padding-left: 10px">${property.area}</td>
                                </tr>
                                <tr>
                                    <th>Size </th>
                                    <td style="padding-left: 10px">${property.size}</td>
                                </tr>
                                <tr>
                                    <th>Rent/salePrice </th>
                                    <td style="padding-left: 10px">${property.rentOrSalePrice}</td>
                                </tr>
                                <tr>
                                    <th>Before Price label </th>
                                    <td style="padding-left: 10px">${property.beforePriceLabel}</td>
                                </tr>
                                <tr>
                                    <th>After Price label </th>
                                    <td style="padding-left: 10px">${property.afterPriceLabel}</td>
                                </tr>
                                <tr>
                                    <th>PropertyID </th>
                                    <td style="padding-left: 10px">${property.displayPropertyId}</td>
                                </tr>
                                <table border="1" class="table table-striped table-bordered first">
                                    <hr>
                                    <p style="color: red">Property Features</p>
                                <tr>
                                    <th>Center Cooling </th>
                                    <td> <input type="checkbox" disabled="disabled" name="centercolling" id="centercolling" ${property.centerCooling ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Balcony </th>
                                    <td> <input type="checkbox" disabled="disabled" name="balcony" id="balcony" ${property.balcony ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Pet Friendly </th>
                                    <td> <input type="checkbox" disabled="disabled" name="petfrndly" id="petfrndly" ${property.petFriendly ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Barbeque </th>
                                    <td> <input type="checkbox" disabled="disabled" name="barbeque" id="barbeque" ${property.barbeque ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Fire Alarm </th>
                                    <td> <input type="checkbox" disabled="disabled" name="firealarm" id="firealarm" ${property.fireAlarm ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Modern Kitchen </th>
                                    <td> <input type="checkbox" disabled="disabled" name="modernkitchen" id="modernkitchen" ${property.modernKitchen ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Storage </th>
                                    <td> <input type="checkbox" disabled="disabled" name="storage" id="storage" ${property.storage ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Dryer </th>
                                    <td><input type="checkbox" disabled="disabled" name="dryer" id="dryer" ${property.dryer ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Heating </th>
                                    <td> <input type="checkbox" disabled="disabled" name="heating" id="heating" ${property.heating ? 'checked' : ''}></td> 
                                </tr>
                                <tr>
                                    <th>Pool </th>
                                    <td> <input type="checkbox" disabled="disabled" name="pool" id="pool" ${property.pool ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Laundry </th>
                                    <td> <input type="checkbox" disabled="disabled" name="laundry" id="laundry" ${property.laundry ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Sauna </th>
                                    <td> <input type="checkbox" disabled="disabled" name="sauna" id="sauna" ${property.sauna ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Gym </th>
                                    <td> <input type="checkbox" disabled="disabled" name="gym" id="gym" ${property.gym ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Elevator </th>
                                    <td> <input type="checkbox" disabled="disabled" name="elevator" id="elevator" ${property.elevator ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Dish Washer </th>
                                    <td> <input type="checkbox" disabled="disabled" name="dishwasher" id="dishwasher" ${property.dishWasher ? 'checked' : ''}></td>
                                </tr>
                                <tr>
                                    <th>Emergency Exit </th>
                                    <td> <input type="checkbox" disabled="disabled" name="eexit" id="eexit" ${property.emergencyExit ? 'checked' : ''}></td>
                                </tr>
                                </table>
                                <table border="1" class="table table-striped table-bordered first">
                                    <hr>
                                    <p style="color: red">Property Images</p>
                                <tr>
                                    <th>Featured Image </th>
                                    <td style="padding-left: 10px"><img src="<%=context%>/html/propertyimages/${property.featuredImage}" width="200" height="150"></td>
                                </tr>
                                <tr>
                                    <th>Gallery Image1 </th>
                                    <td style="padding-left: 10px"><img src="<%=context%>/html/propertyimages/${property.galleryImage1}" width="200" height="150"></td>
                                </tr>
                                <tr>
                                    <th>Gallery Image2 </th>
                                    <td style="padding-left: 10px"><img src="<%=context%>/html/propertyimages/${property.galleryImage2}" width="200" height="150" ></td>
                                </tr>
                                <tr>
                                    <th>Gallery Image3 </th>
                                    <td style="padding-left: 10px"><img src="<%=context%>/html/propertyimages/${property.galleryImage3}" width="200" height="150"></td>
                                </tr>
                                <tr>
                                    <th>Gallery Image4 </th>
                                    <td style="padding-left: 10px"><img src="<%=context%>/html/propertyimages/${property.galleryImage4}" width="200" height="150"></td>
                                </tr>
                                <tr>
                                    <th>Gallery Image5 </th>
                                    <td style="padding-left: 10px"><img src="<%=context%>/html/propertyimages/${property.galleryImage5}" width="200" height="150"></td>
                                </tr>
                            </table>
                            <table border="1" class="table table-striped table-bordered first"> <hr>
                                    <p style="color: red">Property Address</p>
                                <tr>
                                    <th>Address </th>
                                    <td style="padding-left: 10px">${property.address}</td>
                                </tr>
								<tr>
									<th>Country </th>
									<td style="padding-left: 10px">${property.country}</td>
								</tr>
								<tr>
									<th>State </th>
									<td style="padding-left: 10px">${property.state}</td>
								</tr>
								<tr>
									<th>City </th>
									<td style="padding-left: 10px">${property.city}</td>
								</tr>
                                <tr>
                                    <th>Zip Code </th>
                                    <td style="padding-left: 10px">${property.zipCode}</td>
                                </tr>
                                <tr>
                                    <th>Neighborhood </th>
                                    <td style="padding-left: 10px">${property.neighborhood}</td>
                                </tr>
                                <tr>
                                    <th>Listing Date </th>
                                    <td style="padding-left: 10px">${property.listingDate}</td>
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