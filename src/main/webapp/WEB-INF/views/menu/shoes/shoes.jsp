<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="principalName" value="${pageContext.request.userPrincipal.name}"/>

	<div class="w3-col l8 s12">
    	<p class="w3-left" style = "margin-left: 16px"><a href="<c:url value = '/menu/shoes/insert'/>"><button class="w3-button w3-black" ><b>POST</b></button></a></p>
 	</div>
    <!-- About me Main -->
    <div class="w3-col l8 s12">
    <c:set var = "count" value = "0" />
    <c:forEach items="${resultList}" var="resultData" varStatus="loop">
    <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>${resultData.TITLE}</h3>
          <span class="w3-opacity">${resultData.UPLOAD_DATE}</span> 
          </div>
        <div class="w3-justify">
          <a href = "<c:url value = '/menu/shoes/edit?BOARD_SEQ=${resultData.BOARD_SEQ}'/>"><img src="<c:url value='/resources/images/${resultData.IMG_NAME}'/>" alt="Runway" style="width:100%" class="w3-padding-16"></a>
          <p>${resultData.CONTENTS}</p>
          <c:set var = "count" value = "${count+1}" />
          <p class="w3-left"><button class="w3-button w3-white w3-border" onclick="likeFunction(this)"><b><i class="fa fa-thumbs-up"></i> Like</b></button></p>
          <p class="w3-right"><button class="w3-button w3-black" id="myBtn" onclick="myFunction('demo${count}')"><b>Comments</b></button></p>
          <p class="w3-clear"></p>
          
          
          <div id="demo${count}" style="display:none">
            
            <div class="w3-row w3-margin-bottom">
<!--               <div class="w3-col l10 m9"> -->
          	<c:forEach items= "${commentsList}" var = "commentsData" varStatus="loop1">
	            <c:forEach items="${commentsData}" var = "inhog" varStatus="loop2">
              
              <c:if test = "${inhog.BOARD_SEQ eq resultData.BOARD_SEQ}">
              	<hr style = "margin-top: 0; margin-bottom: 0">
                <h4>${inhog.ID}  <a href = "<c:url value ='/menu/shoes/delete_comments_register?BOARD_SEQ=${resultData.BOARD_SEQ}&CATEGORY_SEQ=${resultData.CATEGORY_SEQ}&COMMENT_SEQ=${inhog.COMMENT_SEQ }'/>"><button class="w3-button w3-right w3-tiny w3-padding-small w3-white w3-border">x</button></a></h4>
                <p>${inhog.CONTENTS}</p>
              </c:if>
            </c:forEach>
            </c:forEach>

            </div>
            </div>
      </div>
      </div>
      <hr>
      
<form class="form-horizontal" role="form" method="post" action="<c:url value ='/menu/shoes/insert_comments_register?BOARD_SEQ=${resultData.BOARD_SEQ}&CATEGORY_SEQ=${resultData.CATEGORY_SEQ}&ID=${principalName}'/>">
	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">Contents</label>
		<div class="col-sm-9">
			<textarea class="form-control" rows="5" name="CONTENTS" placeholder = "주제와 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
<!-- 			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary"> -->
				<button class="w3-button w3-black" type ="submit">Send</button>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<!--   Will be used to display an alert to the user> -->
		</div>
	</div>
	
</form>

</c:forEach>
      
      
      
   <!-- End About me Main -->
    </div>