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
<h1> ������ Ŭ���Ͻø� �ݳ��˴ϴ�. </h1>
<table border=1>
		<tr>
			<th colspan="3"><b>�������</b></th>
		</tr>
		<tr>
			<th><b>�뿩��ȣ</b>
			<th><b>�����ڵ�</b>
			<th><b>ȸ���ڵ�</b>
			<th><b>�����ڵ�</b>
			<th><b>�����뿩��¥</b></th>
		</tr>
<% 
	String ID =request.getRemoteUser();
	
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");

	
String sqlstr = "select * from rent where CODE_MEM = '" + ID + "'";

PreparedStatement st = conn.prepareStatement(sqlstr);

ResultSet rs = st.executeQuery();

while(rs.next()){
	String num_rent = rs.getString("NUM_RENT");
	String book_code = rs.getString("BOOK_CODE");
	String code_mem = rs.getString("CODE_MEM");
	String code_emp = rs.getString("CODE_EMP");
	String rdate = rs.getString("RENT_DATE");
%>

<tr>
			<td><%=num_rent%>
			<td><a href="book_return2.jsp?book_code=<%=book_code%>"><%=book_code%>
			<td><%=code_mem%>
			<td><%=code_emp%>
			<td><%=rdate%>
		</tr>
	
<% 
}

%>
</table>

</body>
</html>