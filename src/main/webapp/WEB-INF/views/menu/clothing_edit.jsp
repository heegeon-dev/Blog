<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<form class="form-horizontal" role="form" method="post" action="index.php">
		<label for="message" class="col-sm-2 control-label">Title</label>
		<div class="col-sm-9" style = "margin:2px">
			<textarea class="form-control" rows="1" name="message" placeholder = "제목을 입력하세요.">${resultMap.TITLE}</textarea>
		</div>
		<label for="message" class="col-sm-2 control-label">Content</label>
		<div class="col-sm-9" style = "margin:2px">
			<textarea class="form-control" rows="15" name="message" placeholder = "내용을 입력하세요.">${resultMap.CONTENTS}</textarea>
		</div>
		<div class = "col-sm-2"></div>
		<div class = "col-sm-10">
			<input type="file" name="file">
		</div>
		<div class ="col-sm-11" style = "margin:2px">
			<p class="w3-right" style = "margin-left: 16px"><button class="w3-button w3-black" type = "submit"><b>DELETE</b></button></p>  
			<p class="w3-right" style = "margin-left: 16px"><button class="w3-button w3-black" type = "submit"><b>UPDATE</b></button></p>
		</div> 
	</form>