<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>title</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");

            // Database 연결
            String url_mysql = "jdbc:mysql://localhost:3306/ios?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
            String id_mysql = "root";
            String pw_mysql = "qwer1234";

            // JSON 생성
            JSONArray itemList = new JSONArray();

            // Table에 Data 넣기

            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
                Statement stmt_mysql = conn_mysql.createStatement();

                String query = "select id, password from wtest";

                ResultSet rs = stmt_mysql.executeQuery(query);ß

                while(rs.next()){
                    JSONObject tempJson = new JSONObject();
                    tempJson.put("userid", rs.getString(1));
                    tempJson.put("password", rs.getString(2));
                    itemList.add(tempJson);
                }

                conn_mysql.close();
                out.println(itemList);

            }catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>