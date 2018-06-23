<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<script>
   $(document).ready(function() {
      var re_id = /^[a-z0-9_-]{6,30}$/; // 아이디 검사식
      var re_pw = /^[a-z0-9_-]{8,20}$/; // 비밀번호 검사식
      var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
      var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식
      //아이디 입력 창
      $("#text").blur(function(e) {
         if (re_id.test($("#text").val()) != true && $("#text").val().length != 0 ) {
            alert("[ID 입력오류 : 6자 이상 영문과 숫자를 입력해주세요.]");
         }
      });
      //비밀번호 입력창
      $("#password").blur(function(e) {
         if (re_pw.test($("#password").val()) != true && $("#password").val().length != 0) {
            alert("[PW 입력오류 : 8~20자 이내 영문과 숫자를 입력해주세요.]");
         }
      });
      //비밀번호 확인 입력 창
      $("#password2").blur(function(e) {
         if ($("#password").val() != $("#password2").val()) {
            alert("[PW 입력오류 : 패스워드가 일치하지 않습니다. 재입력하세요.");
         }
      });
      //이메일 입력 창
      $("#email").blur(function(e) {
         if (re_mail.test($("#email").val()) != true && $("#email").val().length != 0) {
            alert("[이메일 입력오류 : ]");
         }
      });
   });
</script>

      <form class="form-horizontal" role="form" action = "<c:url value ='/signUp/insert'/>" method="POST">
         <h2>
             <span style="color:black">Sign Up</span>
         </h2>
         <div class="form-group">
            <label for="firstName" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-9">
               <input type="text" id="firstName" name = "NAME" class="form-control">
            </div>
         </div>
         <div class="form-group">
            <label for="text" class="col-sm-2 control-label">ID</label>
            <div class="col-sm-9">
               <input type="text" id="text" name = "ID" class="form-control" >
               <span class="help-block">아이디는 6자 이상의 영문과 숫자를 입력해 주세요.</span>
            </div>
         </div>
         <div class="form-group">
            <label for="password" class="col-sm-2 control-label">PW</label>
            <div class="col-sm-9">
               <input type="password" id="password" name = "PASSWORD" class="form-control" >
               <span class="help-block"> 8~20자 이내 영문과 숫자를 입력해 주세요.</span>
            </div>
         </div>
         <div class="form-group">
            <label for="password" class="col-sm-2 control-label">PW2</label>
            <div class="col-sm-9">
               <input type="password" id="password_check" name = "PASSWORD_CHECK" class="form-control">
            </div>
         </div>
         <div class="form-group">
            <label for="email" class="col-sm-2 control-label">E-mail</label>
            <div class="col-sm-9">
               <input type="email" id="email" name = "EMAIL" class="form-control" >
               <span class="help-block">이메일은 아이디 또는 비밀번호를 찾기 위해 꼭 필요한 정보이므로
                  정확하게 입력해주세요.</span>
            </div>
         </div>
         <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
               <div class="checkbox">
                  <label> <input type="checkbox" name = "EMAIL_CHECK" >이메일 알림 수신 동의여부 </label>
                  <span class="help-block"> 이메일 알림 수신을 동의하실 경우 이메일로 해당 글 게시 시 이메일을 보내드립니다.</span>
               </div>
            </div>
         </div>
         <!-- /.form-group -->
         <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
               <button type="submit" class="w3-button w3-black">Sign up</button>
            </div>
         </div>
      </form>
      <!-- /form -->