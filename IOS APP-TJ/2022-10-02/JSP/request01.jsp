<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>title</title>
    </head>
    <body>
        <%
            // http://localhost:8080/ios/request01.jsp?userid=james&passwd=2323
            
            request.setCharacterEncoding("utf-8");

            String id = request.getParameter("userid");
            String password = request.getParameter("passwd");

            out.println("당신의 id는 " + id + "<br>");
            out.println("당신의 암호는 " + password + "<br>");
        %>
    </body>
</html>