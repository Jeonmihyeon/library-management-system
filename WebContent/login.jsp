<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 로그인 </title>
</head>
<body>

<style type="text/css">
   txt{
   	background: #fff;
      font-size: 40px;
      font-weight: bold;
      text-shadow: 10px 11px #ffffff, 4px 4px 0px #EAEAEA;
   }
   
   div {
      text-align: center;
   }
</style>

<body>
   <div>
      <img src="image/book.png" alt="Image is None" width="800" height="250">
      <img src="image/line.png" width="1400" height="30">
   </div>
      <div>
	     <txt>도서관에 오신걸 환영합니다</txt>
	</div>
<center>
	<txt> Log-in</txt>
	</center>
<center>
	<form action="j_security_check" method="get">
	 <p>회원번호:<input type="text" name="j_username"/></p>
	 <p>전화번호:<input type="password" name="j_password"/></p>
	 <input type="submit" name ="login" value="로그인">
	 <input onClick = "location.href = 'join.jsp'" type="button" name ="join" value="회원가입">
	</form>
</center>
	<br><br><br><br>
	<div>
      <img src="image/line.png" width="1400" height="30">
   </div>

</body>
</html>