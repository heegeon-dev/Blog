<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<c:url value='/resources/css/w3.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/Oswald.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/Open Sans.css' />">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
body {font-family: "Open Sans"}
</style>
<body class="w3-light-grey">

<!-- Navigation bar with social media icons -->
<div class="w3-bar w3-black w3-hide-small">
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-facebook-official"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-instagram"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-snapchat"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-flickr"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-twitter"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-linkedin"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-search"></i></a>
</div>
  
<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1600px">

  <!-- Header -->
  <header class="w3-container w3-center w3-padding-48 w3-white">
    <h1 class="w3-xxxlarge"><b>FASHION BLOGLIFE</b></h1>
    <h6>Welcome to the blog of <span class="w3-tag">Jane's world</span></h6>
    
  </header>

  <!-- Grid -->
  <div class="w3-row w3-padding w3-border">
  
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="<c:url value='/home'/>">Home</a></li>
        <li class="dropdown active"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Fashion <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="active"><a href="#">Clothing</a></li>
          <li><a href="<c:url value='/menu/shoes'/>">Shoes</a></li>
          <li><a href="<c:url value='/menu/bag'/>">Bag</a></li>
          <li ><a href="<c:url value='/menu/acc'/>">Accessory</a></li>
          <li><a href="<c:url value='/menu/etc'/>">ETC</a></li>
        </ul>
      </li>
        <li><a href="<c:url value='/menu/news'/>">News</a></li>
        <li><a href="<c:url value='/menu/aboutMe'/>">About me</a></li>
        </ul>
      <ul class="nav navbar-nav navbar-right">
         <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                <div class="dropdown-menu" style="padding: 15px; padding-bottom: 10px;">
                	<% String userId=(String)session.getAttribute("userId"); %>
                <%String host= request.getContextPath(); %>
                	<%if(userId!=null){%>
                	  <form class="form-horizontal" action="<%=host%>/Logout" 
                	  	method="get">
                		<%= userId %>로 로그인됨.<br>
                		<input type="submit" onclick="<script>  </script>" value="로그아웃">
                		  </form>
                	<%}else{ %>
                	
                <form class="form-horizontal" action="<%=host%>/LoginStatus2"  method="get" >
                  <input id="sp_uname" class="form-control login" type="text" name="userId" placeholder="Username.." />
                  <input id="sp_pass" class="form-control login" type="password" name="password" placeholder="Password.."/>
                  <input class="btn btn-primary" type="submit" name="submit" value="login" /> 
                </form>
                  <%} %>  
                </div>
            </li>
    	  </ul>
   	 </div>
  	</div>
	</nav>
	<form class="form-horizontal" role="form" method="post" action="index.php">
		<label for="message" class="col-sm-2 control-label">Title</label>
		<div class="col-sm-9" style = "margin:2px">
			<textarea class="form-control" rows="1" name="message" placeholder = "제목을 입력하세요."></textarea>
		</div>
		<label for="message" class="col-sm-2 control-label">Content</label>
		<div class="col-sm-9" style = "margin:2px">
			<textarea class="form-control" rows="15" name="message" placeholder = "내용을 입력하세요."></textarea>
		</div>
		<div class = "col-sm-1"></div>
		<button type="button" class="col-sm-1 control-button" style ="font-size:5px; padding:5px; font-weight:bold; margin:2px; margin-right:0">Load</button>
		<div class="col-sm-9" style = "margin:2px">
			<textarea class="form-control" rows="1" name="message" placeholder = "파일을 불러오세요."></textarea>
		</div>
		<div class ="col-sm-11" style = "margin:2px"> 
			<p class="w3-right" style = "margin-left: 16px"><button class="w3-button w3-black" ><b>DELETE</b></button></p>  
			<p class="w3-right" style = "margin-left: 16px"><button class="w3-button w3-black" ><b>UPDATE</b></button></p>
		</div>  

	</form>
	
	</div>
	</div>
</body>
</html>