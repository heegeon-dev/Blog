<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Fashion <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<c:url value='/menu/clothing?CATEGORY_SEQ=4'/>">Clothing</a></li>
          <li><a href="<c:url value='/menu/shoes?CATEGORY_SEQ=7'/>">Shoes</a></li>
          <li><a href="<c:url value='/menu/bag?CATEGORY_SEQ=3'/>">Bag</a></li>
          <li><a href="<c:url value='/menu/acc?CATEGORY_SEQ=2'/>">Accessory</a></li>
          <li><a href="<c:url value='/menu/etc?CATEGORY_SEQ=5'/>">ETC</a></li>
        </ul>
      </li>
        <li><a href="<c:url value='/menu/news?CATEGORY_SEQ=6'/>">News</a></li>
        <li><a href="<c:url value='/menu/aboutMe?CATEGORY_SEQ=1'/>">About me</a></li>
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
                	
                <form class="form-horizontal" action="<%=host%>/LoginStatus2"  method="get">
                  <input id="sp_uname" class="form-control login" type="text" name="userId" placeholder="Username.." />
                  <input id="sp_pass" class="form-control login" type="password" name="password" placeholder="Password.."/>
                  <input class="btn btn-primary" type="submit" name="submit" value="login" /> 
                </form>
                  <%} %>
            </li>
    	  </ul>
   	 </div>
  	</div>
	</nav>	