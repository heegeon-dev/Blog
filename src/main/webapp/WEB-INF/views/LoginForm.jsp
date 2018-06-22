<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form class="form-horizontal" role="form" action="<c:url value ='/j_spring_security_check'/>" method="POST">
	<h2>
		<span style="color: black">로그인</span>
	</h2>
	<c:if test="${paramMap.fail eq true}">
		<span style="color:red">아이디와 비밀번호를 확인하세요.</span>
	</c:if>
	<div class="form-group">
		<label for="firstName" class="col-sm-2 control-label">ID</label>
		<div class="col-sm-9">
			<input class="form-control" placeholder="아이디를 입력해주세요" name="ID"
				type="text" />
		</div>
	</div>
	<div class="form-group">
		<label for="text" class="col-sm-2 control-label">PW</label>
		<div class="col-sm-9">
			<input class="form-control" placeholder="패스워드를 입력해주세요"
				name="password" type="password" />
		</div>
	</div>
	<!-- /.form-group -->
	<div class="form-group">
		<div class="col-sm-9 col-sm-offset-2">
			<button type="submit" class="w3-button w3-black">로그인</button>
		</div>
	</div>
</form>
<!-- /form -->