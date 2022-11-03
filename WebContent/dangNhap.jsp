<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <form action="ktdn.jsp" method="post">
          un: <input name="txtun" type="text"><br>
          pass:<input name="txtpass" type="password"><br>
          <input name="but1" type="submit" value="login">
          <%if(request.getParameter("kt")!=null){
        	 out.print("dang nhap sai");
          }%>
       </form>
</body>
</html>