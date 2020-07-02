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

<%
request.setCharacterEncoding("euc-kr"); 
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");


	String m_code = request.getRemoteUser();
	String m_name = request.getParameter("name");
	String m_phone = request.getParameter("phone");
	String m_address = request.getParameter("address");
	String sqlStr = "update member set NAME_MEM = '" + m_name + "', NUMBER_MEM = '" + m_phone + "', ADDRESS_MEM = '" + m_address + "' where CODE_MEM = '" + m_code + "'";
	System.out.println(sqlStr);
	

	PreparedStatement st = conn.prepareStatement(sqlStr);

	ResultSet rs = st.executeQuery();
	
	%>


</table>
수정되었습니다.	
	 <input onClick = "location.href = 'memberinfo.jsp'" type="button" value="돌아가기">

</body>
</html>