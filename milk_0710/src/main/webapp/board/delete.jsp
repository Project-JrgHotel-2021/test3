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
		<h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( delete ) MILKS 삭제  :  삭제할 번호를 입력해주세요</h3>
	   <form method="get" action="MilkDelete"  id="milkDelete">   	  
	   	  <fieldset> 
	   	  <legend>우유삭제폼</legend>
		   	<div class="form-group"> 
		   		<label for="mno3">우유번호 입력</label>
		   		<input type="text" name="mno"   id="mno3"   class="form-control"/>
		   	</div>		
		   	<div class="form-group">
		   		<input type="submit" value="전송"  class="btn  btn-danger"/>
		   	</div>
	   	  </fieldset> 	   	
	   </form>   
	   <script>
	   	$(document).ready(function(){
	   		$("#milkDelete").submit(function(){
	   		    if(	$("#milkDelete   #mno3").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkDelete   #mno3").focus();
	   		    	return false;
	   		    }
	   		});
	   	});
	   </script>       
	</div>
 
  </body>
 </html>