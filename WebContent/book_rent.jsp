<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �뿩</title>
</head>
<body>
<table border=1>
		<tr>
			<th colspan="3"><b>�������</b></th>
		</tr>
		<tr>
			<th><b>�����ڵ�</b>
			<th><b>�����̸�</b>
			<th><b>����</b>
			<th><b>������ġ</b>
			<th><b>�뿩���ɿ���</b>
			<th><b>�������ų�¥</b></th>
		</tr>
				<%
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");

		
		String sqlStr = "select * from book";
		

		PreparedStatement st = conn.prepareStatement(sqlStr);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {

			String code_b = rs.getString("BOOK_CODE");
			String name_b = rs.getString("BOOK_NAME");
			String author = rs.getString("AUTHOR");
			String location = rs.getString("LOCATION");
			String possible = rs.getString("POSSIBLE_B");
			String date = rs.getString("BUY_DATE");
			
	
		%>

		<tr>
			<td><a href="book_rent2.jsp?code_b=<%=code_b%>"><%=code_b%>
			<td><%=name_b%>
			<td><%=author%>
			<td><%=location%>
			<td><%=possible%>
			<td><%=date%>
		</tr>


		<%
			}
		%>
	</table>


</body>
</html>