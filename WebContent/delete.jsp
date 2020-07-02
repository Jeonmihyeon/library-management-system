<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<html>
<head>
    <title>도서 삭제</title>
    
    <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.BOOK_CODE.value){
                alert("도서코드를 입력하세요.");
                return false;
            }
            
       
            }
    </script>
    
</head>
<body>
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">도서삭제</font></b>
        <br><br><br>
        
        
        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
        <form method="post" action="delete2.jsp" name="userInfo" onsubmit="return checkValue()">
            <table> 
                <tr>
                    <td id="title">도서코드</td>
                    <td>
                        <input type="text" name="BOOK_CODE" maxlength="50">
                    </td>
                </tr>
                                      
          
            </table>
            <br>
            <input type="submit" value="삭제"/>
        </form>
        </div>
		
		
</body>
</html>