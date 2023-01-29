<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                            <h2 class="pageheader-title">Add City </h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="<%=context%>/admin/dashboard.html" class="breadcrumb-link">Dashboard</a></li>
                                        
                                        <li class="breadcrumb-item active" aria-current="page">Add City</li>
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
                                <h5 class="card-header">Add City</h5>
                                <div class="card-body">
                                    <form  method="post" action="<%=context%>/admin/updateCity">
                                    	<input type="hidden" value="${city.cityId}" name="cityId" />
										<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Country Name</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <select type="text" name="country" id="country" required="true" onChange="getState()" class="form-control">
                                                    <option>Select Country</option>
		    										<c:forEach items="${countryList}" var="country" >
	                                                    <option value="${country.countryId}" ${country.countryId == city.state.country.countryId ? 'selected' : ''}>${country.countryName}</option>
	                                                </c:forEach>
												</select>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-12 col-sm-3 col-form-label text-sm-right">State Name</label>
											<div class="col-12 col-sm-8 col-lg-6">
                                                <select type="text" name="state" id="state" required="true" class="form-control">
                                                    	<option value="-1">Select State</option>
		    										<c:forEach items="${stateList}" var="state" >
	                                                    <option value="${state.stateId}" class="stateOptions ${state.country.countryId}" ${state.stateId == city.state.stateId ? 'selected' : ''} ${state.country.countryId != city.state.country.countryId ? 'style=\"display: none;\"' : ''}>${state.stateName}</option>
	                                                </c:forEach>
                                                </select>
											</div>
										</div>

						<div class="form-group row">
							<label class="col-12 col-sm-3 col-form-label text-sm-right">City Name</label>
							<div class="col-12 col-sm-8 col-lg-6">
								<input type="text" name="cityName" id="cityName" required="true"  class="form-control" value="${city.cityName}">
							</div>
						</div>
                                
						<div class="form-group row text-right">
							<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
								<p style="text-align: center;"> <button type="submit" class="btn btn-space btn-primary" name="submit">Submit</button></p>
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
            	function getState()
            	{
            		$(".stateOptions").hide();
            		$("."+$("#country").val()).show();
            		$("#state").val(-1);
            	}
            </script>
<jsp:include page="adminFooter.jsp" />