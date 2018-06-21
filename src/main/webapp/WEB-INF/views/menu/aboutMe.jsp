<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<div class="w3-col l8 s12">
    	<p class="w3-left" style = "margin-left: 16px"><a href="<c:url value = '/menu/aboutMe_insert'/>"><button class="w3-button w3-black" ><b>POST</b></button></a></p>
 	</div>
    <!-- About me Main -->
    <div class="w3-col l8 s12">
    <c:forEach items="${resultList}" var="resultData" varStatus="loop">
    <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>${resultData.TITLE}</h3>
          <span class="w3-opacity">${resultData.UPLOAD_DATE}</span> 
          </div>
        <div class="w3-justify">
          <a href = "<c:url value = '/menu/aboutMe_edit?BOARD_SEQ=${resultData.BOARD_SEQ}'/>"><img src="<c:url value='/resources/images/${resultData.IMG_NAME}'/>" alt="Runway" style="width:100%" class="w3-padding-16"></a>
          <p>${resultData.CONTENTS}</p>
      </div>
      </div>
      <hr>
      </c:forEach>
<form class="form-horizontal" role="form" method="post" action="index.php">
	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">Contents</label>
		<div class="col-sm-9">
			<textarea class="form-control" rows="5" name="message" placeholder = "주제와 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
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
      
      
      
   <!-- End About me Main -->
    </div>