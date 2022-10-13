<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>title</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");

            // Database 연결
            String url_mysql = "jdbc:mysql://localhost:3306/ios?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
            String id_mysql = "root";
            String pw_mysql = "qwer1234";

            // Table에 Data 넣기
            PreparedStatement ps = null;

            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);

                String query = "insert into wtest (id, password) values (?,?)";

                ps = conn_mysql.prepareStatement(query);
                ps.setString(1, userid);
                ps.setString(2, password);

                ps.executeUpdate();

                conn_mysql.close();

            }catch(Exception e){
                e.printStackTrace();
            }

            out.println("입력이 되었습니다.");
        %>
    </body>
</html>