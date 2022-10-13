<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>

        <%
            request.setCharacterEncoding("utf-8");

            // Database 연결
            String url_mysql = "jdbc:mysql://localhost:3306/education?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
            String id_mysql = "root";
            String pw_mysql = "qwer1234";

            // JSON 생성
            JSONArray itemList = new JSONArray();

            // Table에 Data 넣기

            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
                Statement stmt_mysql = conn_mysql.createStatement();

                String query = "select scode, sname, sdept, sphone from student";

                ResultSet rs = stmt_mysql.executeQuery(query);

                while(rs.next()){
                    JSONObject tempJson = new JSONObject();
                    tempJson.put("scode", rs.getString(1));
                    tempJson.put("sname", rs.getString(2));
                    tempJson.put("sdept", rs.getString(3));
                    tempJson.put("sphone", rs.getString(4));
                    itemList.add(tempJson);
                }

                conn_mysql.close();
                out.println(itemList);

            }catch(Exception e){
                e.printStackTrace();
            }
        %>
