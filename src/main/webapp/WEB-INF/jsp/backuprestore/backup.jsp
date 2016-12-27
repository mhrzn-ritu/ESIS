<%@include file="/WEB-INF/jsp/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/jsp/customerwebpage/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<body class="bodycolor">

<div class="signup-page ">
	<div class="container-fluid log-in">
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<div class="card card-nav-tabs">
				<div class="content">
					<div class="tab-content">
						<h2>Backup and Restore Data</h2>
						<form:form method="POST" enctype="multipart/form-data" action="/download">

							<div class="form-group has-reg">
								<form:label cssClass="control-label_new"  path="filename" >Enter the file name to save</form:label>
								<br><br><br>
								<form:input path="" name="username" type="text" class="form-control" placeholder="Enter file name" required="required"></form:input>
							</div>
							<br>
							<br>
							<div class="form-group text-center">
								<button type="submit" class="btn btn-info btn-fill btn-wd">Download</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>

<%@include file="/WEB-INF/jsp/customerwebpage/footer.jsp"%>