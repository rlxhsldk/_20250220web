<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

 //🔹 1. 쿠키에서 loginId 가져오기
    String loginId = null;
    Cookie[] cookies = request.getCookies();
    
 //🔹 2. loginId 쿠키 찾기  / 쿠키가 존재하면 모든 쿠키를 for문으로 탐색.
 //쿠키 이름이 일치하는 경우에 해당 쿠키 값 저장
    if(cookies != null) {
        for(Cookie cookie : cookies) {
            if(cookie.getName().equals("loginId")) {
                loginId = cookie.getValue();
                break;
            }
        }
    }
    
    // 로그인 체크, 로그인이 안되면 강제로 로그인 페이지로 이동시킴.
    if(loginId == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
</head>
<body>
    <h2>메인 페이지</h2>
    <p><%=loginId%>님 환영합니다!</p>
    <a href="logout.jsp">로그아웃</a>
</body>
</html> 