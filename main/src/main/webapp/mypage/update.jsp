<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Date" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보 수정</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String user_id = (String)session.getAttribute("user_id");

LoginDAO dao = new LoginDAO();
List<MemberVO> list = dao.listMembers(user_id);

for(int i=0; i<list.size(); i++) {
	MemberVO listvo = (MemberVO) list.get(i);
	
	String uid = listvo.getUser_id();
	String pwd = listvo.getUser_pwd();
	String name = listvo.getUser_name();
	String gender = listvo.getGender();
	String birthy = listvo.getBirthYear();
	String birthm = listvo.getBirthMonth();
	String birthd = listvo.getBirthDay();
	String calendar = listvo.getCalendar();
	String hp1 = listvo.getHp1();
	String hp2 = listvo.getHp2();
	String hp3 = listvo.getHp3();
	String smsyn = listvo.getSmsyn();
	String mail_id = listvo.getMail_ID();
	String mail_domain = listvo.getMail_Domain();
	String emailyn = listvo.getEmailyn();
	String zipcode = listvo.getZipcode();
	String roadAddr = listvo.getRoadAddr();
	String jibunAddr = listvo.getJibunAddr();
	String namujiAddr = listvo.getNamujiAddr();
%>
<h1> 회원정보 수정</h1>
<table border=1 cellpadding="2">
<form action="./update_check.jsp" name="updateform" method="post" onSubmit="return updateCheck();">
		<tr>
		<td align="center" width="80"> ID </td>
		<td>
		<input type="text" name="user_id"  id="user_id"  value="<%=uid %>" size="20" readonly>
		</td></tr>
		<tr><td class="tbcss1" align="center"> 현재비밀번호 </td>
		<td class="tbcss2">
		<input class="tbcss3" type="password" name="pwdh" id="pwdh" value="<%=pwd%>" readonly>
		<a href="./mypwdchange.jsp" onclick="return pwdChangeOk();"> 비밀번호변경 </a>
		</td></tr>
		<tr><td align="center"> 이름 </td>
		<td>
		<input name='user_name' id='user_name' value="<%=name%>">
		</td><tr>
		<tr><td align="center"> 성별 </td>
		<td>
		<% if(gender.equals("남")) { %>
		<input type="radio" id="man" name="gender" value="남" checked>
				<label for="man">남자</label>
				<input type="radio" id="woman" name="gender" value="여">
				<label for="woman">여자</label> <% } else { %>
				<input type="radio" id="man" name="gender" value="남" >
				<label for="man">남자</label>
				<input type="radio" id="woman" name="gender" value="여" checked>
				<label for="woman">여자</label> <% } %>
		</td></tr>
		
		<tr><td align="center"> 생년월일 </td>
		<td>
		<select name="birth_Year" id="birth_Year">
			<script> // 저장되어 있는 사용자의 생년월일이 기본값으로 뜨도록 설정
			for(var i=2023;i>1900;i--){
			if(i==<%=birthy%>){
			document.write("<option selected='selected'>"+i+"</option>");
			}
			else{ document.write("<option>"+i+"</option>");}
			}
			</script>
			
			</select> 년
			
		<select name="birth_Month" id="birth_Month"> 
			<script>
				for(var i=1;i<13;i++) {
				if(i==<%=birthm%>) {
					document.write("<option selected='selected'>"+i+"</option>");
				} else{
					document.write("<option>"+i+"</option>");
				}
			} 
			</script>
				
				</select> 월
				
		<select name="birth_Day" id="birth_Day"> 
			<script>
				for(var i=1;i<32;i++) {
				if(i==<%=birthd%>) {
					document.write("<option selected='selected'>"+i+"</option>");
				} else{
					document.write("<option>"+i+"</option>");
				}
			} 
			</script>
					
				</select> 일
				
		<% if(calendar.equals("양력")) { %>
				<input type="radio" id="solar" name="calendar" value="양력" checked>
				<label for="solar">양력</label>
				<input type="radio" id="lunar" name="calendar" value="음력">
				<label for="lunar">음력</label> <% } 
		else { %>
				<input type="radio" id="solar" name="calendar" value="양력" >
				<label for="solar">양력</label>
				<input type="radio" id="lunar" name="calendar" value="음력" checked>
				<label for="lunar">음력</label> <% } %>
		</td></tr>
		<tr><td align="center"> 휴대폰번호 </td>
		<td> 
		<select name="hp1" id="hp1">
		<% if(hp1.equals("010")) { %>
		<option value="010"  selected>010</option>
		<option value="011">011</option> <% }
		else { %>
		<option value="010"  >010</option>
		<option value="011" selected>011</option>  <% } %>
		</select> - 
		<input type="text" pattern="\d*" size=5 name= "hp2" maxlength="4" value="<%=hp2%>"/> - 
		<input type="text" pattern="\d*" size=5 name= "hp3" maxlength="4" value="<%=hp3%>"/>
		<br>    
		<%if(smsyn.equals("yes")) {
			%>
			<input type="checkbox" name="smsyn" value='yes' id="sms" checked> <% } else 
				{ %>
		 <input type="checkbox" name="smsyn" value='yes' id="sms"/>
		<input type="hidden" name="smsyn" value='no' id="sms_hidden"/>
		<% } %>
		<label for="sms">"SMS 소식을 수신합니다."</label>
		
		</td></tr>	
		<tr><td align="center"> 이메일 </td>
		<td>
		<input name="mail_id" id="mail_id" value="<%=mail_id%>"> 
		@ 
		<input type="text" name="mail_domain" id="mail_domain" disabled>
		<select id="mail_option" name="mail_option" onchange="mailChange()">
			<option value="">==선택==</option>
			<option <%=mail_domain.equals("gmail.com") ? "selected" : "" %> value="gmail.com" >gmail.com</option>
			<option <%=mail_domain.equals("naver.com") ? "selected" : "" %> value="naver.com" >naver.com</option>
			<option <%=mail_domain.equals("hanmail.net") ? "selected" : "" %> value="hanmail.net" >hanmail.net</option>
			<option value="9">직접 입력</option>
		</select>
		<br>    
		<%if(emailyn.equals("yes")) {
			%>
		<input type="checkbox" name="emailyn" value='yes' id="email" checked> <% } else 
				{ %>
		<input type="checkbox" name="emailyn" value='yes' id="email"/>
		<input type="hidden" name="emailyn" value='no' id="email_hidden"/>
		<% } %>
		 
		<label for="emailyn">"이메일 소식을 수신합니다."</label>
		
		</td></tr>
		<tr>
		<td align="center"> 주소 </td>
		<td>
 		<input type="text" id="zipcode" name="zipcode" size="10" value="<%=zipcode%>">
 		<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
					  <br>
					  <p> 
					   지번 주소:<br><input type="text" id="roadAddress"  name="roadAddress" size="50" value="<%=roadAddr%>"><br><br>
					  도로명 주소: <input type="text" id="jibunAddress" name="jibunAddress" size="50" value="<%=jibunAddr%>"><br><br>
					  나머지 주소: <input type="text"  name="namujiAddress" size="50" value="<%=namujiAddr%>">
					<span id="guide" style="color:#999"></span>
					   </p>
		</td></tr>
		
		</table>
		<p> <input type="submit" value=수정 > <input type="reset" value=초기화>
		<p> <input type="button" value=취소 onClick="gobackForm()">

	
	</form>
<% } %>	
</body>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


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


<script >
	function updateCheck() {
		//console.log('확인');
		
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
function gobackForm() {
	location.href="mypage.jsp";
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
</html>