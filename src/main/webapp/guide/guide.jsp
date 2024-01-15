<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 안내</title>

	<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel = "stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="./css/style.css">
	
	<!--          script 선언          -->
    <script src="https://code.jquery.com/jquery-3.1.1min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
<style>
body {
    text-align: center;
}

button {
    margin: 20px;
}

.main {
    border: none;
    font-size: 30px;
    font-weight: 600;
    background: white;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline {
    border: 3px solid aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline:hover {
    color: #1e6b7b;
    background: aliceblue;
}

.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}

.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}

.text1 {
	padding: 20px;
	font-size: 18px;
}

.text2 {
	padding: 20px 150px;
	font-size: 20px;
	text-align: left;
	margin-left: 150px;
}
</style>

<script>
function main() {
	var f = document.myForm;
	f.action = "../index.jsp";
	f.submit();
}

function first() {
	var f = document.myForm;
	f.action = "guide.jsp";
	f.submit();
}

function second() {
	var f = document.myForm;
	f.action = "schedule.jsp";
	f.submit();
}

function third() {
	var f = document.myForm;
	f.action = "studio.jsp";
	f.submit();
}
</script>

</head>

<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type = "button" class = "navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>	
			</button>
			<a class = "navbar-brand" href="../index.jsp">Greenery Studio</a>
		</div>
		
		<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="guide.jsp">예약안내</a>
				<li><a href="bbs.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="../member/login.jsp">로그인</a></li>
						<li><a href="../member/regist.jsp">회원가입</a></li>
						<li><a href="../admin/login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
 	
<form name="myForm" method=get>

<button class="main" type="button" onclick="main();">Greenery Studio</button>
<br>
<button class="w-btn w-btn-green" type="button" onclick="first();">예약 안내</button>
<button class="w-btn w-btn-indigo" type="button" onclick="second();">예약 스케줄</button>
<button class="w-btn w-btn-indigo" type="button" onclick="third();">룸 안내</button>
<hr>

<p class=text1>예약 전 <font color="red">반드시</font> 아래의 <font color="red">안내 사항</font>을 확인해 주세요.<br>
안내사항을 확인하지 않아 생기는 불이익에 관해서는 책임지지 않습니다.</p>

<p class=text2>
■ <b>예약 방법</b><br>① 스케줄 확인 -  스케줄과 안내사항을 확인<br>② 예약 신청 - '예약하기' 배너를 클릭하여 예약폼 작성
<br>③ 입금 - 안내문자 확인 후 24시간이내 이용금액 입금<br>④ 예약확정 - 예약이 확정되어 스케줄에 등록

<br><br>

■ <b>환불 규정</b><br>· 시간, 날짜변경은 3일 전까지만 가능합니다.<br>· 이용일 7일 전 취소시 100% 환불
<br>· 이용일 3~6일 전 취소시 50% 환불<br>· 이용 당일~2일 전 취소시 환불 불가

​<br><br>

■ <b>안내 사항</b><br><br><font color="red"><b>※ 코로나 관련 추가 사항</b></font><br>· <b>코로나 확진시 무료로 이용 일자 변경이 가능합니다.</b><br>
<br>· <b>영업시간 9:00~24:00</b><br>· 최소 2시간부터 예약 가능합니다.<br>· 이용 시간은 촬영준비, 세팅, 정리, 장소 원상복구 시간 모두 포함입니다.
<br>· 정시 입실, 정시 퇴실 준수 부탁드립니다.<br>(다음타임 이용자가 바로 있을 경우 교대 정돈을 위해 5분전 퇴실 부탁드립니다)  
<br>· <font color="red">심야촬영</font>의 경우 예약 전 스튜디오로 문의 부탁드립니다.<br>
<br>· 상업웹화보(패트리온, 팬트리등등), 성인물, 선정적인 촬영은 허가하지 않습니다.<br>(발각 시 즉시 퇴실 조치됩니다.)
<br>· 외부 신발 사용 가능하나, 테이핑 필수입니다.<br>(바닥 손상 시 복구비용이 청구될 수 있습니다)
<br>· 흡연, 주류반입, 화기, 인공피, 물감 <font color="red">사용 불가</font>합니다.<br>· 배경, 소품이 파손 및 오염이 되었을 경우 비용이 청구될 수 있습니다.
<br>· 룸 내 방범 <font color="red">CCTV</font>가 설치되어있습니다. (파우더룸, 탈의실 X)<br>· 타인에게 피해를 주는 경우 직원 판단에 의하여 제재, 퇴실 조치가 될 수 있습니다.<br>
<br>· 스튜디오의 소품, 가구는 예고 없이 변경될 수 있습니다. <br>· 분실물은 한 달간 보관 후 폐기됩니다.
<br>· 변질의 문제가 있는 분실물의 경우 즉시 폐기됩니다.<br>· 기타 문의사항은 스튜디오로 연락주세요. 

​<br><br>

■ <b>주차 안내</b><br>· 스튜디오 건물내 주차가 불가합니다.<br>· 인근 공영주차장을 이용 부탁드리겠습니다.

</p>
<hr>

    <footer>
        <div class="footer_container">
          
            <div class="footA">
             Copyright © Greenery Studio's All Rights Reserved.
            </div>
        </div>
    </footer>
</form>
    
</body>
</html>