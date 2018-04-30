<%@page import="bean.News"%>
<%@page import="bean.Admin"%>
<%@page import="java.util.List"%>
<%@page import="dao.NewsDao"%>
<%@page import="dao.AdminDao"%>
<%@page import="bean.Users"%>
<%@page import="dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Users users = null;
	users = (Users) session.getAttribute("users");
	if (users != null) {
%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>网易智能频道_人工智能专业媒体及产品服务平台</title>
<meta name="keywords" content="网易智能 网易智能频道 网易智能工作室 人工智能 AI AI研究院 智能菌 开物沙龙" />
<meta name="description" content="网易智能频道定位人工智能等前沿科技领域的专业媒体及产品服务平台，面向人工智能等行业的从业者和关注者。" />
    <link rel="stylesheet" href="css/main_css.css">
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	UsersDao usersDao = new UsersDao();

	List<Users> list = usersDao.getAllUsers();
	for (Users u : list) {
%>


<div id="head">
    <div id="headl">
        <ul><a href="main.jsp">网易智能首页</a>
        </ul>
        <p>应用</p>
    </div>
    <div id="headr">
        <ul>
            <li id="headrli1"></li>
            <li id="headrli2"><a href="usersLogin.jsp">登录</a></li>
            <li id="headrli3"><a href="newUsers.jsp">免费注册</a></li>
            <li id="headrli3">用户:<%=u.getUname() %></li>
        </ul>
      <% 
		}
      %>
    </div>
</div>
<div id="wyzn">
    <div id="logo"></div>
</div>
<div id="daohang">
    <ul>
        <li id="daohangli1"><a href="main.jsp">◎首页</a></li>
        <li><a href="#">AI英雄</a></li>
        <li><a href="aireSearch.jsp">AI研究院</a></li>
        <li><a href="">开物沙龙</a></li>
        <li><a href="">科技</a></li>
        <li><a href="">手机</a></li>
        <li><a href="make.jsp">网易波特</a></li>
        <li><a href="">网易智造</a></li>
        <li><a href="">网易青果</a></li>
    </ul>
</div>

<div id="tupian">
    <div id="tupian1"><p>优步CEO:十年内就让美国人坐上飞行汽车出行！</p></div>
    <div id="tupian2"><p>2017中国AI英雄风云榜 揭晓中国最牛AI人物</p></div>
    <div id="tupian3">
        <div id="tupian3_1">谷歌的AI办事处"全球开花" 现在又开到了巴黎</div>
        <div id="tupian3_2">机器人相互教学让知识瞬间转移 AI迎来指数级进化</div>
    </div>
    <div id="tupian4"><p>为何电动汽车没未来感？设计和生产线无根本性改变</p></div>
</div>
<div id="body">
    <div id="left">
        <div class="title1" style="">[ 最新快讯 ]</div>
        <hr>
        <%
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			NewsDao newsDao = new NewsDao();

			List<News> list1 = newsDao.getAllNews();
			for (News s : list1) {
		%>
        <div class="text"><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></div>
        <div class="text"><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></div>
        <div class="text"><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></div>
        <!-- <div class="text"><a href="#"></div>
        <div class="text"><a href="#">AR行业的大事儿！脸书开源Detectron计算机视觉算法</a></div>
        <div class="text"><a href="#">达沃斯报告：AI有炒作 但更多老板愿意用AI替换人</a></div>
        <div class="text"><a href="#">首个飞行汽车专业面世！未来人类出行都靠飞？</a></div>
        <div class="text"><a href="#">商汤科技和招商蛇口达成战略合作 共建联合创新中心</a></div>
        <div class="text"><a href="#">《新一代人工智能发展规划》执笔组李修全解读AI现状</a></div>
        <div class="text"><a href="#">对话微软李笛：小冰进入家庭设备，如何笑到最后</a></div>
        <div class="text"><a href="#">利用AI能力 百度手机助手推出AI智能化分发计划</a></div>
        <div class="text"><a href="#">HTC VIVE宣布VIVE FOCUS发货 引进VR游戏《破晓唤龙者》</a></div> -->
	<%
		}
	%>
    </div>
    
    
    <div id="bodyl">
        <div class="title1">[ 今日热点 ]</div>
         <%
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			List<News> list2 = newsDao.getAllNews();
			for (News s : list2) {
		 %>
        <div class="bodyl1">
           <a href="article.jsp?id=<%=s.getId()%>"><div name="imgs" class="bodyl1_1" style="background-image: url(<%=s.getNimg()%>)"></div></a>
            <div class="bodyl1_2">
                <div class="bodyl1_2_1"><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></div>
                <div class="bodyl1_2_2">
                    <div class="wyzn"></div>
                    <p><%=s.getDate().substring(0,19)%></p>
                </div>
            </div>
       </div>
       
       
        <div class="bodyl1">
           <a href="article.jsp?id=<%=s.getId()%>"><div name="imgs" class="bodyl1_1" style="background-image: url(<%=s.getNimg()%>)"></div></a>
            <div class="bodyl1_2">
                <div class="bodyl1_2_1"><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></div>
                <div class="bodyl1_2_2">
                    <div class="wyzn"></div>
                    <p><%=s.getDate().substring(0,19)%></p>
                </div>
            </div>
       </div>
       
    <%
		}
	%>
    </div>
    
    
    
    
    
    
    <div id="bodyr">
        <div id="bodyryx">
            <div class="title1">[ AI英雄 ]</div>
            <a href=""><div id="bodyryx1"></div></a>
            <a href=""><div id="bodyryx2"></div></a>
        </div>
        
        
        
        
      
        <div id="bodyryjy">
            <div class="title1">[ AI研究院 ]</div>
        <%
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			List<News> list3 = newsDao.getAllNews();
			for (News s : list3) {
		%>
            <div>
                <a href="article.jsp?id=<%=s.getId()%>"><div name="imgs" class="bodyl1_1" style="border:1px solid #ccc;background-image: url(<%=s.getNimg()%>); width:80px; height:80px;"></div></a>
                <div class="bodyryjy1"><p style="margin-top:10px;">【<%=s.getType()%>】</p>
             <div class="bodyryjy1_1"><a href="article.jsp?id=<%=s.getId()%>"><p><%=s.getTittle()%></p></a>
          	</div>
	
             </div>
            </div>
    <%
		}
	%>
     </div> 
        <div id="bodyrsl">
            <div class="title1">[ 开物沙龙 ]</div>
        <%
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			List<News> list4 = newsDao.getAllNews();
			 int i=5;
			for (News s : list4) {
		%>
		
            <div class="bodyrsl1">
                <a href="article.jsp?id=<%=s.getId()%>"><div class="bodyrsl1_1">第<%=i%>期 |</div>
                <div class="bodyrsl1_2"><%=s.getTittle()%></div></a>
            </div>
         <%   
		i--;
         %> 
            
             
            
    <%
		}
	%>   
	 </div> 
  </div>      
    </div>
</div>


<div id="foot">
    <ul>
        <li>© 1997-2018 网易公司版权所有 <a href="">About NetEase</a> |   </li>
        <li><a href="">公司简介</a> |</li>
        <li><a href=""> 联系方法</a> |</li>
        <li><a href="">招聘信息</a> |</li>
        <li><a href="">客户服务</a> | </li>
        <li><a href="">隐私政策</a> |</li>
        <li><a href="">广告服务</a> |</li>
        <li><a href="">网站地图</a> | </li>
        <li><a href=""> 意见反馈</a> |</li>
        <li><a href=""> 不良信息举报</a></li>
    </ul>
</div>
		
</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>