<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>
<link rel="stylesheet" type="text/css" href="/Tech4All/Stylesheet/checkout.css" />
</head>
<body>
<jsp:include page="Header.jsp"/>
	<div class="back"></div>

	<div class="backgroundimg">
		<img src="checkoutimg.png">
	</div>	

	<div class="summary">

		<h3>Order Summary</h3>

		<c:forEach items="${cartItems}" var="item"> 

            <div class="cart-item">
            	<img src="https://via.placeholder.com/150" alt="Best Seller Product 1">
                <p>Product:${item.productName}<br>Price: $${item.price}<br>Qty: ${item.quantity}<br>Total: ${eachTotal}</p>

            </div>

         </c:forEach>

       <h4> Grand Total: ${total}</h4>

	</div>

	<form class="additional_info" action="/Tech4All/OrderServlet" method="post">

		<div class = "ship_address">

			<h3>Shipping Information</h3>

			<div class="ship_label">
				<label for="ship_address">Shipping Address(In Detail)</label>

				<input type="text" id="ship_address" name="ship_address" required placeholder="Type Here.">
			</div>

			

			<h3>Select a Payment Method</h3>
			<div class="ship_options">
				<input type="radio" id="payMethod" name="payMethod" value="COD"><label for="cod">Cash on Delivery(COD)</label>
				<input type="radio" id="payMethod" name="payMethod" value="PhonePay" ><label for="phonepay">PhonePay</label>
				<input type="radio" id="payMethod" name="payMethod" value="Card"><label for="card">Credit/Debit Card</label>
			</div>

			
		</div>

		<button type = "submit">Place Order</button>

	</div>

	</form>
	<jsp:include page="Footer.jsp"/>
</body>
</html>