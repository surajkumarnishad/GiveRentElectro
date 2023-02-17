<%@page import="java.util.List"%>
<%@page import="jakarta.persistence.Query"%>
<%@page import="com.models.ProductDetails"%>
<%@page import="jakarta.persistence.EntityManager"%>
<%@page import="jakarta.persistence.Persistence"%>
<%@page import="jakarta.persistence.EntityManagerFactory"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1" autoFlush="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/all.css">
</head>
<body>

<%
HttpServletRequest req=request;
EntityManagerFactory emf= Persistence.createEntityManagerFactory("unit");
EntityManager em=emf.createEntityManager();
ProductDetails pd =new ProductDetails();
Query q= em.createQuery("from ProductDetails where pid=?1");
q.setParameter(1, req.getQueryString());
List<ProductDetails> data =q.getResultList();
%>

	<nav>
		<a href="#">Home </a> <i class="fa fa-chevron-right"></i> <a href="#"> Mobile </a>
	</nav>
	
		<%for(ProductDetails data0:data){ %>
	<main id="viewmain">
		<div>
			<section>
					<img src="images/products/<%=data0.getImages().getImg1()%>">
					<img src="images/products/<%=data0.getImages().getImg2()%>">
					<img src="images/products/<%=data0.getImages().getImg3()%>">
					<img src="images/products/<%=data0.getImages().getImg4()%>">
			</section>
			<hr>
			<div class="rowhead" style="background-color: lightgray;">
				<h3> <span>Product</span> Detail</h3>
			</div>
			<section>
				<h3><%=data0.getP_name()%></h3>
				<div id="description">
					<h4>Description:</h4>
					<%=data0.getP_description() %>
				</div>
				<div>
					<div>
						<h4>Features:</h4>
						<ul>
							<li>Capacity/Size : 13" to 15"</li>
							<li>Processor: <%=data0.getFeatures().getP_processor()%></li>
							<li>RAM: <%=data0.getFeatures().getRam()%></li>
							<li>Storage: <%=data0.getFeatures().getstorage()%> (As per availability)</li>
							<li>OS: <%=data0.getFeatures().getOs()%></li>
							<li>Brand: <%=data0.getFeatures().getBrand()%> (As per availability)</li>
						</ul>
					</div>
					<div>
						<h4>Safety & Usage:</h4>
						<ul>
							<li>Avoid touching the laptop with dirty/ oily hands</li>
							<li>Use a sturdy laptop bag/ case to keep it safe</li>
							<li>Keep your laptop locked to protect your data</li>
			
						</ul>
					</div>
				</div>
			</section>
		</div>
		<div>
			<h3>Order Summary</h3>
			<span>Choose your duration plan</span><br>
			<span><input type="radio" name="period" checked> 3 months</span>
			<span><input type="radio" name="period"> 6 months</span>
			<span><input type="radio" name="period"> 12 months</span>

			<div>
				<div class="viewprice">
					<i class="fa fa-indian-rupee-sign"></i><%=data0.getRent() %>/mo
					<p>Monthly Rent</p>
				</div>
				<div class="viewprice">
					<i class="fa fa-indian-rupee-sign"></i><%=data0.getDeposit() %>
					<p>Refundable Deposit</p>
				</div>
			</div>
			<p><i class="fa fa-shipping"></i> Delivery By: 30th Dec 22</p>
			<button><a href="#">Book Your Plan</a></button>
			<hr style="margin: 20px auto;">

		</div>
	</main>
<%}%>
</body>
</html>