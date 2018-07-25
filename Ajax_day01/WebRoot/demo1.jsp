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
	
		function get(){	
			var request=ajaxFunction();
			//2.发送请求
			//http://localhost：8080/Ajax_day01/demo1.jsp
			/*
			三个参数：
			1.请求类型：Get or Post
			2.请求的路径
			3.是否异步，true or false
			  */
			/*带数据 request.open("GET","ServletDemo1",true); */
			request.open("GET","ServletDemo1?name=aa&age=18",true);
			request.send();
		}
		
		
		function get(){	
			var request=ajaxFunction();
			/*带数据 request.open("GET","ServletDemo1?name=aa&age=18",true); */
			request.open("GET","ServletDemo1?name=aa&age=18",true);
			//3.获取响应数据.注册监听的意思，一会准备的状态发生了改变，那么就执行=号右边的方法
			request.onreadystatechange=function(){
			//前半段表示已经能够正常处理，再判断状态码是否=200
			 if (request.readyState==4 && request.status==200){
				//弹出响应的信息
				alert(request.responseText);
				}	
			}
			request.send();	
		}
	
	</script>


  </head>
  
  <body>
    <h1><a href="" onclick="get()">使用Ajax发送请求。。</a></h1>
  </body>
</html>
