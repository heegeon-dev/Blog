<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	   <div id="wrapper">
       <!-- /.row -->
       <div class="row">
           <div class="col-lg-12">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       Form Elements 
                   </div>
                   <div class="panel-body">
                       <!-- /.row (nested) -->
                       <% String host= request.getContextPath(); %>
                   <form role="form" action="<%=host%>/LoginStatus.jsp" method="GET">
                       <fieldset>
                           <div class="form-group">
                               <input class="form-control" placeholder="member ID" name="email" type="text" autofocus="">
                           </div>
                           <div class="form-group">
                               <input class="form-control" placeholder="Password" name="password" type="password" value="">
                           </div>
                           <div class="checkbox">
                               <label>
                                   <input name="remember-me" type="checkbox" value="true" checked="">Remember Me
                               </label>
                           </div>
                           <!-- Change this to a button or input when using this as a form -->
                           <input type="submit" class="btn btn-lg btn-success btn-block" value="Login">
                       </fieldset>
                   </form>
                       <!-- /.row (nested) -->
                   </div>
                   <!-- /.panel-body -->
               </div>
               <!-- /.panel -->
           </div>
           <!-- /.col-lg-12 -->
       </div>
       <!-- /.row -->
    </div>
    <!-- /#wrapper -->
</body>
</html>