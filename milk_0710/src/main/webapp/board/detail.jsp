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
		<h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( read ) 
											 MILKS 검색  : 확인할 우유가격의  번호를 입력해주세요</h3>
	   <form  method="get" action="MilkRead" id="milkReader">
		  <fieldset>
		  <legend>MILKS 검색  </legend>	
		   	<div class="form-group"> 
		   		<label for="mno">우유번호 입력</label>
		   		<input type="text" name="mno"   id="mno"   class="form-control"/>
		   	</div>		
		   	<div class="form-group"> <input type="submit" value="전송"  class="btn  btn-danger"/> </div>
		  </fieldset> 	
	   </form>
	   
	   <script>
	   	$(document).ready(function(){
	   		$("#milkReader").submit(function(){
	   		    if(	$("#milkReader   #mno").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkReader   #mno").focus();
	   		    	return false;
	   		    }
	   		});
	   	});
	   </script>   
	   
	</div>
 
  </body>
 </html>