<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

</head>

<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel = "stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/style_index.css">

	<!--          script 선언          -->
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/d75ead5752.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="./js/script.js"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<title>Greenery Studio</title>
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
				<li><a href="../guide/guide.jsp">예약안내</a>
				<li><a href="bbs.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../member/login.jsp">로그인</a></li>
						<li class="active"><a href="../member/regist.jsp">회원가입</a></li>
						<li><a href="../admin/login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
 	
<script>
function execDaumPostcode() {
  new daum.Postcode({
    oncomplete: function(data) {
      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

      // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
      var extraRoadAddr = ''; // 도로명 조합형 주소 변수

      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
        extraRoadAddr += data.bname;
      }
      // 건물명이 있고, 공동주택일 경우 추가한다.
      if(data.buildingName !== '' && data.apartment === 'Y'){
        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
      }
      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
      if(extraRoadAddr !== ''){
        extraRoadAddr = ' (' + extraRoadAddr + ')';
      }
      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
      if(fullRoadAddr !== ''){
        fullRoadAddr += extraRoadAddr;
      }

      // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
      document.getElementById('roadAddress').value = fullRoadAddr;
      document.getElementById('jibunAddress').value = data.jibunAddress;

      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
      if(data.autoRoadAddress) {
        //예상되는 도로명 주소에 조합형 주소를 추가한다.
        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
        document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

      } else if(data.autoJibunAddress) {
          var expJibunAddr = data.autoJibunAddress;
          document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
      } else {
          document.getElementById('guide').innerHTML = '';
      }
      
     
    }
  }).open();
}
</script>
<script type="text/javascript">
function fn_overlapped(){
	   
	var _id = $("#user_id").val();
    
    if(_id==''){
   	 alert("ID를 입력하세요");
   	 return;
    }
  
    $.ajax({
       type:"post",
       async:false,  
       url:"overlapped.jsp",
       dataType:"text",
       data: {id:_id},
       success:function (data){
    	   console.log(data.replace(/(<([^>]+)>)/ig,""));
    	   
    	   //alert(data);
    	   
          if(data.includes("false")){
       	    alert("사용할 수 있는 ID입니다.");
       	    $('#btnOverlapped').prop("disabled", true);
       	    $('#user_id').prop("disabled", true);
       	    $('#huser_id').val(_id);
          }else{
        	  alert("사용할 수 없는 ID입니다.");
          }
       },
       
       error:function(data,textStatus){
          alert("에러가 발생했습니다. " + textStatus);ㅣ
       },
       complete:function(data,textStatus){
          //alert("작업을완료 했습니다");
       }
    })  //end ajax	 
 }	


</script>

<script >
	function validateForm() {
		//console.log('확인');
		var id = document.Registform.user_id.value;
		var hid = document.Registform.huser_id.value;
		var pw1 = document.Registform.pwd1.value;
		var pw2 = document.Registform.pwd2.value;
		var name = document.Registform.user_name.value;
		var gender = document.getElementsByName("gender");
		var selectGen = "";
		var byear=document.getElementById("birth_Year").value;
		var bmonth=document.getElementById("birth_Month").value;
		var bday=document.getElementById("birth_Day").value;
		var calendar = document.getElementsByName("calendar");
		var selectCalendar = "";
		var hp1=document.getElementById("hp1").value;
		var hp2=document.Registform.hp2.value;
		var hp3=document.Registform.hp3.value;
		var mailID=document.Registform.mail_id.value;
		var mailDomain=document.getElementById("mail_option").value;
		var zipcode = document.Registform.zipcode.value;
		var namuji = document.Registform.namujiAddress.value;
		
		
	
		//최소 한개의 영문, 숫자, 특수문자 포함(정규표현식)
		var idv=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{5,11}$/
		if(!idv.test(id)) {
			alert("ID는 영문 대소문자와 숫자, 특수문자를 포함하는 5~11자리로 이루어져야합니다.")
			return false;
		}
		
		var pwv=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,12}$/
			if(!pwv.test(pw1)) {
				alert("비밀번호는 영문 대소문자와 숫자, 특수문자를 포함하는 6~12자리로 이루어져야합니다.")
				return false;
			}
		if(pw1!==pw2) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		
		if(name=="") {
			alert("이름을 입력해주세요.");
			return false;
		}
		
		//성별 확인
		for(var i=0; i<gender.length; i++) {
			if(gender[i].checked) {
				selectGen=gender[i].value;
				break;
			}
		}
		if(selectGen==="") {
			alert("성별을 선택해주세요");
			return false;
		}
		
		if(byear=="") {
			alert("출생년도를 선택하세요.");
			return false;
		}
		if(bmonth=="") {
			alert("출생월을 선택하세요.");
			return false;
		}
		if(bday=="") {
			alert("출생일을 선택하세요.");
			return false;
		}
		for(var i=0; i<calendar.length; i++) {
			if(calendar[i].checked) {
				selectCalendar=calendar[i].value;
				break;
			}
		}
		if(selectCalendar==="") {
			alert("양력/음력을 선택해주세요");
			return false;
		}
		if(hp1=="") {
			alert("핸드폰 번호 첫번째 부분을 선택하세요.");
			return false;
		}
		if(hp2.length<3||hp2.length>4) {
			alert("핸드폰 번호 두번째 부분은 3~4개의 숫자로 이루어져야합니다.");
			return false;
		}
		if(hp3.length<3||hp3.length>4) {
			alert("핸드폰 번호 세번째 부분은 3~4개의 숫자로 이루어져야합니다.");
			return false;
		}
		if(mailID=="") {
			alert("메일아이디를 입력해주세요.");
			return false;
		}
		if(mailDomain=="") {
			alert("메일주소를 선택해주세요.");
			return false;
		}
		if(zipcode=="") {
			alert("주소를 입력해주세요.");
			return false;
		}
		
		if(namuji=="") {
			alert("상세주소를 입력하지 않으셨습니다.");
			return false;
		}
		
		if(hid=="") {
			alert("아이디 중복검사를 실행해주세요.");
			return false;
		}
		
		return true;
		
		
		if(document.getElementById("sms").checked) {
			document.getElementById("sms_hidden").disabled=true;
		} else {
			document.getElementById("sms_hidden").disabled=false;
		}

		if(document.getElementById("email").checked) {
			document.getElementById("email_hidden").disabled=true;
		} else {
			document.getElementById("email_hidden").disabled=false;
		}
		
	}


</script>
<script>
function goindexForm() {
	location.href="index.jsp";
}
</script>

<script type="text/javascript">
	function mailChange() {
		var mailop=document.Registform.mail_option;
		var maildo=document.Registform.mail_domain;
		
		if(mailop.options[mailop.selectedIndex].value=='9') {
			maildo.disabled=false;
			maildo.value="";
			maildo.focus();
		}	else {
			maildo.disabled=true;
			maildo.value=mailop.options[mailop.selectedIndex].value;
		}
	}

</script>



<body>
	<form action="./regist_check.jsp" name="Registform" method="post" onSubmit="return validateForm();">
		<h1> 회원가입</h1>
		<table border=1 cellpadding="2">
		<tr>
		<td align="center" width="80"> ID </td>
		<td>
		<input type="text" name="user_id"  id="user_id"  size="20" />
					  <input type="hidden" name="huser_id"  id="huser_id" />
		<input type="button"  id="btnOverlapped" value="중복체크" onClick="fn_overlapped()" />
		</td></tr>
		<tr><td align="center"> 비밀번호 </td>
		<td>
		<input type="password" name="pwd1" id="pwd1">
		</td></tr>
		<tr>
		<td align="center"> 비밀번호 확인</td>
		<td>
		<input type="password" name="pwd2" id="pwd2">
		</td></tr>
		<tr><td align="center"> 이름 </td>
		<td>
		<input name='user_name' id='user_name'>
		</td><tr>
		<tr><td align="center"> 성별 </td>
		<td>
		<input type="radio" id="man" name="gender" value="남">
				<label for="man">남자</label>
				<input type="radio" id="woman" name="gender" value="여">
				<label for="woman">여자</label>
		</td></tr>
		
		<tr><td align="center"> 생년월일 </td>
		<td>
		<select name="birth_Year" id="birth_Year">
			<option value="">==선택==</option>
			<script>
			for(var i=2023;i>1900;i--) {
			document.write("<option>"+i+"</option>");
			}
			</script>
			
			</select> 년
		
		<select name="birth_Month" id="birth_Month"> 
					<option value="">==선택==</option>
					<script>
			for(var i=1;i<13;i++) {
			document.write("<option>"+i+"</option>");
			}
			</script>
				</select> 월
				<select name="birth_Day" id="birth_Day"> 
					<option value="">==선택==</option>
					<<script>
			for(var i=1;i<32;i++) {
			document.write("<option>"+i+"</option>");
			}
			</script>
				</select> 일
				
				<input type="radio" id="solar" name="calendar" value="양력">
				<label for="solar">양력</label>
				<input type="radio" id="lunar" name="calendar" value="음력">
				<label for="lunar">음력</label>
		</td></tr>	
		<tr><td align="center"> 휴대폰번호 </td>
		<td> 
		<select name="hp1" id="hp1">
		<option value="">==선택==</option>
		<option value="010">010</option>
		<option value="011">011</option>
		</select> - 
		<input type="text" pattern="\d*" size=5 name= "hp2" maxlength="4" /> - 
		<input type="text" pattern="\d*" size=5 name= "hp3" maxlength="4" />
		<br>    
		<input type="checkbox" name="smsyn" value='yes' id="sms"/>
		<input type="hidden" name="smsyn" value='no' id="sms_hidden"/>
		<label for="smsyn">"SMS 소식을 수신합니다."</label>
		</td></tr>	
		<tr><td align="center"> 이메일 </td>
		<td>
		<input name="mail_id" id="mail_id"> 
		@ 
		<input type="text" name="mail_domain" id="mail_domain" disabled>
		<select id="mail_option" name="mail_option" onchange="mailChange()">
			<option value="">==선택==</option>
			<option value="gmail.com">gmail.com</option>
			<option value="naver.com">naver.com</option>
			<option value="hanmail.net">hanmail.net</option>
			<option value="9">직접 입력</option>
		</select>
		<br>    
		<input type="checkbox" name="emailyn" value='yes' id="email"/>
		<input type="hidden" name="emailyn" value='no' id="email_hidden"/>
		<label for="emailyn">"이메일 소식을 수신합니다."</label>
		
		</td></tr>
		<tr>
		<td align="center"> 주소 </td>
		<td>
 		<input type="text" id="zipcode" name="zipcode" size="10" >
 		<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
					  <br>
					  <p> 
					   지번 주소:<br><input type="text" id="roadAddress"  name="roadAddress" size="50"><br><br>
					  도로명 주소: <input type="text" id="jibunAddress" name="jibunAddress" size="50"><br><br>
					  나머지 주소: <input type="text"  name="namujiAddress" size="50" />
					<span id="guide" style="color:#999"></span>
					   </p>
		</td></tr>
		
		</table>
		<p> <input type="submit" value=가입 > <input type="reset" value=초기화>
	 		<input type="hidden" name="command" value="addMember">
	 		<input type="button" value=취소 onClick="goindexForm()">
	
	</form>
</body>

</html>