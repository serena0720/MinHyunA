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
        // http://localhost:8080/ios/request02.jsp?id=james

        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");

        if(id.equals("james")){
            out.println("Welcome!");
        }else{
            out.println("Denied!");
        }
        

        %>
    </body>
</html>