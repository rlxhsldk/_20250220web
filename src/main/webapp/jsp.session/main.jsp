<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%  //1. session.getAttribute("userid")로 로그인 상태 확인
    	String userid = (String) session.getAttribute("userid");
    if(userid == null) { //2. 로그인 상태가 아니라면 로그인 페이지로 이동
    	response.sendRedirect("login.jsp");
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style>
	.container {
		width : 800px
		margin : 50px auto;    /* 화면 중앙 배치 */
		padding : 20px;   	   /* 내부 여백 추가  */
	}
		.header {
		display:flex;
		justify-content: space-between;
		align-items : center;
		margin-bottom : 20px;}
		
		
</style>
</head>
<body>
	<div class="header">
		<h2>환영합니다.<%=userid %>님!</h2>
		<a href="logout.jsp">로그아웃</a>
	</div>
	<div class="content">
		<p> 이곳은 로그인된 사용자만 접근할 수 있는 페이지 입니다.. </p>
		</div>
</body>
</html>