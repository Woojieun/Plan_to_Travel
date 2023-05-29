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
<link rel="stylesheet" href="resources/css/Join.css"/>
<title>회원가입</title>
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
        <h4 class="mb-3" id="login_text">회원가입</h4>
        <form class="validation-form" novalidate>
        
        <div id="write_id">
        <h5>아이디</h5>
        </div>
        
          <div class="row" id="id_text">
            <div class="col-md-12 mb-2">
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
            </div>
          </div>
          
          <div id="id_btn">
<button type="button" class="btn btn-outline-dark">중복</button>
          </div>
         
         <div id="warning1">
        <p id="text_warning1">영문 대소문자와 숫자를 포함해서 6글자 이상으로 만드세요.<p>
        </div>
         
<!-- 여기서 부터 ui 시작 -->

        </form>
      </div>
    </div>
  </div>
</body>
</html>
