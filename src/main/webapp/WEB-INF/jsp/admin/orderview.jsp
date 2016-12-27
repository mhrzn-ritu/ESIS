<%--
  Created by IntelliJ IDEA.
  User: Inspiron
  Date: 9/9/2016
  Time: 12:03 PM
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
                    <a class="navbar-brand" href="#">Order Notification</a>
                </div>
            </div>
        </nav>

        <div class="content">
            <%--header part end--%>

            <div class="">
                <c:forEach var="orders" items="${allorder}">
                    <c:forEach var="orderDS" items="${allorderD}">
                        <c:choose>
                            <c:when test="${orders.orderDetailsId.orderDetailsId == orderDS.orderDetailsId}">
                                <table class="table table-responsive table-striped" id="flip">
                                        <%--table headings--%>
                                    <th class="col-md-9">Order: ${orders.orderDetailsId.orderDetailsId}</th>
                                    <th>Status</th>

                                    <tr>
                                            <%--order date--%>
                                        <td>
                                            Date : ${ orderDS.orderDate}
                                        </td>

                                            <%--status info--%>
                                        <td>
                                            <c:choose>
                                                <c:when test="${orders.syncStatus}">
                                                    <span class="label label-success">Delivered</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="label label-info">Pending</span>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>

                                    <table class="table" id="panel">
                                        <th class="col-md-9 danger">Product</th>
                                        <th class="danger">Quantity</th>
                                        <c:forEach var="allcart" items="${allcart}">
                                            <c:choose>
                                                <c:when test="${allcart.orderId.orderId == orders.orderId}">
                                                    <tr>
                                                        <td>
                                                                ${allcart.productId.productName}
                                                        </td>

                                                        <td >
                                                                ${allcart.quantity}
                                                        </td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                        </c:forEach>
                                    </table>

                                    <table class="table table-responsive table-striped" id="flip">
                                        <th><a href="/admin/odetails/${orders.orderDetailsId.customerId}">More Details
                                        <%--${orders.orderDetailsId.customerId}--%>
                                        </a></th>
                                    </table>

                                </table><br><br>

                            </c:when>
                        </c:choose>
                    </c:forEach>
                </c:forEach>
            </div>

        </div>

    </div>

    <%@include file="/WEB-INF/jsp/footer1.jsp"%>
</div>

<%@include file="/WEB-INF/jsp/footer2.jsp"%>