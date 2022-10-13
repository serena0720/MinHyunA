<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

        <%
            request.setCharacterEncoding("utf-8");
            String code = request.getParameter("code");
            String name = request.getParameter("name");
            String dept = request.getParameter("dept");
            String phone = request.getParameter("phone");

            // Database 연결
            String url_mysql = "jdbc:mysql://localhost:3306/education?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
            String id_mysql = "root";
            String pw_mysql = "qwer1234";

            // Table에 Data 넣기
            PreparedStatement ps = null;

            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);

                String query = "update student set sname=?, sdept=?, sphone=? where scode=?";

                ps = conn_mysql.prepareStatement(query);
                ps.setString(1, name);
                ps.setString(2, dept);
                ps.setString(3, phone);
                ps.setString(4, code);

                ps.executeUpdate();

                conn_mysql.close();

            }catch(Exception e){
                e.printStackTrace();
            }

        %>
