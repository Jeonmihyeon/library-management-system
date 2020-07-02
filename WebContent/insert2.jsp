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
<div id="wrap">
        <br><br>
        <b><font size="5" color="gray">도서등록 정보를 확인하세요.</font></b>
        <table>


<%

request.setCharacterEncoding("euc-kr"); 
	
String b_code = request.getParameter("CODE_BOOK");
String b_name = request.getParameter("NAME_BOOK");
String author = request.getParameter("AUTHOR");
String location = request.getParameter("LOCATION");
String possible_b = request.getParameter("POSSIBLE_B");
String buy_date = request.getParameter("BUY_DATE");

Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");

	
String sqlstr = "insert into book values('" + b_code +"', '" + b_name + "', '" + author + "', '" + location + "', '" + possible_b +"', '" + buy_date +"')"; 
System.out.println(sqlstr);
PreparedStatement st = conn.prepareStatement(sqlstr);

ResultSet rs = st.executeQuery();

String sqlstr2 = "select * from book where BOOK_CODE = '" + b_code + "'"; 

PreparedStatement st2 = conn.prepareStatement(sqlstr2);

ResultSet rs2 = st2.executeQuery();

while(rs2.next()){
	String rb_code = rs2.getString("BOOK_CODE");
	String rb_name = rs2.getString("BOOK_NAME");
	String rauthor = rs2.getString("AUTHOR");
	String rlocation = rs2.getString("LOCATION");
	String rpossible_b = rs2.getString("POSSIBLE_B");
	String rbuy_date = rs2.getString("BUY_DATE");

%>

			<tr>
				<td>도서코드</td>
				<td><%=rb_code %></td>
				
			</tr>
            <tr>
                <td>도서이름</td>
                <td><%= rb_name %></td>
            </tr> 
            <tr>
                <td>저자명</td>
                <td><%= author %></td>
            </tr>
            <tr>
                <td>위치</td>
                <td>
                    <%= rlocation %>
                </td>
            </tr>
                        <tr>
                <td>도서대여가능</td>
                <td>
                    <%= rpossible_b %>
                </td>
            </tr>
                        <tr>
                <td>도서구매날짜</td>
                <td>
                    <%= rbuy_date %>
                </td>
            </tr>
            
            <%
            }
rs.close();
rs2.close();
st.close();
st2.close();
conn.close();
		 %>
        </table>

	 <input onClick = "location.href = 'index.jsp'" type="button" value="확인">
</body>
</html>