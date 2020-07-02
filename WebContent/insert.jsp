<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.CODE_BOOK.value){
                alert("도서코드를 입력하세요.");
                return false;
            }
            if(!document.userInfo.NAME_BOOK.value){
                alert("도서명을 입력하세요.");
                return false;
            }
            if(!document.userInfo.AUTHOR.value){
                alert("작가를 입력하세요.");
                return false;
            }
            if(!document.userInfo.LOCATION.value){
                alert("위치를 입력하세요.");
                return false;
            }
            if(!document.userInfo.POSSIBLE_B.value){
                alert("도서대여가능여부를 입력하세요.");
                return false;
            }
            if(!document.userInfo.BUY_DATE.value){
                alert("구매날짜를 입력하세요.");
                return false;
            }
            
           
       
            }
    </script>
</head>
<body> 

<div id="wrap">
        <br><br>
        <b><font size="6" color="gray">도서등록</font></b>
        <br><br><br>
        
        
			
			<form action = "insert2.jsp" method = "post" onsubmit="return checkValue()">
			  <table> 
                <tr>
                    <td id="title">도서코드</td>
                    <td>
                       <input name ="CODE_BOOK" type="text"/>
                    </td>
                </tr>
                                      
                <tr>
                    <td id="title">도서명</td>
                    <td>
                       <input name ="NAME_BOOK" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td id="title">저자명</td>
                    <td>
                        <input name ="AUTHOR" type="text"/>
                    </td>
                </tr>
                  <tr>
                    <td id="title">위치</td>
                    <td>
                        <input name ="LOCATION" type="text"/>
                    </td>
                </tr>
                  <tr>
                    <td id="title">도서대여가능</td>
                    <td>
                        <input name = "POSSIBLE_B" type = "text"/>
                    </td>
                </tr>
                  <tr>
                    <td id="title">도서구매날짜</td>
                    <td>
                        <input name ="BUY_DATE" type="text"/>
                    </td>
                </tr>
                
            </table>
            <br>

			 <input type="submit" value="등록"/>
			</form>


</div>
</body>
</html>