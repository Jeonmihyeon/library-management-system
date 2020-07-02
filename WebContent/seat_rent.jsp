<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*,java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자리 보기</title>
</head>
<body>
	<%
		
		String code_mem = request.getRemoteUser();
		Class.forName("oracle.jdbc.OracleDriver"); // Oracle JDBC 드라이버를 로딩
	
		Connection conn = DriverManager.getConnection( // oracle 서버에 접속
		"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", 
		"db201712057", 
		"201712057");
		
		PreparedStatement st = conn.prepareStatement("select code_seat from SEATROOM where possible_s = 'Y'");
		ResultSet rs = st.executeQuery();
		
		
		String[] no_seat = new String[220];
		int index = 0;
		
		if (rs == null) System.out.println("rs is null.");
		else{
			while (rs.next()) {
				String code_seat = rs.getString("code_seat");
				no_seat[index] = code_seat;
				index++;
			}
		}
		
		
		PreparedStatement st2 = conn.prepareStatement("select code_mem from SEAT");
		ResultSet rs2 = st2.executeQuery();
		
		int check = 1;
		if (rs2 == null) System.out.println("rs2 is null");
		else{
			while (rs2.next()) {
				String temp_code_mem = rs2.getString("CODE_MEM");
				int c1 = Integer.parseInt(temp_code_mem);
				int c2 = Integer.parseInt(code_mem);
				if (c1 == c2) check = 0;
			}
		}

		rs.close();
		st.close();
		rs2.close();
		st2.close();
		conn.close();
	
	%>


	<h1>A (Reading) 열람실</h1>
	
	<table border=1>
	<tr align ="center">
	<tr>
	
	<%
	
	for ( int j = 0; j<10; j++){
			for (int i = j*10 + 1; i<j*10 + 11; i++){
				if (check == 1){
					if (Arrays.asList(no_seat).contains(String.format("A"+"%03d", i))){
						%>
						 <td bgcolor="skyblue"> <a href="seat_info.jsp?code_seat=A<%= String.format("%03d", i)%>"> A<%= String.format("%03d", i)%> </a>
						<%
					}
					else {
					 %><td bgcolor="red">A<%= String.format("%03d", i)%> </a>
					 <%
					}
				}
				else{
					if (Arrays.asList(no_seat).contains(String.format("A"+"%03d", i))){
						%>
						 <td bgcolor="skyblue"> A<%= String.format("%03d", i)%> </a>
						<%
					}
					else {
					 %><td bgcolor="red"> <a href="seat_info.jsp?code_seat=A<%= String.format("%03d", i)%>"> A<%= String.format("%03d", i)%> </a>
					 <%
					}
				}
			}
			
			%> </tr> <%
	} %>
	</table>



	<h1>B (Reading) 열람실</h1>
	
	<table border=1>
	<tr align ="center">
	<tr>
	
	<%
	
	for ( int j = 0; j<10; j++){
			for (int i = j*10 + 1; i<j*10 + 11; i++){
				if (check == 1){
					if (Arrays.asList(no_seat).contains(String.format("B"+"%03d", i))){
						%>
						 <td bgcolor="skyblue"> <a href="seat_info.jsp?code_seat=B<%= String.format("%03d", i)%>"> B<%= String.format("%03d", i)%> </a>
						<%
					}
					else {
					 %><td bgcolor="red">B<%= String.format("%03d", i)%> </a>
					 <%
					}
				}
				else{
					if (Arrays.asList(no_seat).contains(String.format("B"+"%03d", i))){
						%>
						 <td bgcolor="skyblue"> B<%= String.format("%03d", i)%> </a>
						<%
					}
					else {
					 %><td bgcolor="red"> <a href="seat_info.jsp?code_seat=B<%= String.format("%03d", i)%>"> B<%= String.format("%03d", i)%> </a>
					 <%
					}
				}
			}
			
			%> </tr> <%
	} %>
	</table>
	
	
	
	<h1>C (Notebook) 열람실</h1>
	
	<table border=1>
	<tr align ="center">
	<tr>
	
	<%
	
	for ( int j = 0; j<2; j++){
			for (int i = j*10 + 1; i<j*10 + 11; i++){
				if (check == 1){
					if (Arrays.asList(no_seat).contains(String.format("C"+"%03d", i))){
						%>
						 <td bgcolor="skyblue"> <a href="seat_info.jsp?code_seat=C<%= String.format("%03d", i)%>"> C<%= String.format("%03d", i)%> </a>
						<%
					}
					else {
					 %><td bgcolor="red">C<%= String.format("%03d", i)%> </a>
					 <%
					}
				}
				else{
					if (Arrays.asList(no_seat).contains(String.format("C"+"%03d", i))){
						%>
						 <td bgcolor="skyblue"> C<%= String.format("%03d", i)%> </a>
						<%
					}
					else {
					 %><td bgcolor="red"> <a href="seat_info.jsp?code_seat=C<%= String.format("%03d", i)%>"> C<%= String.format("%03d", i)%> </a>
					 <%
					}
				}
			}
			
			%> </tr> <%
	} %>
	</table>
	

</body>
</html>