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
		<h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( update ) MILKS 수정 : 우유값인상</h3>   		
	   <form method="post" 
	   		 action="MilkUpdate"   id="milkModify">
	   	  <fieldset> 
	   	  <legend>우유수정폼</legend>
		   	<div class="form-group"> 
		   		<label for="mno2">우유번호 입력</label>
		   		<input type="text" name="mno"   id="mno2"   class="form-control"/>
		   	</div>	
		    <div class="form-group"> 
		   		<label for="mprice2">우유값 입력</label>
		   		<input type="number" name="mprice"   id="mprice2"   class="form-control"/>
		   	</div>	  		
		   	<div class="form-group">
		   		<input type="submit" value="전송"  class="btn  btn-danger"/>
		   	</div>
		   </fieldset>		
	   </form> 
	   <script>
	   	$(document).ready(function(){
	   		$("#milkModify").submit(function(){
	   		    if(	$("#milkModify   #mno2").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkModify   #mno2").focus();
	   		    	return false;
	   		    }
	   		    
	   		    if(	$("#milkModify   #mprice2").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkModify   #mprice2").focus();
	   		    	return false;
	   		    }   		    
	   		});
	   	});
	   </script>         
	</div>
 
  </body>
 </html>