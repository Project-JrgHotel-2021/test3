<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
 <body>
<%
	request.setCharacterEncoding("UTF-8");
	
	
	
%>
	<div class="container panel panel-warning">
		<h3 class="panel-heading">MILK - CRUD( select )</h3>
		<table class="table table-striped">
			<thead>
			<tr> <th scope="col">번호</th> <th scope="col">이름</th> <th scope="col">가격</th> </tr>
			</thead>
			<tbody>

  				<%=request.getAttribute("result")%>
			</tbody>
		</table>
 
	</div>
	 
</body>

</html>