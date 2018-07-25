<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo3.jsp' starting page</title>
   <script type="text/javascript">
   
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
   
   function checkUserName(){
   	//获取输入框的值
   	var nameshot=document.getElementById("name").value;
   //1.创建对象
   var request=ajaxFunction();
   //2.发送请求
	request.open("POST","CheckUserNameServlet",true);   
	
	request.onreadystatechange=function(){
		if (request.readyState==4 && request.status==200){
		/* alert(request.responseText); */
		var data=request.responseText;
		if(data==1){
		//alert("用户名已存在");
		document.getElementById("span01").innerHTML="<font color='red'>用户名已存在！</font>";
		}else
		{//alert("用户名不存在");
		document.getElementById("span01").innerHTML="<font color='green'>用户名未存在！</font>";
		}
		}

	}
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("nametrue="+nameshot);
   }
 
   </script>
  </head>
 <body>
	<table border="1" width="500">
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="name" id="name"  onblur="checkUserName()"><span id="span01"></span></td> 
		</tr>
		<tr>
			<td>密码</td>
			<td><input type="text" name=""></td>
		</tr>
		<tr>
			<td>邮箱</td>
			<td><input type="text" name=""></td>
		</tr>
		<tr>
			<td>简介</td>
			<td><input type="text" name=""></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="注册"></td>
		</tr>
	</table>
</body>
</html>
