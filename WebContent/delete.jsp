<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<html>
<head>
    <title>���� ����</title>
    
    <script type="text/javascript">
    
        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue()
        {
            if(!document.userInfo.BOOK_CODE.value){
                alert("�����ڵ带 �Է��ϼ���.");
                return false;
            }
            
       
            }
    </script>
    
</head>
<body>
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">��������</font></b>
        <br><br><br>
        
        
        <!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
        <!-- ��(�Ķ����) ������ POST ���, ������ �������� JoinPro.jsp -->
        <form method="post" action="delete2.jsp" name="userInfo" onsubmit="return checkValue()">
            <table> 
                <tr>
                    <td id="title">�����ڵ�</td>
                    <td>
                        <input type="text" name="BOOK_CODE" maxlength="50">
                    </td>
                </tr>
                                      
          
            </table>
            <br>
            <input type="submit" value="����"/>
        </form>
        </div>
		
		
</body>
</html>