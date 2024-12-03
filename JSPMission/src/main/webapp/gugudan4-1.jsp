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
			<%for (int r = 2; r <=9 ; r += val) {%>
			<tr>
				<% for (int i = 0; i < val; i++) { %>
				<%	if((i + r) <=9){ %>
				<th><%= (i + r) %>단</th>
					<% } %>
				<% } %>
			</tr>

			<% for (int j = 1; j <= 9; j++) { %>
			<tr>
				<% for (int i = 0; i < val; i++) { %>
				<%	if((i + r) <=9){ %>
				<td><%= (i + r) %> x <%= j %> = <%= (i + r) * j %></td>
				<% } %>
				<% } %>
				<% } %>
			</tr>
		<% } %>
		</table>
	</div>
</body>
</html>