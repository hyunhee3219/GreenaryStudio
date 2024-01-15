<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2 onClick="location.href='./main.jsp'"> </h2>
<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>

<style>

.bd-sidebar {
  position: sticky;
  top: 4rem;
  z-index: 1000;
  height: calc(100vh - 4rem);
  background: #eee;
  border-right: 1px solid rgba(0,0,0,.1);
  overflow-y: auto;
  min-width: 160px;
  max-width: 220px;
}
.bd-sidebar .nav {
  display: block;
}
.bd-sidebar .nav>li>a {
  display: block;
  padding: .25rem 1.5rem;
  font-size: 90%;
}
</style>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>


<div class="container-fluid">
  <div class="row flex-nowrap">
    <div class="col-3 bd-sidebar">
      <ul class="nav">
      
        <li><a>정보 조회</a><br> 
     	<li><a href="./myinfo.jsp">회원 정보 조회</a><br> 
		<li><a href="./mypw.jsp">예약 정보 조회</a><br><br>
        <li><a>정보 수정</a><br>
		<li><a href="./user_db.jsp">회원정보 수정</a><br>
		<li><a href="./dept.jsp">예약 정보 수정</a><br>
		<li><a href="./log.jsp">공지사항</a>
		
      </ul>
      <br>
    </div>
    <main class="col-9 py-md-3 pl-md-5 bd-content" role="main">
      <h1>Main 1</h1>
      <h1>Main 2</h1>
      <h1>Main 3</h1>
      <h1>Main 4</h1>
      <h1>Main 5</h1>
      <h1>Main 6</h1>
      <h1>Main 7</h1>
      <h1>Main 8</h1>
    </main>
  </div>
</div>

