<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang = "ko">
 <head>
   <meta charset="UTF-8"/>
   <title>HTML BASIC</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 </head>
  <body>
  <div class="container  panel panel-warning">
 		<h3  class="panel-heading"> WEB STANDARD - MILK </h3>
 		<table  class="table  table-striped">
 			<caption>ORACLE-MILK</caption>
 			<thead> <tr><th scope = "col">MNO</th><th scope = "col">MNAME</th><th scope = "col">MPRICE</th></tr> 			
	 		 </thead>
 			<tbody>
 				<%=request.getAttribute("result")%>
 			</tbody>
 		</table> 
 	</div>
 
  </body>
 </html>