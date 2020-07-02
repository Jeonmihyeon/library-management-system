<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ page import="java.sql.*, javax.sql.*, javax.naming.*, java.text.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%

	String b_code = request.getParameter("code_b");
	String m_code = request.getRemoteUser();
	java.util.Date d = new java.util.Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");

			
		String sqlstr = "select possible_b from book where BOOK_CODE = " + "'" + b_code + "'";
		
		PreparedStatement st = conn.prepareStatement(sqlstr);

		ResultSet rs = st.executeQuery();
		
		while(rs.next()){
			String possible_b = rs.getString("POSSIBLE_B");
		

		
		if(possible_b.equals("possible"))
		{
			String sqlstr2 = "update book set possible_b = 'impossible' where BOOK_CODE = " + "'" + b_code + "'";
			PreparedStatement st2 = conn.prepareStatement(sqlstr2);
			ResultSet rs2 = st2.executeQuery();
			
			String sqlstr3 = "insert into rent values(rentid.nextval, " + "'" + b_code + "', " + "'" + m_code + "', '8000', '" + date.format(d) +"')";
			PreparedStatement st3 = conn.prepareStatement(sqlstr3);
			System.out.print(sqlstr3);
			ResultSet rs3 = st3.executeQuery();

			String sqlstr4 = "select * from rent where BOOK_CODE = " + "'" + b_code + "'";
			PreparedStatement st4 = conn.prepareStatement(sqlstr4);
			ResultSet rs4 = st4.executeQuery();

			while(rs4.next()){
				String num_rent = rs4.getString("NUM_RENT");
				String book_code = rs4.getString("BOOK_CODE");
				String code_mem = rs4.getString("CODE_MEM");
				String code_emp = rs4.getString("CODE_EMP");
				String rdate = rs4.getString("RENT_DATE");
				
		%>
		<h1>대여되었습니다.</h1>
		<br>대여번호: <%=num_rent %>
		<br>도서번호: <%=book_code %>
		<br>회원번호: <%=code_mem %>
		<br>대여날짜: <%=rdate %>
			
		<% }
		}
		else{
			%>
			<h1>이 도서는 이미 대여중이라서 대여불가합니다.</h1>
		<%}
		}
		rs.close();
		st.close();
		conn.close();
		%>
 <input onClick = "location.href = 'index.jsp'" type="button" value="확인">

</body>
</html>