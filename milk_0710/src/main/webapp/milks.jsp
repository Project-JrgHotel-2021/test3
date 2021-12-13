<%@page import="java.sql.*"%>
<%@page  language = "java"  contentType="text/html; charset=utf-8"  pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
	<!-- [2] CSS : 꾸미기  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- [3] JS : 움직임  -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
 </head>
 <body>

	<!-- [1] HTML :틀   -->
<!--  	<div class="container  panel panel-warning">
 		<h3  class="panel-heading"> WEB STANDARD - MILK </h3>
 		<table  class="table  table-striped">
 			<caption>ORACLE-MILK</caption>
 			<thead> <tr><th>MNO</th>  <th>MNAME</th> <th>MPRICE</th>  </tr></thead>
 			<tbody>
	 		 
 			</tbody>
 		</table> 
 	</div> -->
	<!-- [1] HTML :틀   -->
 <%-- 	<div class="container  panel panel-warning">
 		<h3  class="panel-heading"> WEB STANDARD - MILK </h3>
 		<table  class="table  table-striped">
 			<caption>ORACLE-MILK</caption>
 			<thead> <tr><th scope="col">MNO</th>  <th  scope="col">MNAME</th> <th  scope="col">MPRICE</th>  </tr></thead>
 			<tbody>
	 			<% 
		 			Connection conn = null;	Statement  stmt = null; 	ResultSet  rset = null;
		 			try{     
		 				 //Class.forName("com.mysql.jdbc.Driver");
		 				// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/day010?useSSL=false","root" , "1234");
		 				   
		 			  		Class.forName("oracle.jdbc.driver.OracleDriver");   
		 			    	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ouser", "1111");
		 				   if(conn != null){/* out.println("db1접속완료!"); */}
		 				   stmt = conn.createStatement();
		 				   rset = stmt.executeQuery("select * from milk  order by  mno  asc");  //표
		 				  while(rset.next()){
			 				   out.println("<tr><td>"+ rset.getInt("MNO") +"</td>"+
			 								   "<td>"+ rset.getString("MNAME")+"</td>"+
			 						           "<td>"+ rset.getInt("MPRICE") +" </td></tr>");	
		 				  }
		 			}catch(Exception e){  e.printStackTrace(); }
		 			finally{
		 				if(rset != null){ try{rset.close();}catch(Exception e){} }  
		 				if(stmt != null){ try{stmt.close();}catch(Exception e){} }  
		 				if(conn != null){ try{conn.close();}catch(Exception e){}}  
		 			}
	 					
	 				 
	 			%>
 			</tbody>
 		</table> 
 	</div>
 --%>
 
 	<div class="container  panel panel-warning">
 		<h3  class="panel-heading"> WEB STANDARD - MILK </h3>
 		<table  class="table  table-striped">
 			<caption>ORACLE-MILK</caption>
 			<thead> <tr><th scope="col">MNO</th>  <th  scope="col">MNAME</th> <th  scope="col">MPRICE</th>  </tr></thead>
 			<tbody>
 				<%@page import="java.util.*"%>
 				
	 			<%=request.getAttribute("result")	    
	 			%>
 			</tbody>
 		</table> 
 	</div>
 
 	
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
 	</div><!--  end container  -->
 	
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
	   
	</div><!-- container END -->   

	<!--   							  -->  
	<!--   							  -->   
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
	</div><!-- container END --> 
  
	<!--   							  -->  
	<!--   							  -->   
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
	</div><!-- container END -->  
      
 	
 </body>
</html>
 