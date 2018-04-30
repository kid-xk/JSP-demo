<%@page import="bean.News"%>
<%@page import="bean.Admin"%>
<%@page import="java.util.List"%>
<%@page import="dao.NewsDao"%>
<%@page import="dao.AdminDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AI研究院_网易专题</title>
    <link rel="stylesheet" href="css/airesearch.css">
</head>
<body>
<!--全局-->
<div class="all">
    <!--标题栏-->
    <div class="top">
        <div id="headl">
            <ul><a href="main.jsp">网页智能首页</a>
            </ul>
            <p>应用</p>
        </div>
        <div id="headr">
            <ul>
                <li id="headrli1"></li>
                <li id="headrli2"><a href="usersLogin.jsp">登录</a></li>
                <li id="headrli3"><a href="newUsers.jsp">免费注册</a></li>
            </ul>
        </div>
    </div>
    <!--AI研究院图片展示-->
    <div class="top-one">
        <div class="one-center"></div>
    </div>
    <!--内容展示-->
    <div class="center">
        <!--左边话题-->
        <div class="center-all">
            <!--左边内部-->
            <div class="cover">
            <!--第一个-->
        <div class="center-left-one">
        <%
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			NewsDao newsDao = new NewsDao();

			List<News> list1 = newsDao.getAllNews();
			for (News s : list1) {
		%>
            <div class="one">
               <div class="pic">
                   <a href="article.jsp?id=<%=s.getId()%>"><img src="<%=s.getNimg()%>" alt=""></a>
               </div>
            </div>
            <div class="two">
                <h3><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></h3>
                <div class="news_tag">
                    <strong class="barlink">
                        <a class="link">网易智能</a>
                    </strong>
                    <div class="keywords">
                      <a href="article.jsp?id=<%=s.getId()%>"><%=s.getType()%></a>
                    </div>
                    <span class="time"><%=s.getDate()%></span>
                </div>
                <div class="parent">
                    <div class="share"></div>
                    <div class="tie">
                    </div>
                   <div class="tie-icon">31</div>
                </div> 
            </div>
            
                        <div class="one">
               <div class="pic">
                   <a href="article.jsp?id=<%=s.getId()%>"><img src="<%=s.getNimg()%>" alt=""></a>
               </div>
            </div>
            <div class="two">
                <h3><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></h3>
                <div class="news_tag">
                    <strong class="barlink">
                        <a class="link">网易智能</a>
                    </strong>
                    <div class="keywords">
                      <a href="article.jsp?id=<%=s.getId()%>"><%=s.getType()%></a>
                    </div>
                    <span class="time"><%=s.getDate()%></span>
                </div>
                <div class="parent">
                    <div class="share"></div>
                    <div class="tie">
                    </div>
                   <div class="tie-icon">31</div>
                </div> 
            </div>
            
            
            
            
            <% }%> 
                <div class="over">
                   <p> :-)已经到最后啦~</p>
                </div>
        </div>
            </div>
            <!--栏目简介-->
            <div class="center-right">
                <div class="right-top">
                    <div class="topone"></div>
                    <div class="toptwo"><h2>栏目简介</h2></div>
                </div>
                <div class="right-buttom">
                    <div class="buttom1">
                    </div>
                    <div class="buttom2">
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;由网易智能频道与杭州研究院共同打造之栏目，专注AI行业研究与深度分析，提供技术应用交流。投稿邮箱 StudioAI@163.com，公众号 Smartman163。
                        </p>
                    </div>
                    <div class="buttom3" ></div>
                </div>
            </div>
        </div>

    </div>
    <!--底部-->
    <div class="foot">
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

</div>
</body>
</html>