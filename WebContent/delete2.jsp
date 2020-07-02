<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%
String b_code = request.getParameter("BOOK_CODE");


request.setCharacterEncoding("euc-kr"); 
	
	
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection(
	"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe",
	"db201712057",
	"201712057");


String sqlStr1 = "delete from book where BOOK_CODE = '" + b_code + "'"; 


PreparedStatement st = conn.prepareStatement(sqlStr1);
System.out.format(sqlStr1);
ResultSet rs = st.executeQuery();


rs.close();
st.close();
conn.close();
 
%>

도서 삭제가 완료되었습니다.

<input onClick = "location.href = 'index.jsp'" type="button" value="확인">
</body>
</html>