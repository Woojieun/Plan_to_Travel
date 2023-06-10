<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 부트스트랩 3.x를 사용한다. -->
	<link href="/resources/css/styles.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	
</head>
<style>
/* 리스트 css */

.container-fluid-table {
	margin-top: 120px;
	margin-left: 30px;
}
/* 이동 타켓 */
.card-placeholder {
	border: 1px dotted black;
	margin: 0 1em 1em 0;
	height: 50px;
	margin-left: auto;
	margin-right: auto;
	/* 노란색으로 표신되는 것이 주요 포인트 */
	background-color: greid;
}
/* 마우스 포인터을 손가락으로 변경 */
.card:not (.no-move ) .card-header {
	cursor: pointer;
}

.card {
	padding: 5px;
	border-radius: 5px;
	width:150px;
	left: 0px;
}

.card-title {
font-size: 12px;
	align-items: center;
}

.title {
	width: 120px;
	float: left;
	margin-top: 5px;
}

.deleteBox {
	width: 15px;
	float: left;
	margin-left:0px;
	text-align : center;
	margin-top: 5px;
}

.createBox1, .createBox2, .createBox3, .createBox4, .createBox5, .createBox6, .createBox7 {
position:absolute;
bottom:0px;
right:0px; 
}

.table-box1, .table-box2, .table-box3, .table-box4, .table-box5, .table-box6, .table-box7 {
position:relative;
	border: 1px solid #cecece;
	padding-top: 10px;
	padding-bottom: 10px;
	min-height: calc(70vh);
	width: 150px;
	float: left;
}

.card {
margin-bottom : 5px;
}

.date {
width:150px;
	border: 1px solid #cecece;
}

.date_container {
width:1050px;
margin-left: 0px;
}

#map_div {
margin-left: 30px;
  top: 100px;
    bottom: 20px;
	float: left;
	position: sticky;
	border: 1px solid black;
}

.memo_padding {
position: absolute;
width: 1050px;
height: 300px;
clear:left;
margin-top : 670px;
padding-left: 30px;
}

.memo_write {
position: absolute;
width: 1050px;
height: 300px;
clear:left;
border: 1px solid red;
}

.advertisement {
clear:left;
width: 1580px;
height: 250px;
margin-left: 30px;
top : 30px;
border: 1px solid green;
}

#map_div_container {
	float: left;
width: 500px;
height: 1030px;
}

</style>






<body onload="initTmap()">

<nav class="navbar bg-light fixed-top">
  <div class="container-fluid">
    <img src="resources/views/logo.png" alt="Logo" width="120" height="50">
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>
        
        
	<div class="container-fluid-table">
	<div class="row date_container"> <!-- 여기에 날짜 넣기 -->
<div class="col column date">5.15</div>
<div class="col column date">5.16</div>
<div class="col column date">5.17</div>
<div class="col column date">5.18</div>
<div class="col column date">5.19</div>
<div class="col column date">5.20</div>
<div class="col column date">5.21</div>
</div>
	
		<div class="table-row">
			<!-- 세로 리스트 박스 -->
			<div class="column table-box1">
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
				<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
						</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				
				<label class="createBox1"> [추가]</label>
			</div>

			<!-- 세로 리스트 박스 -->
			<div class="column table-box2">
				<div class="card text-white bg-success">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<label class="createBox2"> [추가]</label>
			</div>

			<!-- 세로 리스트 박스 -->
			<div class="column table-box3">
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-danger">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-warning">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-info">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card bg-danger">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>

				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				
				<label class="createBox3"> [추가]</label>
			</div>

			<!-- 세로 리스트 박스 -->
			<div class="column table-box4">
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-info">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				
				<label class="createBox4"> [추가]</label>
			</div>

			<!-- 세로 리스트 박스 -->
			<div class="column table-box5">
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-info">
<div class="card-title">
          	<div class="title">Header</div>
            <div class="deleteBox">x</div></div>
        </div>
        
        <label class="createBox5"> [추가]</label>
			</div>

			<!-- 세로 리스트 박스 -->
			<div class="column table-box6">
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-info">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				
				<label class="createBox6"> [추가]</label>
			</div>

			<!-- 세로 리스트 박스 -->
			<div class="column table-box7">
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-primary">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				<!-- 각 카드 리스트 박스 -->
				<div class="card text-white bg-info">
					<div class="card-title">
						<div class="title">Header</div>
						<div class="deleteBox">x</div>
					</div>
				</div>
				
				<label class="createBox7"> [추가]</label>
			</div>
		</div>
		</div>
		
		
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
		<!-- 부트스트랩 3.x를 사용한다. -->
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script>
    $(function() {
      $(".column").sortable({
        // 드래그 앤 드롭 단위 css 선택자
        connectWith: ".column",
        // 움직이는 css 선택자
        handle: ".title",
        // 움직이지 못하는 css 선택자
        cancel: ".no-move",
        // 이동하려는 location에 추가 되는 클래스
        placeholder: "card-placeholder"
      });
      // 해당 클래스 하위의 텍스트 드래그를 막는다.
      $( ".column .card" ).disableSelection();
    });
  </script>


		<script
			src="https://apis.openapi.sk.com/tmap/vectorjs?version=1&appKey=5A53DsGwddaFFyXqIjgmU8VGi3Vsx3Yb8DYy3kT7"></script>
		<script type="text/javascript">
	// 페이지가 로딩이 된 후 호출하는 함수입니다.
	function initTmap(){
		// map 생성
		// Tmapv3.Map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
		var map = new Tmapv3.Map("map_div", { // 지도가 생성될 div
			center : new Tmapv3.LatLng(37.56520450, 126.98702028),
			width : "500px",	// 지도의 넓이
			height : "500px",	// 지도의 높이
			zoom : 16	// 지도 줌레벨
		});
	}
	
	
	// 삭제 라벨
    $(document).on('click', ".deleteBox", function(){
       $(this).parent().parent().remove();
    });
	
 // 추가 라벨1
    $(document).on('click', '.createBox1', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box1").append(innerHtml);
    });
 
    // 추가 라벨2
    $(document).on('click', '.createBox2', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box2").append(innerHtml);
    });
    
    // 추가 라벨3
    $(document).on('click', '.createBox3', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box3").append(innerHtml);
    });
    
    // 추가 라벨4
    $(document).on('click', '.createBox4', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box4").append(innerHtml);
    });
    
    // 추가 라벨5
    $(document).on('click', '.createBox5', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box5").append(innerHtml);
    });
    
    // 추가 라벨6
    $(document).on('click', '.createBox6', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box6").append(innerHtml);
    });
    
    // 추가 라벨7
    $(document).on('click', '.createBox7', function(){
       innerHtml = ""
       innerHtml += `<div class="card text-white bg-info" style="background-color: skyblue;">
    	   <div class="card-title">
			<div class="title">Header</div>
			<div class="deleteBox">x</div>
		</div>
           </div>`
       $(".table-box7").append(innerHtml);
    });
</script>

		<div id="map_div_container">
		<div id="map_div"></div></div>
		
		<div class="memo_padding">
		<div class="memo_write">
		메모장
		</div></div>
		
		<div class="advertisement">광고</div>
</body>
</html>