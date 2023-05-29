<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/Login.css"/>
<title>로그인</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
</head>
<body>
<div class="container">
    <div class="input-form-backgroud row">
    <img class="logo"src="resources/lego_logo.png" width="350" height="150"/>
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3" id="login_text">로그인</h4>
        <form class="validation-form" novalidate>
          <div class="row" id="id_text">
            <div class="col-md-4 mb-2">
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
          </div>
          
		<div class="row" id="pw_text">
          <div class="col-md-4 mb-2">
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
          </div>
		</div>
		
		<div class="search_container">
		<p><a class="link-offset-2 link-underline link-underline-opacity-0" href="#" id="id_link_search">아이디 찾기</a></p>
		<p><a class="link-offset-2 link-underline link-underline-opacity-0" href="#" id="pw_link_search">비밀번호 찾기</a></p>
		</div>


          <div class="col-md-4 mb-2"></div>
          <button class="btn btn-primary btn-lg" id="login_btn" type="submit">로그인</button>
          <p><a class="link-offset-2 link-underline link-underline-opacity-0" href="#" id="online_account">계정이 없으신가요?</a></p>
          <p><a class="link-offset-2 link-underline link-underline-opacity-0" href="#" id="join">회원가입</a></p>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
