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

		<%----------------------------------------mathi ko navigation end------------------------------------------%>

		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<%---------------------------------------------edit garne main area/panel-------------------------------------------%>
					<div class="col-lg-12 col-md-7">
						<div class="card">
							<div class="">
								<h4 class="table-title col-md-10">Edit Brand</h4>
								<%--panel vitra aaune main heading--%>
							</div>
							<div class="content">
								<form:errors path="brand1.*" />
								<form:form method="POST" action="/brandedit">

									<%------------------------------------------input fields and name ko lagi-------------------------------------------%>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<form:label path="brandName" class="form-group">Brand Name:</form:label>
												<form:input path="brandName" value="${brand.brandName}"
													type="text" class="form-control border-input"
													placeholder="Enter the Brand Name" required="required" />
												<form:hidden path="brandId" value="${brand.brandId}" />
											</div>
										</div>
									</div>
									<%------------------------------------------button ko lagi if needed-------------------------------------------%>
									<div class="text-center">
										<button type="submit" class="btn btn-info btn-fill btn-wd">Update</button>
									</div>
								</form:form>
								<%------------------------------------------form ko end point-------------------------------------------%>
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
