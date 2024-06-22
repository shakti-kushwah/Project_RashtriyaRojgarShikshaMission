<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="CSS/style.css" type="text/css" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Navbar</title>
		
		<style type="text/css">
			nav {
				height: 92px;
				font-size: larger;
				font-weight: bolder;
			}
		</style>
	</head>
	<body>
		<!--    Navbar    -->
	    <nav class="navbar navbar-expand-lg navbar-light bg-#FFFFFF">
		  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		    <div class="navbar-nav">
		      <a class="nav-link active" href="index.jsp">HOME <span class="sr-only">(current)</span></a>
		      <a class="nav-link" href="about-us.jsp">ABOUT US</a>
		      <a class="nav-link" href="contact.jsp">CONTACT US</a>
		    </div>
		  </div>
		  
		  <div>
			  <a class="navbar-brand" href="index.jsp" style="margin-right: 200px;">
			  	<img alt="logo" src="https://img1.wsimg.com/isteam/ip/35a3fbd0-4f25-4864-b761-513e5a75989a/rrsm%20baer2.png/:/rs=w:499,h:60,cg:true,m/cr=w:499,h:60/qt=q:95">
			  </a>
		  </div>  
		  
		  <div class="form-inline my-2 my-lg-0" id="navbarNavAltMarkup2">
		    <div class="navbar-nav">
		      <a class="nav-link" href="what-we-do.jsp">WHAT WE DO</a>
		      <a class="nav-link" href="Vacancy.jsp">VACANCY</a>
		    </div>
		  </div>
		</nav>
		<hr style="margin: 0px">
	</body>
</html>