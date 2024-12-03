<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<%
	JDBConnect jdbc = new JDBConnect();
	
	String sql = "select num, title, name, postdate, visitcount FROM board";
	Statement stmt = jdbc.con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	
	out.println("<table border='1'>");
	out.println("<tr><th>num</th><th>title</th><th>id</th><th>postdate</th><th>visitcount</th></tr>");
	
	while (rs.next()){
		String num = rs.getString(1);
		String title = rs.getString(2);
		String id = rs.getString("id");
		java.sql.Date postdate = rs.getDate("postdate");
		int visitcount = rs.getInt("visitcount");
		
		out.println("<tr>");
		out.println("<td>" + num + "</td>");
        out.println("<td>" + title + "</td>");
        out.println("<td>" + id + "</td>");
        out.println("<td>" + postdate + "</td>");
        out.println("<td>" + visitcount + "</td>");
        out.println("</tr>");
	}
	
	out.println("</table>");
	
	jdbc.close();
	
	%>
</body>
</html>