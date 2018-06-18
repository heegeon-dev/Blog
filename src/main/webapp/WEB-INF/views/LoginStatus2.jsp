<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.blog.MemberService" %>
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
                       Login Status
                   </div>
                   <div class="panel-body">
                   <!-- /.row (nested) -->
                   <fieldset>
                   <% MemberService ms= new MemberService(); %>
                       <div class="form-group">
                       <% String userId=request.getParameter("userId"); %>
                           Member ID : <%= userId %>
                       </div>
                       <div class="form-group">
                       <% String password=request.getParameter("password"); %>
                           Password : <%= password %>
                       </div>
                       <div class="form-group">
                       
                       <% Boolean validity=false;
                       	  if(ms.getRightAccount(userId, password)){
                       		  validity=true;%>
                           Validity : <%= validity %>
                       <% session.setAttribute("userId", userId);
                          session.setAttribute("password", password); 
                          session.setMaxInactiveInterval(60*60*24);  %>
                           <br>로그인성공.
                       	 <% } else{
                       		  validity=false;%>
                       		  Validity : <%= validity %>
                       		  <br>로그인실패.
                      <script type="text/javascript">alert("로그인실패");</script>
                       	<% }  %>
                       </div>
                       <div>
                      <% String host= request.getContextPath(); %>
                 <form class="form-horizontal" action="<%=host%>/home"  method="get">
                  <input class="btn btn-primary" type="submit" name="submit" value="홈으로" />
                  </form> 
                       
                   </fieldset>
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