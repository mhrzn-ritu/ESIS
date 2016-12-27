<%----------------------------------------------starting---------------------------------------------------%>
<%@include file="/WEB-INF/jsp/header.jsp"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="wrapper">
<%@include file="/WEB-INF/jsp/supplier/suppliersider.jsp"%>
        <%--------------------------------------------------sidebar end-----------------------------------------------%>

    <div class="main-panel">

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="suppilerview.jsp">Suppiler Information</a>
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
                                <h4 class="table-title col-md-10">Add Supplier</h4>
                            </div>
                            <div class="content">

                                <form:errors path="supplier1.*"/>
                                <form:form method="POST" action="/supplierinsert" >

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="firstName" class="form-group">First Name</form:label>    
                                                <form:input path="firstName" class="form-control border-input" type="text"  
                                                            placeholder="Enter First Name" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="lastName" class="form-group">Last Name</form:label>    
                                                <form:input path="lastName" class="form-control border-input" type="text"  
                                                            placeholder="Enter Last Name" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>        
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="email" class="form-group">Email</form:label>    
                                                <form:input path="email" class="form-control border-input" type="email"  
                                                            placeholder="Enter Email" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>        

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="contact" class="form-group">Contact</form:label>    
                                                <form:input path="contact" class="form-control border-input" type="text"  
                                                            placeholder="Enter Contact" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="${addressinfo.country}" class="form-group">Country</form:label>    
                                                <form:input path="${addressinfo.country}" name = "country" class="form-control border-input" type="text"  
                                                             placeholder="Enter Country" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="${addressinfo.zone}" class="form-group">Zone</form:label>    
                                                <form:input path="${addressinfo.zone}" name = "zone" class="form-control border-input" type="text"  
                                                             placeholder="Enter Zone" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="${addressinfo.district}" class="form-group">District</form:label>    
                                                <form:input path="${addressinfo.district}" name = "district" class="form-control border-input" type="text"  
                                                             placeholder="Enter District" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="${addressinfo.city}" class="form-group">City</form:label>    
                                                <form:input path="${addressinfo.city}" name = "city" class="form-control border-input" type="text"  
                                                             placeholder="Enter District" required ="required" /> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <form:label path="${addressinfo.street}" class="form-group">Street</form:label>    
                                                <form:input path="${addressinfo.street}" name = "street" class="form-control border-input" type="text"  
                                                             placeholder="Enter Street" required ="required" /> 
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

