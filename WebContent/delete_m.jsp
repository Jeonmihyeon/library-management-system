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

Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", "db201712057", "201712057");

String m_code = request.getRemoteUser();


String sqlStr = "delete from member where CODE_MEM = '" + m_code + "'";


PreparedStatement st = conn.prepareStatement(sqlStr);

ResultSet rs = st.executeQuery();


%>
�����Ǿ����ϴ�.

 <input onClick = "location.href = 'login.jsp'" type="button" value="���ư���">
</body>
</html>