<!-- 1. directive tag(지시자) 알려주는거다 이페이지가 jsp페이지당	@ 지시자! -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫번째 JSP</title>
</head>
<body>
<%-- 2. JSP의 주석태그~ comments tag~~ --%>
<%-- 3. Declaration tag 선언부~ --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%-- 4. Scriptlet tag (스크립틀릿)그냥%%안에쓰기 ㅎㅎ --%>
<%
	// 자바코드를 그대로작성 자바에서 //이게주석이니깐 ㅎㅎ
	String name = request.getParameter("name");
	if(name==null) name=DEFAULT_NAME;
	//out.println("<h1>Hello, "+name+"</h1>");
%>
<%-- 5. Expression tag(표현식) --%>
<h1>Hello, <%=name.toUpperCase() %></h1>
</body>
</html>