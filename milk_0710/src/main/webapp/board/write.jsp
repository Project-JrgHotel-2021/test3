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
 		<h3  class="panel-heading">WEB STANDARD - MILK - CRUD( insert ) </h3>
	   <form method="post" 
	   		 action="MilkCreate"   id="milkInsert">
	   	  <fieldset> 
	   	  <legend>우유입력폼</legend>
		   	<div class="form-group"> 
		   		<label for="mname4">우유이름</label>
		   		<input type="text" name="mname"   id="mname4"   class="form-control"/>
		   	</div>	
		    <div class="form-group"> 
		   		<label for="mprice4">우유값</label>
		   		<input type="number" name="mprice"   id="mprice4"   class="form-control"/>
		   	</div>	  		
		   	<div class="form-group">
		   		<input type="submit" value="전송"  class="btn  btn-danger"/>
		   	</div>
		   </fieldset>		
	   </form> 
	      <script>
		   	$(document).ready(function(){
		   		$("#milkInsert").submit(function(){
		   		    if(	$("#milkInsert   #mname4").val() == "" ){
		   		    	alert("빈칸입니다.\n확인해주세요");
		   		    	$("#milkInsert   #mname4").focus();
		   		    	return false;
		   		    }
		   		    if(	$("#milkInsert   #mprice4").val() == "" ){
		   		    	alert("빈칸입니다.\n확인해주세요");
		   		    	$("#milkInsert   #mprice4").focus();
		   		    	return false;
		   		    }	    
		   		});
		   	});
		   </script>   
 	</div>
  </body>
 </html>