<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="util.StringUtils" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/Tech4All/Stylesheet/data_tables.css" />
</head>
<body style="background-color:#D3D3D3">
<jsp:include page="Header.jsp"/>
	<h2>Order Details</h2>
		<div class="ordertable">
        <table class="table">
      		<thead><tr>
               <th>S.N.</th>
               <th>Product</th>
               <th>Price</th>
               <th>Quantity</th>		
         	</tr></thead>
       		<tbody>
       			<c:if test="${empty orderdetails}">
					<p>No products found.</p>
				</c:if>
       			<c:forEach var="detail" items="${orderdetails}">
       				<tr>
       					<td>${detail.detailId}</td>
       					<td>${detail.prod_name}</td>
       					<td>${detail.price}</td>
       					<td>${detail.quantity}</td>
       					
       				</tr>       					
       			</c:forEach>	           		
       		</tbody>
       </table>	
       </div>
       <jsp:include page="Footer.jsp"/>
</body>
</html>