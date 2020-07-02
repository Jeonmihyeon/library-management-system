<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*,java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자리 대여/반납</title>
</head>
<body>
	<%
		String rcode_seat = request.getParameter("code_seat");
		String code_mem = request.getRemoteUser();
		
	
		Class.forName("oracle.jdbc.OracleDriver"); // Oracle JDBC 드라이버를 로딩
	
		Connection conn = DriverManager.getConnection( // oracle 서버에 접속
		"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", 
		"db201712057", 
		"201712057");
		
		PreparedStatement st = conn.prepareStatement("select code_mem from SEAT");
		ResultSet rs = st.executeQuery();
		

		int check = 1;
		
		while (rs.next()) {
			String temp_code_mem = rs.getString("code_mem");
			int c1 = Integer.parseInt(temp_code_mem);
			int c2 = Integer.parseInt(code_mem);
			if (c1 == c2) check = 0;
		}
		
		rs.close();
		st.close();
		conn.close();
	

		if (check == 1){
			%>
		<ul>
			<li><a href="seat_rent2.jsp?code_seat=<%=rcode_seat%>">자리 대여</a></li>
			<li>자리 반납</a></li>
		</ul>
		<%
			
		}
		else{
			%>
		<ul>
			<li>자리 대여</a></li>
			<li><a href="seat_return.jsp?code_seat=<%=rcode_seat%>">자리 반납</a></li>
		</ul>
	<%
			
		}
	%>


</body>
</html>