<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    //1. userid, password 파라미터 받기
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    
    //2. if 조건문: 로그인 검증
    if(userid.equals("admin") && password.equals("1234")) {
    	session.setAttribute("userid" , userid);  //로그인 성공 시 , 세션 저장(로그인 상태 유지)
    	response.sendRedirect("main.jsp");  //로그인 성공 시 ,메인 페이지 이동
    	
    	
    } else  {  //로그인 실패 시
    	response.sendRedirect("login.jsp");
    	
   }
    
%>