<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>

</head>
<body>
	<h1>구구단</h1>
		<%
        int val = 3;
        //파라미터 가져오기 or 기본값 3
        String sval = request.getParameter("val");
        
        if(sval != null) {
        	val = Integer.parseInt(sval);
        }		
        %>

	<div>
		<table>
			<tr>
				<% for (int i = 2; i <= (2 + val -1); i++) { %>
				<th><%= i %>단</th>
				<% } %>
			</tr>
			<% for (int j = 1; j <= 9; j++) { %>
			<tr>
				<% for (int i = 2; i <= (2 + val -1); i++) { %>
				<td><%= i %> x <%= j %> = <%= i * j %></td>
				<% } %>
			</tr>
			<% } %>
			
			
			<tr>
				<% for (int i = (2 + val); i <= 9; i++) { %>
				<th><%= i %>단</th>
				<% } %>
			</tr>
			<% for (int j = 1; j <= 9; j++) { %>
			<tr>
				<% for (int i = (2 + val); i <= 9; i++) { %>
				<td><%= i %> x <%= j %> = <%= i * j %></td>
				<% } %>
			</tr>
			<% } %>
		</table>
	</div>
</body>
</html>