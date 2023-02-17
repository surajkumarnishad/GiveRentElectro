<%@page import="java.util.List"%>
<%@page import="jakarta.persistence.Query"%>
<%@page import="com.models.ProductDetails"%>
<%@page import="jakarta.persistence.EntityManager"%>
<%@page import="jakarta.persistence.Persistence"%>
<%@page import="jakarta.persistence.EntityManagerFactory"%>
<%@page language="java" isELIgnored="false" session="true" contentType="text/html; charset=ISO-8859-1" autoFlush="true"%>
<html>
<head>
<title>Welcome Home</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

<link rel="stylesheet" type="text/css" href="css/all.css">
</head>
<body>
		<%
			
		EntityManagerFactory emf= Persistence.createEntityManagerFactory("unit");
		EntityManager em=emf.createEntityManager();
		ProductDetails pd =new ProductDetails();
		Query q= em.createQuery("from ProductDetails");
		List<ProductDetails> data =q.getResultList();
		

		%>
	
	<header>
		<section on>
			<section style="font-size:30px;"><b style="color:#eb5e28">RENT</b> <span style="font-style:italic;">Electro</span></section>
			<section style="padding:0 15px;"><span id="city">   Delhi</span> <i class="fa fa-chevron-down"></i>
				<ul>
					<li>Noida</li>
					<li>Gurugram</li>
					<li>Pune</li>
					<li>Banglore</li>

				</ul>

			</section>

		</section>
		<section style=""><input type="search" placeholder="Serch Content Here"></section>
		<section>
		
			<a href="#" >0 <i class="fa fa-heart"></i></a>
			<a href="#" >0 <i class="fa fa-cart-shopping"></i></a>
			<%if(session.getAttribute("logindata")!=null) {
				String str=(String)session.getAttribute("logindata");
				String myid[]=str.split("@");
			%>
			<span style="margin-left:10px;" id="profile"><%=myid[0]%></span>
			<a href="logout">Logout</a>
			<%}else{%>
			<a href="#" id="login">Login / Signup</a>
			<%}%>
		</section>
	</header>
	
	
	
	
	
<div id="loger">
	<div id="logmain">
		<div class="log" >
			<span>X</span>
			<h3>Login Here</h3>
			<hr style="margin: 5px auto;margin-bottom: 20px;">
			<form action="login" method="post" onsubmit="return formValidation()">
				<input type="email" name="email" required placeholder="your email id">
				<input type="password" name="pass" id="pass" required placeholder="password"><br>
				<input type="submit" name="" onclick="mylogin()" value="Login">
				<p>I have not account? <a href="#" style="color:#eb5e28;text-decoration: underline;"> Sign Up</a></p>
			</form>
			<hr style="margin: 5px auto;">
		</div>
		<div class="log" style="display: none;" >
			<span>X</span>
			<h3>Register Here</h3>
			<hr style="margin: 5px auto;">
			<form action="register" method="post" enctype="multipart/form-data">
				<table  align="center">
					<tr>
						<td><label>Full Name:</label><input type="text" name="name"></td>
						<td><label>Father Name:</label><input type="text" name="fname"></td>
					</tr>
					<tr> 
						<td><label>Date of Birth:</label><input type="date" name="dob"></td>
						<td><label>Email-ID:</label><input type="email" name="email"></td>
					</tr>
					<tr>
						<td><label>Mobile Number:</label><input type="tel" name="mobile"></td>
						<td><label>Password:</label><input type="password" name="pass"></td>
					</tr>
					<tr>
						<td><label>ID Proof:</label><input type="file" name="id"></td>
						<td><label>Photo:</label><input type="file" name="photo"></td>
					</tr>
				</table>
				<input type="submit" name="" value="Register">
				<p>I have already account? <a href="#" style="color:#eb5e28;text-decoration: underline;"> Login</a></p>
			</form>
			<hr style="margin: 5px auto;">
		</div>
	</div>
</div>
	<!-- --------------------Header End ------------------ -->

	<!-- -----------slider start ---------------------- -->
		<div class="myslider">
			<!-- <div class="navigate"></div>
			<div class="navigate"></div>
			<div>
				<div class="button"></div>
				<div class="button"></div>
				<div class="button"></div>
				<div class="button"></div>
				<div class="button"></div>
				<div class="next"></div>
			</div> -->
			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
			  <div class="carousel-indicators">
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="images/slider.jpg" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="images/slider.jpg"  alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="images/slider.jpg"  alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <!-- <span class="visually-hidden">Previous</span> -->
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <!-- <span class="visually-hidden">Next</span> -->
			  </button>
			</div>
		</div>
	<!-- -----------slider end ---------------------- -->

	<section id="content">
		<h2> Our <span style="text-decoration: underline; text-decoration-color: #eb5e28;">Category</span></h2>
		<div class="myrow">
			<div class="catcard">
				<img src="images/mobile.jpg">
				<p>Mobiles</p>
			</div>
			<div class="catcard">
				<img src="images/tab.jpg">
				<p>Tablets</p>
			</div>
			<div class="catcard">
				<img src="images/laptop.jpg">
				<p>Laptops</p>
			</div>
			<div class="catcard">
				<img src="images/desktop.jpg">
				<p>Desktops</p>
			</div>
		</div>
		
		<h2> Our <span style="text-decoration: underline; text-decoration-color: #eb5e28; ">Products</span></h2>
			<div class="rowhead">
				<h3> <span>Your Favourate</span> Laptops</h3>
				<a href="showmore.jsp">Show More</a>
			</div>
			<div class="myrow" style="background-color: rgba(64, 61,  57, .2); width: 95%;">
			<%for(ProductDetails data0:data){ %>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/products/<%=data0.getImages().getImg1()%>">
					<h4 style="overflow:hidden;height:20px"><%=data0.getP_name()%></h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i><%=data0.getRent()%>/month</span>
						</div>
						<a href="viewdetails.jsp?<%=data0.getPid()%>">View Detail</a>
					</div>
				</div>
				<%} %>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
			</div>
			<div class="rowhead">
				<h3> <span>Your Favourate</span> Desktops</h3>
				<a href="showmore.jsp">Show More</a>
			</div>
			<div class="myrow" style="background-color: rgba(64, 61, 57, .2); width: 95%;">
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
				<div class="procard">
					<span><i class="fa fa-heart"></i>  <i class="fa fa-cart-shopping"></i></span>
					<img src="images/laptop.jpg">
					<h4>HP Pavillion 4GB/500GB</h4>
					<div>
						<div>
							<p>Rent</p>
							<span><i class="fa fa-indian-rupee-sign"></i> 256/month</span>
						</div>
						<a href="#">View Detail</a>
					</div>
				</div>
			</div>
	</section>
	<footer>
		<div class="footercard">
            <section style="font-size:30px;"><b style="color:#eb5e28">RENT</b> <span style="font-style:italic;">Electro</span></section>
            <div style="margin:10px auto;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia accusamus quos labore ducimus repellendus numquam molestiae.</div>
            <div><i class="fa fa-location-dot"></i> Noida Sector 63, U.P</div>
            <div><i class="fa fa-phone"></i> +91 9315080925</div>
            <div><i class="fa fa-envelope"></i> surajkumarnishad1998@gmail.com</div>
        </div>
		<div class="footercard">
			<h3> <span>Quick</span> Links</h3>
			<p> <a href="#">Home</a> </p>
			<p> <a href="#">Mobile</a> </p>
			<p> <a href="#">Laptop</a> </p>
			<p> <a href="#">Tablet</a> </p>
			<p> <a href="#">Desktop</a> </p>
		</div>
		<div class="footercard">
			<h3> <span>Quick</span> Links</h3>
			<p> <a href="#">About us</a> </p>
			<p> <a href="#">Contact us</a> </p>
			<p> <a href="#">Help</a> </p> 
			<p> <a href="#">Support</a> </p>
		</div>
		<div class="footercard">
			<h3> <span>Our</span> Members</h3>
			<img src="images/hp.jpg">
			<img src="images/lenovo.png">
			<img src="images/sam.jpg">
			<img src="images/vivo.jpg">
		</div>
	</footer>
</body>
<script src="js/bootstrap.bundle.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.js"></script>
<script src="js/func.js"></script>

</html>