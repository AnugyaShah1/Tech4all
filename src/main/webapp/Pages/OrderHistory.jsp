<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="util.StringUtils" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Order History</title>
<link rel="stylesheet" type="text/css" href="/Tech4All/Stylesheet/userprofile.css" />
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<h3>My Order History</h3>
    <div class="order-history">
    
    	<c:if test="${empty orders}">
					<p>No orders.</p>
				</c:if>
        <c:forEach items="${orders}" var="order">
            <div class="order-card">
                <h2>Order ID: ${order.orderId}</h2>
                <p>Date: ${order.date}</p>
                <p>Ship Address: ${order.address}</p>
                <p>Total: ${order.total}</p>
                <p>Payment Method: ${order.payment}</p>
                <form action="${pageContext.request.contextPath}/OrderDetailsServlet" method="GET">
                    <input type="hidden" name="orderId" value="${order.orderId}"/>
                    <button type="submit">View Details</button>
                </form>
            </div>
        </c:forEach>
    </div>
<jsp:include page="Footer.jsp"/>
</body>

</html>