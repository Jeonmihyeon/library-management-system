<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*,java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ڸ� �ݳ� �Ϸ�</title>
</head>
<body>

	<%
		String rcode_seat = request.getParameter("code_seat");
		String code_mem = request.getRemoteUser();
		
	
		Class.forName("oracle.jdbc.OracleDriver"); // Oracle JDBC ����̹��� �ε�
	
		Connection conn = DriverManager.getConnection( // oracle ������ ����
		"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", 
		"db201712057", 
		"201712057");
		
		PreparedStatement st = conn.prepareStatement("update SEATROOM set possible_s = 'Y' where code_seat='"+rcode_seat+"'");
		ResultSet rs = st.executeQuery();
		
		PreparedStatement st2 = conn.prepareStatement("delete from SEAT where code_seat='"+rcode_seat+"'");
		ResultSet rs2 = st2.executeQuery();
		
		rs.close();
		st.close();
		rs2.close();
		st2.close();
		conn.close();
	%>

<h1>�ڸ��� �ݳ��ϼ̽��ϴ�</h1>
<br>
<h1>�ݳ� ����</h1>
<table border=1>
	<tr align ="center">
	<th>ȸ����ȣ<th>�ڸ���ȣ
	<tr>
	<td><%=code_mem %><td><%=rcode_seat %></td>
	</tr>
</table>

<ul>
   <li><a href="index.jsp">���� ȭ��</a></li>
   <li><a href="logout.jsp">Log out</a></li>
</ul>
   
</body>
</html>