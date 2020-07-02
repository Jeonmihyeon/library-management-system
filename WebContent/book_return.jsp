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
<h1> 도서를 클릭하시면 반납됩니다. </h1>
<table border=1>
		<tr>
			<th colspan="3"><b>도서목록</b></th>
		</tr>
		<tr>
			<th><b>대여번호</b>
			<th><b>도서코드</b>
			<th><b>회원코드</b>
			<th><b>직원코드</b>
			<th><b>도서대여날짜</b></th>
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