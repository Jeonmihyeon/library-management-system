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

 <div id="wrap">
        <br><br>
        <b><font size="5" color="gray">ȸ������ ������ Ȯ���ϼ���.</font></b>
        <table>
  <% 
        // �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
 	
 		
			Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe",
				"db201712057",
				"201712057");
		
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address =request.getParameter("address");
		
		String sqlStr1 = "insert into member values(memberid.nextval," + "'" + name + "'," +"'" + phone + "'," + "'" + address + "','member')"; 


		PreparedStatement st = conn.prepareStatement(sqlStr1);
		System.out.format(sqlStr1);
		 ResultSet rs = st.executeQuery();
		 
		
		if(sqlStr1 != null){
		
		 String sqlStr2 = "select * from member";
		 
		 sqlStr2 += " where NAME_MEM = '" + name + "'";

		PreparedStatement st2 = conn.prepareStatement(sqlStr2);

		 ResultSet rs2 = st2.executeQuery();
		 
		 while(rs2.next()){
			 String code = rs2.getString("CODE_MEM");	
			 String rname = rs2.getString("NAME_MEM");	
			 String rphone = rs2.getString("NUMBER_MEM");	
			 String raddress = rs2.getString("ADDRESS_MEM");	
			 
			 System.out.format("(%s,%s,%s,%s)",code,rname,rphone,raddress);
    %>

			<tr>
				<td>ȸ����ȣ</td>
				<td><%=code %></td>
				
			</tr>
            <tr>
                <td id="title">�̸�</td>
                <td><%= name %></td>
            </tr> 
            <tr>
                <td id="title">�޴���ȭ</td>
                <td><%= phone %></td>
            </tr>
            <tr>
                <td id="title">�ּ�</td>
                <td>
                    <%= address %>
                </td>
            </tr>
            
            <%
            }
		}
		 %>
        </table>
        
        <br>
        <input onClick = "location.href = 'login.jsp'" type="button" value="Ȯ��">
    </div>
    

</body>
</html>