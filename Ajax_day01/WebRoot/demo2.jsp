<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		//1.创建xmlhttprequest 对象
		function ajaxFunction(){
  		 var xmlHttp;
  		 try{ // Firefox, Opera 8.0+, Safari
        xmlHttp=new XMLHttpRequest();
   			 }
   		 catch (e){
			   try{// Internet Explorer
	         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	    		  }
	    catch (e){
	      try{
	         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	      }
	      catch (e){}
	      }
    }
	   return xmlHttp;
 }
	
		function Post(){	
			var request=ajaxFunction();
			
			request.onreadystatechange=function(){
			//前半段表示已经能够正常处理，再判断状态码是否=200
			 if (request.readyState==4 && request.status==200){
				//弹出响应的信息
				alert("post: "+request.responseText);
				}	
			}
			
			request.open("Post","ServletDemo1",true);
			//如果使用的是Post方式带数据，那么这里添加头，说明提交的数据类型是一个经过url编码的form表单数据
			request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			//post带数据过去
			request.send("name=bb&age=19");
		}

	</script>


  </head>
  
  <body>
    <h1><a href="" onclick="Post()">使用Ajax发送Post。。</a></h1>
  </body>
</html>
