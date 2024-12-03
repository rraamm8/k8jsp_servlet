<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<div style="display:grid; grid-template-columns:repeat(1, 100px);">
        <%
        int dan = 2;
        //파라미터 가져오기 or 기본값 2
        String sdan = request.getParameter("val");
        
        if(sdan != null) {
        	dan = Integer.parseInt(sdan);
        }		
        %>
        <div style="text-align: center;">
            <%= dan %>단입니다.
        </div>
        <% 
            for(int j = 1; j <= 9; j++) { 
        %>
        <div style="text-align: center;">
            <%= dan %> * <%= j %> = <%= dan * j %>
        </div>
        <%
            	}
        %>
</div>
</body>
</html>