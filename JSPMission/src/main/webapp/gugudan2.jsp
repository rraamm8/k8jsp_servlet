<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구구단</title>
        <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: center;
            border: 1px solid #ddd;
        }
    </style>
    
</head>
<body>
    <h1>구구단</h1>
    <table>
        <tr>
            <% 
                for (int i = 2; i <= 9; i++) {
            %>
            <th><%= i %>단</th>
            <% } %>
        </tr>
        <% 
            for (int j = 1; j <= 9; j++) {
        %>
        <tr>
            <% 
                for (int i = 2; i <= 9; i++) {
            %>
            <td><%= i %> x <%= j %> = <%= i * j %></td>
            <% } %>
        </tr>
        <% } %>
    </table>
</body>
</html>