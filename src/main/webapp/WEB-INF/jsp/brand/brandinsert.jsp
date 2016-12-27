<%----------------------------------------------starting---------------------------------------------------%>
<%@include file="/WEB-INF/jsp/header.jsp"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="wrapper">
	<%@include file="/WEB-INF/jsp/brand/brandsider.jsp"%>
	<%--------------------------------------------------sidebar end-----------------------------------------------%>
	<div class="main-panel">

		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
						<span class="icon-bar bar3"></span>
					</button>
					<a class="navbar-brand" href="brandview.jsp">Brand Information</a>
				</div>
			</div>
		</nav>


	<%-----------------------------------------mathi ko navigation end------------------------------------------%>

		<div class="content">
			<div class="container-fluid">
				<div class="row">

					<div class="col-lg-12 col-md-7">
						<div class="card">
							<div class="">
								<h4 class="table-title col-md-10">Add Brand</h4>
							</div>
							<div class="content">
								<form:errors path="brand1.*" />
								<form:form method="POST" action="/brandinsert">
									<div class="row">

										<div class="col-md-12">
											<div class="form-group">
												<form:label path="brandName" class="form-group">Brand Name:</form:label>

												<form:input path="brandName"
													class="form-control border-input" type="text"
													placeholder="Enter the Brand Name" required="required" />
											</div>
										</div>
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-info btn-fill btn-wd">Save</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<%@include file="/WEB-INF/jsp/footer1.jsp"%>
	</div>
</div>
<%@include file="/WEB-INF/jsp/footer2.jsp"%>
