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
			<th colspan="3"><b>ȸ������</b></th>
		</tr>
		<tr>
			<th><b>ȸ����ȣ</b>
			<th><b>ȸ���̸�</b>
			<th><b>�ڵ��� ��ȣ</b>
			<th><b>�ּ�</b></th>
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
	
	 <input onClick = "location.href = 'modify1.jsp'" type="button" value="����">
	  <input onClick = "location.href = 'delete_m.jsp'" type="button" value="Ż��">
	  
	  <input onClick = "location.href = 'index.jsp'" type="button" value="���ư���">

	
</body>
</html>