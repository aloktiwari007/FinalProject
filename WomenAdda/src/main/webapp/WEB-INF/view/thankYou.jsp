<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false" %>
<div id="main">
<div id="header">  <%@include file="header.jsp" %></div>
<br>
<br>
<br><br>

<div id="body">
<div class="container">
<sf:form modelAttribute="address" method="post">
<h1>Thankyou for Shoping </h1>

Hello ${uaddress.cname}
<h3>Your Order is generated and Order No-O110005</h3>

						<table class="table table-striped">
						<thead>
							<tr>

								<th>Name</th>
								<th>Brand</th>
								<th>Description</th>
								<th>Quantity</th>
								<th>Amount</th>
								
							</tr>
						</thead>

						<tbody>


							<c:forEach items="${sessionScope.cart.listItem}" var="product">
								<c:set var="sum" value="${sum+ product.p.price* product.quantity}"></c:set>
								<tr>
									
									<td>${product.p.name}</td>
									<td>${product.p.brand}</td>
									<td>${product.p.description}</td>
									<td>${product.quantity}</td>
									<td>${product.p.price* product.quantity}</td>
									
									
								</tr>
							</c:forEach>
							<tr>
							<td></td>
							<td></td>
							<td></td>
							<td>
							Total Amount:
							</td>
							<td> ${sum}</td>
							
							</tr>
<!-- <tr><td></td></tr> -->
							<%-- <tr>
								<td>${product.pname}</td>
								<td>${product.pbrand}</td>
								<td>${product.pdescription}</td>
								<td>${product.pprice}</td>
								<td>1</td>
								<td>${product.pprice*1}</td>
							</tr> --%>

						</tbody>

					</table>
					
				
					<input name="_eventId_submit" class="btn btn-info" type="submit" value="Home" /><br />
				
				</sf:form>
</div>

	
</div>
<div id="footer">
<%@include file="footer.jsp"%>
</div>


</div>


