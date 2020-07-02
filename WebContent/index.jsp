<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title >메인 </title>
</head>

<style type="text/css">
   txt{
   	background: #fff;
      font-size: 40px;
      font-weight: bold;
      text-shadow: 10px 11px #ffffff, 4px 4px 0px #EAEAEA;
   }
   
   div {
      margin: 0 0 0 0;
      padding: 0 0 0 0;
      border: 0;
      float: center;
   }
   
   ul {
   	  list-style:none;
   	  margin:0;
   	  padding:0;
   }
   
   li{
     margin: 0 0 0 0;
     padding: 0 0 0 0;
     border: 0;
     float: center;
   
   }
   img{
 	border: 3px slolid red;  
   }
</style>

<body>
<center>
   <div>
      <img src="image/book.png" alt="Image is None" width="400" height="150">
       <a href = "memberinfo.jsp">member info</a>
       <a href="logout.jsp">Log out</a>
       <br><br><br>
   </div>
   </center>
<center>
    <img src="image/line.png" alt="Image is None" width="1400" height="30">

   
   
   <center>
	     <txt>도서관에 오신걸 환영합니다</txt>
	  </center>

   

  
   <center>
    <ul>
      <li><a href="book_rent.jsp"><img src="image/rent_b.PNG" alt="Image is None" width="350" height="150" /></a></li>
      <li><a href="book_return.jsp"><img src="image/return_b.PNG" alt="Image is None" width="400" height="150"/></a></li>
      <li><a href="seat_rent.jsp"><img src="image/rent_s.PNG"alt="Image is None" width="300" height="150"/></a></li>
       </ul>
       </center>

   <br><br><br>
   <center>
    <ul>
      <li><a href="insert.jsp">도서 등록</a></li>
      <li><a href="delete.jsp">도서 삭제</a></li>
       </ul>
       </center>
   
   
   
   <div>
      <img src="image/line.png" alt="Image is None" width="1400" height="30">
   </div>
	
</body>
</html>