<%@page import="bean.Users"%>
<%@page import="dao.UsersDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<link href="css/newUsers.css" rel="stylesheet" type="text/css" />
    <style>
      .state1{
        color:#aaa;
      }
      .state2{
        color:#000;
      }
      .state3{
        color:red;
      }
      .state4{
        color:green;
      }
    </style>
      <script type="text/javascript" src="js/jquery-2.1.4.min.js" ></script>
 	  <script type="text/javascript" src="js/usersAdmin.js" ></script>
</head>
<body>
  <div id="all">
       <div id="content">
           <div id="top">
           </div>
           <div id="topr">
               <p>了解更多 | 反馈意见</p>
           </div>
           <div id="buttom">
               <div id="buttomt"><p>欢迎注册无限容量的网易邮箱！邮件地址可以登录使用其他网易旗下产品。</p></div>
               <div id="buttoml">
				   	<form action="usersAdd.jsp" method="post">
                   <h3>注册新用户</h3>
                   	<p>
                   		<b>账号</b><input  type="text" name="uaccount"/>
                  		<span class='state1'>请输入用户名</span>
                   	</p>
                  	
                   <p>
                   		<b>密码</b><input  type="password" name="upassword"/>
                   		<span class='state1'>请输入密码</span>
                   </p>
                   
                   <p>
                   		<b>确认</b><input  type="password" name="repass"/>
                   		<span class='state1'>请再次输入密码</span><br/>
                   </p>
                   
                   	<p>
                   		<b>昵称</b><input  type="text" name="uname"/>
                  		<span class='state1'>请输入昵称</span>
                   	</p>
                   
                   	<p>
                   		<b>电话</b><input  type="text" name="utel"/>
                  		<span class='state1'>请输入电话</span>
                   	</p>

                     <p>
                     	<b>邮箱</b><input  type="text" name="uemail"/>
                       	<span class='state1'>请输入邮箱</span>
                     </p>
                     <button type="submit">点击注册 </button> 
                 </form>
              </div>
               <div id="buttomr"><img src="login_images/buttomr.PNG" alt=""></div>
           </div>
           <h5>关于网易 关于网易免费邮 邮箱官方博客 客户服务 隐私政策 | 网易公司版权所有 © 1997-2018</h5>
       </div>
   </div>
   

     
</body>
 </html>
    