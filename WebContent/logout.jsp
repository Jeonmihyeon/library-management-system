<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃</title>
</head>
<body>

<%
session.invalidate();
%>

<h1>로그아웃 되었습니다</h1>

<ul>
   <li><a href="index.jsp">메인 화면</a></li>
</ul>

</body>
</html>