<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">trang chu</a></li>
      
      <li><a href="#">gio hang</a></li>
       <li><a href="#">thanh toan</a></li>
        <li><a href="#">lich su mua hang</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="dangnhaplogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
    <table width="1000" align="center">
   <tr>
      <td width="200" valign="top">
      <table>
      <%loaibo lbo=new loaibo();
        ArrayList<loaibean> dsloai=lbo.getloai();
        for(loaibean l: dsloai){
      %>
          <tr>
           <td>
            <a href="htsach.jsp?ml=<%=l.getMaloai()%>"> 
              <%=l.getTenloai() %>
             </a>
          </td>
          </tr>
          <%} %>
       </table>
        </td>
      <td width="600" valign="top"> 
         <table>
      <form action="ktdn" method="post">
          un: <input name="txtun" type="text"><br>
          pass:<input name="txtpass" type="password"><br>
          <input name="but1" type="submit" value="login">
          <%if(request.getParameter("kt")!=null){
        	 out.print("dang nhap sai");
          }%>
       </form>
       </table>
        
       </td>
      <td width="200" valign="top"> 
        <form action="htsach.jsp" method="post">
 		 <input  name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
  		 <input name="butt" type="submit" value="Search">
		</form>
     </td>
   </tr>
  
</table>
</body>

</body>
</html>