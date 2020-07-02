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
<table border=1>
		<tr>
			<th colspan="3"><b>회원정보</b></th>
		</tr>
		<tr>
			<th><b>회원번호</b>
			<th><b>회원이름</b>
			<th><b>핸드폰 번호</b>
			<th><b>주소</b></th>
		</tr>
<%

Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");


	String m_code = request.getRemoteUser();

	String sqlStr = "select * from member where CODE_MEM = '" + m_code + "'";
	

	PreparedStatement st = conn.prepareStatement(sqlStr);

	ResultSet rs = st.executeQuery();
	
	while (rs.next()) {

		String rm_code = rs.getString("CODE_MEM");
		String name_m = rs.getString("NAME_MEM");
		String number_m = rs.getString("NUMBER_MEM");
		String address_m = rs.getString("ADDRESS_MEM");
		String role_m = rs.getString("ROLE_MEM");

	%>

	<tr>
		<td><%=rm_code%>
		<td><%=name_m%>
		<td><%=number_m%>
		<td><%=address_m%>

	</tr>


	<%
		}
	%>
</table>
	
	 <input onClick = "location.href = 'modify1.jsp'" type="button" value="수정">
	  <input onClick = "location.href = 'delete_m.jsp'" type="button" value="탈퇴">
	  
	  <input onClick = "location.href = 'index.jsp'" type="button" value="돌아가기">

	
</body>
</html>