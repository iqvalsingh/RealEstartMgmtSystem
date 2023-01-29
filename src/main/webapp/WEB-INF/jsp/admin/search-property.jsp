<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String context=request.getContextPath();
%>
<jsp:include page="adminHeader.jsp" />
       
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Search Properties</h2>
                           
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                       
                                        <li class="breadcrumb-item active" aria-current="page">Search Properties</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Search Properties</h5>
                            <form  method="post">
	                            <p style="font-size:16px; color:red" align="center">Test</p>
	                            <div class="form-group row">
	                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Search by Property ID/Name/Mobile No.:</label>
	                                <div class="col-12 col-sm-8 col-lg-6">
	                                    <input type="text" name="searchdata" id="searchdata" class="form-control" value="" required='true'>
	                                </div>
	                            </div>
	                        
	                            <div class="form-group row text-right">
	                                <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
	                                   <p style="text-align: center;"> <input type="button" onClick="return searchProperty();" class="btn btn-space btn-primary" name="search" value="Search" /></p>
	                                    
	                                </div>
	                            </div>
	                        </form>
                            <div class="card-body">
                                <div class="table-responsive">
                                     <table id="propertyList" class="table table-striped table-bordered first">
                                        <h4 id="result" align="center">Result against "<label id="resultKeyword"></label>" keyword </h4>
                                        <thead>
                                            <tr>
												<th data-breakpoints="xs">S.NO</th>
												<th>Property ID</th>
												<th>Property Title</th>
												<th>Full Name</th>
												<th>Mobile Number</th>
												<th>Listing Date</th>
												<th data-breakpoints="xs">Action</th>
	                                        </tr>
                                        </thead>
                                        <tbody>
    										<c:forEach items="${propertyList}" var="property" varStatus="count" >
												<tr class="dataRow"">
													<td>${count.index+1}</td>
													<td class="dataCol">${property.displayPropertyId}</td>
													<td class="dataCol">${property.propertyTitle}</td>
													<td class="dataCol">${property.user.fullName}</td>
													<td class="dataCol">${property.user.mobileNumber}</td>
													<td>${property.listingDate}</td>
													<td><a href="<%=context%>/admin/view-property-details.html?propertyId=${property.propertyId}">View</a></td>
												</tr>
											</c:forEach>
										</tbody>
                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                </div>
            </div>
            <script type="text/javascript">
            	$.expr[':'].contains = function(a, i, m) {
					return $(a).text().toUpperCase().indexOf(m.toUpperCase()) >= 0;
				};
				
            	$(document).ready(function(){
            		$("#result").hide();
            		$("#propertyList").hide();
            	});
            	
            	function searchProperty()
            	{
            		var searchText=$("#searchdata").val();
            		$(".dataRow").hide();
            		$("#result").show();
            		$("#propertyList").show();
            		$("#resultKeyword").html(searchText);
            		/*$(".dataRow").each(function(index,value){
            			console.log($(this+" td").each(function(index,value){$(this).html();}););
            		});*/
            		
            		/*$(".dataRow > td").each(function(index, value){
            			if($(this).html()==searchText)
            			{
            				var rowNo=$(this).attr('class');
            				rowNo=rowNo.substring(rowNo.indexOf('-')+1);
            				$("#dataRow-"+rowNo).show();
            			}
            		});*/
            		$(".dataCol:contains("+searchText+")").parent().show();
            	}
            </script>
<jsp:include page="adminFooter.jsp" />