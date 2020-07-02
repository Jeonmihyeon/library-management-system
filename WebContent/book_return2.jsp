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

			String book_code = request.getParameter("book_code");
			String mem_code = request.getRemoteUser();
			
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");


			String sqlstr = "delete from rent where BOOK_CODE = '" + book_code + "'";

			PreparedStatement st = conn.prepareStatement(sqlstr);

			ResultSet rs = st.executeQuery();
			
			String sqlstr2 = "update book set possible_b = 'possible' where BOOK_CODE = '" + book_code + "'"; 

			PreparedStatement st2 = conn.prepareStatement(sqlstr2);

			ResultSet rs2 = st2.executeQuery();

			
			rs.close();
			rs2.close();
			st.close();
			st2.close();
			conn.close();

%>


<h1>반납이 완료되었습니다.</h1>
<input onClick = "location.href = 'index.jsp'" type="button" value="확인">
</body>
</html>