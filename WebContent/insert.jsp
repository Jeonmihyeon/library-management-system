<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script type="text/javascript">
    
        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue()
        {
            if(!document.userInfo.CODE_BOOK.value){
                alert("�����ڵ带 �Է��ϼ���.");
                return false;
            }
            if(!document.userInfo.NAME_BOOK.value){
                alert("�������� �Է��ϼ���.");
                return false;
            }
            if(!document.userInfo.AUTHOR.value){
                alert("�۰��� �Է��ϼ���.");
                return false;
            }
            if(!document.userInfo.LOCATION.value){
                alert("��ġ�� �Է��ϼ���.");
                return false;
            }
            if(!document.userInfo.POSSIBLE_B.value){
                alert("�����뿩���ɿ��θ� �Է��ϼ���.");
                return false;
            }
            if(!document.userInfo.BUY_DATE.value){
                alert("���ų�¥�� �Է��ϼ���.");
                return false;
            }
            
           
       
            }
    </script>
</head>
<body> 

<div id="wrap">
        <br><br>
        <b><font size="6" color="gray">�������</font></b>
        <br><br><br>
        
        
			
			<form action = "insert2.jsp" method = "post" onsubmit="return checkValue()">
			  <table> 
                <tr>
                    <td id="title">�����ڵ�</td>
                    <td>
                       <input name ="CODE_BOOK" type="text"/>
                    </td>
                </tr>
                                      
                <tr>
                    <td id="title">������</td>
                    <td>
                       <input name ="NAME_BOOK" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td id="title">���ڸ�</td>
                    <td>
                        <input name ="AUTHOR" type="text"/>
                    </td>
                </tr>
                  <tr>
                    <td id="title">��ġ</td>
                    <td>
                        <input name ="LOCATION" type="text"/>
                    </td>
                </tr>
                  <tr>
                    <td id="title">�����뿩����</td>
                    <td>
                        <input name = "POSSIBLE_B" type = "text"/>
                    </td>
                </tr>
                  <tr>
                    <td id="title">�������ų�¥</td>
                    <td>
                        <input name ="BUY_DATE" type="text"/>
                    </td>
                </tr>
                
            </table>
            <br>

			 <input type="submit" value="���"/>
			</form>


</div>
</body>
</html>