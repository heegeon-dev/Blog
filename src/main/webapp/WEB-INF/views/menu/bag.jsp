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
          <li><a href="<c:url value='/menu/clothing'/>">Clothing</a></li>
          <li><a href="<c:url value='/menu/shoes'/>">Shoes</a></li>
          <li class="active"><a href="#">Bag</a></li>
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
	
 <!-- Blog entries -->
    <div class="w3-col l8 s12">
    
 <!-- Blog entry -->
   
<form class="form-horizontal" role="form" method="post" action="index.php">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Subject</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="name" name="name" value="">
		</div>
	</div>

	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">Contents</label>
		<div class="col-sm-9">
			<textarea class="form-control" rows="10" name="message"></textarea>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<! Will be used to display an alert to the user>
		</div>
	</div>
	<ul class="pager">
    <li><a href="#">Previous</a></li>
    <li><a href="#">Next</a></li>
  </ul>
</form>      
 
      
    <!-- END BLOG ENTRIES -->
    </div>

    <!-- About/Information menu -->
    <div class="w3-col l4">

 <!-- Subscribe -->
      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Subscribe</h4>
        </div>
        <div class="w3-container w3-white">
          <p>Enter your e-mail below and get notified on the latest blog posts.</p>
          <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p>
          <p><button type="button" onclick="document.getElementById('subscribe').style.display='block'" class="w3-button w3-block w3-red">Subscribe</button></p>
        </div>
      </div> 
     <hr>


      <!-- Posts -->
      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Popular Posts</h4>
        </div>
        <ul class="w3-ul w3-hoverable w3-white">
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/avatar_smoke.jpg'/>" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Denim</span>
            <br>
            <span>Sed mattis nunc</span>
          </li>
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/bandmember.jpg'/>" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Sweaters</span>
            <br>
            <span>Praes tinci sed</span>
          </li>
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/workshop.jpg'/>" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Workshop</span>
            <br>
            <span>Ultricies congue</span>
          </li>
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/avatar_smoke.jpg'/>" alt="Image" class="w3-left w3-margin-right w3-sepia" style="width:50px">
            <span class="w3-large">Trends</span>
            <br>
            <span>Lorem ipsum dipsum</span>
          </li>
        </ul>
      </div>
      <hr>

      <!-- Advertising -->
      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Advertise</h4>
        </div>
        <div class="w3-container w3-white">
          <div class="w3-container w3-display-container w3-light-grey w3-section" style="height:200px">
            <span class="w3-display-middle">Your AD Here</span>
          </div>
        </div> 
      </div>
      <hr>

      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Follow Me</h4>
        </div>
        <div class="w3-container w3-xlarge w3-padding">
          <i class="fa fa-facebook-official w3-hover-opacity"></i>
          <i class="fa fa-instagram w3-hover-opacity"></i>
          <i class="fa fa-snapchat w3-hover-opacity"></i>
          <i class="fa fa-pinterest-p w3-hover-opacity"></i>
          <i class="fa fa-twitter w3-hover-opacity"></i>
          <i class="fa fa-linkedin w3-hover-opacity"></i>
        </div>
      </div>
      <hr>

    <!-- END About/Intro Menu -->
    </div>

  <!-- END GRID -->
  </div>

<!-- END w3-content -->
</div>

<!-- Subscribe Modal -->
<div id="subscribe" class="w3-modal w3-animate-opacity">
  <div class="w3-modal-content" style="padding:32px">
    <div class="w3-container w3-white">
      <i onclick="document.getElementById('subscribe').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
      <h2 class="w3-wide">SUBSCRIBE</h2>
      <p>Join my mailing list to receive updates on the latest blog posts and other things.</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
      <button type="button" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('subscribe').style.display='none'">Subscribe</button>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-container w3-dark-grey" style="padding:32px">
  <a href="#" class="w3-button w3-black w3-padding-large w3-margin-bottom"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>



<script>
// Toggle between hiding and showing blog replies/comments
document.getElementById("myBtn").click();
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

function likeFunction(x) {
    x.style.fontWeight = "bold";
    x.innerHTML = "â Liked";
}
</script>

</body>
</html>