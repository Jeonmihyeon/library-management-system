<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<html>
<head>
    <title>ȸ������ ȭ��</title>
    
    <script type="text/javascript">
    
        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue()
        {
            if(!document.userInfo.name.value){
                alert("���̵� �Է��ϼ���.");
                return false;
            }
            
            if(!document.userInfo.phone.value){
                alert("��ȣ�� �Է��ϼ���.");
                return false;
            }
            if(!document.userInfo.address.value){
                alert("�ּҸ� �Է��ϼ���.");
                return false;
            }
            
           
       
            }
    </script>
    
</head>
<body>
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">ȸ������</font></b>
        <br><br><br>
        
        
        <!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
        <!-- ��(�Ķ����) ������ POST ���, ������ �������� JoinPro.jsp -->
        <form method="post" action="joinPro.jsp" name="userInfo" onsubmit="return checkValue()">
            <table> 
                <tr>
                    <td id="title">�̸�</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                                      
                <tr>
                    <td id="title">�޴���ȭ</td>
                    <td>
                        <input type="text" name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">�ּ�</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="����"/>  <input type="button" value="���">
        </form>
        </div>
		
		
</body>
</html>