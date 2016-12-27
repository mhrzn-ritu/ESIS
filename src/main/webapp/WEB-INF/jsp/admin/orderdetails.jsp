<%--
  Created by IntelliJ IDEA.
  User: Inspiron
  Date: 9/9/2016
  Time: 7:22 PM
  To change this template use File | Settings | File Templates.
--%>


<%@include file="/WEB-INF/jsp/header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="wrapper">
    <%@include file="/WEB-INF/jsp/admin/sidebar.jsp"%>

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
                        <a class="navbar-brand" href="#">Order Details</a>
                    </div>
                </div>
            </nav>

            <div class="content">

                <%--header part end--%>

                <div class="col-md-12">

                    <div class="col-md-6">
                        <table class="table table-responsive table-striped" id="flip">
                             <th>
                                Customer Information
                             </th>

                             <table class="table table-responsive table-striped" id="flip">

                                 <p>Name: ${customerinfo.firstName} ${customerinfo.lastName}</p>
                                 <p>Address: ${customer.addressId.street}, ${customer.addressId.country}</p>
                                 <p>Email: ${customerinfo.email}</p>
                                 <p>Contact: ${customerinfo.contact}</p>


                            </table>
                        </table>
                    </div>
                    <%--closing col-md-6--%>

                    <div class="col-md-6">

                        <table class="table table-responsive table-striped" id="flip">
                            <th>
                                Order Information
                            </th>
                            <table class="table table-responsive table-striped" id="flip">

                                <c:forEach var="orderD" items="${allorderdetails}">
                                    <c:forEach var="orders" items="${allorder}">
                                        <c:choose>
                                            <c:when test="${orders.orderDetailsId.orderDetailsId == orderD.orderDetailsId}">
                                                <table class="table table-responsive table-striped" id="flip">
                                                        <%--table headings--%>
                                                    <th class="col-md-9">Order: ${orders.orderDetailsId.orderDetailsId}</th>
                                                    <th>Status</th>

                                                    <tr>
                                                            <%--order date--%>
                                                        <td>
                                                            Date :${orderD.orderDate}
                                                        </td>

                                                            <%--status info--%>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${orders.orderDetailsId.orderStatus}">
                                                                    <span class="label label-success">Delivered</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="label label-info">Pending</span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                    </tr>
                                                </table>


                                                <table class="table" id="panel">
                                                    <th class="col-md-6 danger">Product</th>
                                                    <th class="danger">Quantity</th>
                                                    <th class="danger">Price</th>
                                                    <c:forEach var="ct" items="${allcart}">
                                                        <c:choose>
                                                            <c:when test="${orders.orderId==ct.orderId.orderId}">
                                                                <tr>
                                                                    <td>
                                                                            <a href="/product/productviewdetails/${ct.productId.productId}">
                                                                            ${ct.productId.productName} </a>
                                                                    </td>

                                                                    <td >
                                                                            ${ct.quantity}
                                                                    </td>

                                                                    <td>
                                                                        ${ct.rate}
                                                                    </td>
                                                                </tr>

                                                            </c:when>
                                                        </c:choose>
                                                    </c:forEach>

                                                </table>

                                                <table class="table table-responsive table-striped" id="flip">
                                                    <th>
                                                        Sub Total : ${orderD.totalAmount}
                                                    </th>

                                                    <table class="table table-responsive table-striped" id="flip">
                                                        <p>Shipping Charge :  + ${orderD.shippingAmount}</p>
                                                        <p>Discount :  - ${orderD.discount}</p>
                                                        <%--<div class="line"></div><br>--%>
                                                        <th class="col-md-9">
                                                            Total:  ${orderD.grandtotal}
                                                        </th>
                                                        <th>
                                                            <div class="list-inline">
                                                                <a href="/admin/delivered/${orders.orderDetailsId.orderDetailsId}">
                                                                    <span class="btn btn-sm label label-info">Deliver</span>
                                                                </a>
                                                                <a>
                                                                    <span class="btn btn-sm label label-info">Generate Bill</span>
                                                                </a>
                                                            </div>
                                                        </th>
                                                    </table>
                                                </table>
                                            </table><br><br>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </c:forEach>

                            </table>
                        </table>
                    </div>

                </div>


            </div>
        </div>


    <%@include file="/WEB-INF/jsp/footer1.jsp"%>
</div>

<%@include file="/WEB-INF/jsp/footer2.jsp"%>