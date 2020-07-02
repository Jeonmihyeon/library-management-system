<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*,java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자리 대여 완료</title>
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
		
		PreparedStatement st = conn.prepareStatement("update SEATROOM set possible_s = 'N' where code_seat='"+rcode_seat+"'");
		ResultSet rs = st.executeQuery();
		
		PreparedStatement st2 = conn.prepareStatement("insert into SEAT values(seatnum.nextval,"+code_mem+", '"+rcode_seat+"')");
		ResultSet rs2 = st2.executeQuery();
		
		rs.close();
		st.close();
		rs2.close();
		st2.close();
		conn.close();
	%>

<h1>자리를 대여하셨습니다</h1>
<br>
<h1>대여 내역</h1>
<table border=1>
	<tr align ="center">
	<th>회원번호<th>자리번호
	<tr>
	<td><%=code_mem %><td><%=rcode_seat %></td>
	</tr>
</table>

   <ul>
      <li><a href="index.jsp">메인 화면</a></li>
      <li><a href="logout.jsp">Log out</a></li>
   </ul>

</body>
</html>