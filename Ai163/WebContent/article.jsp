<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.naming.factory.MailSessionFactory"%>
<%@page import="java.util.List"%>
<%@page import="dao.NewsDao"%>
<%@page import="bean.News"%>
<%@page import="dao.TieziDao"%>
<%@page import="bean.Tiezi"%>
<%@page import="bean.Users"%>
<%@page import="dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<%
	//处理中文页面跳转中出现乱码
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	//提交News实例到数据库
	NewsDao newsDao = new NewsDao();
	News news = null;
	news = newsDao.getNewsById(Integer.parseInt(id));
	//显示详细信息
	if (news != null) {
%>
<title><%=news.getTittle()%></title>
<link rel="stylesheet" href="css/article.css">
</head>
<body>
	<div class="top">
		<div id="head">
			<div id="headl">
				<ul>
					<a href="main.jsp">网易智能首页</a>
				</ul>
				<p>应用</p>
			</div>
			<div id="headr">
				<ul>
					<li id="headrli1"></li>
					<li id="headrli2"><a href="usersLogin.jsp">登录</a></li>
					<li id="headrli3"><a href="newUsers.jsp">免费注册</a></li>
					<li id="headrli3">用户:周杰伦</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="content_top">
			<img src="article_img/advertising.PNG" alt="" />
		</div>
		<div class="container">
			<div class="container_left">
				<div class="title">
					<div style="font-size: 14px">
						<a href="main.jsp">网易智能 </a>> 正文
					</div>
					<br>
					<div>
						<h1 style="font-family: 黑体"><%=news.getTittle()%></h1>
					</div>
					<div style="font-size: 14px; margin-top: -10px;">
						<%=news.getDate().substring(0, 19)%>
					</div>
				</div>
				<div class="left">
					<ul id="ul1">
						<li><img src="article_img/7.PNG" alt=""> &nbsp;&nbsp; 2</li>
						<li><img src="article_img/1.PNG" alt=""> &nbsp;&nbsp;易信</li>
						<li><img src="article_img/3.PNG" alt=""> &nbsp;&nbsp;
							微信</li>
						<li><img src="article_img/4.PNG" alt="">&nbsp;&nbsp;
							QQ空间</li>
						<li><img src="article_img/5.PNG" alt=""> &nbsp;&nbsp;微博</li>
						<li><img src="article_img/6.PNG" alt=""> &nbsp;&nbsp;更多</li>
					</ul>
				</div>
				<div class="right">
					<hr color="gray">
					<br>
					<center>
						<img src="<%=news.getNimg()%>" alt="" name="imgs" />
					</center>
					<h4 id="paragraph">本文系网易智能工作室（公众号
						smartman163）出品。聚焦AI，读懂下一个大时代！</h4>
					<p class="pa1">
						&nbsp;&nbsp;&nbsp;&nbsp;<%=news.getTop()%></p>
					<p class="pa1">
						&nbsp;&nbsp;&nbsp;&nbsp;<%=news.getCenter()%></p>
					<p class="pa1">
						&nbsp;&nbsp;&nbsp;&nbsp;<%=news.getFoot()%></p>
					<div class="text">
						本文来源：网易智能 责任编辑:<%=news.getAuthor()%></div>
					<%
						} else {
							out.print("<h1 style='color:red;'>失败</h1>");
						}
					%>

					<hr class="hr1">
					<form action="addTiezi.jsp">
						<table border="1" cellspacing="0" align="center">
							<input type="hidden" name="id" value="<%=id%>" />
							<tr>

								<td><input type="text" name="uaccount" placeholder="帐号" />a123456</td>
							</tr>

							<tr>
								<td><input type="text" name="uname" placeholder="使用名" />周杰伦</td>
							</tr>

							<tr>
								<td style="color:red;"><input type="password" name="upassword"
									placeholder="密码" />你已经登录</td>
							</tr>

							<tr>
								<td><textarea rows="15" cols="90" name="content"
										placeholder="评论内容"></textarea></td>
							</tr>
							<tr>
							<td><input type="date" name="date" placeholder="日期"/></td>
							</tr>
							
							<tr>
								<td colspan="2">
									<button type="submit">登录并回复</button>
									<button type="reset">重置</button>
								</td>
							</tr>
						</table>
					</form>

					<br>
					<table border="1" cellspacing="0" align="center">
					<%
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");

						UsersDao usersDao = new UsersDao();

						List<Users> list1 = usersDao.getAllUsers();
						for (Users u : list1) {
					%>
					
						<%
							//处理中文页面跳转中出现乱码
							request.setCharacterEncoding("utf-8");
							response.setCharacterEncoding("utf-8");
							TieziDao tieziDao = new TieziDao();

							Tiezi tiezi = new Tiezi();
							List<Tiezi> list = tieziDao.getAlltiezi();
							for (Tiezi t : list) {
						%>
						<div>

							<div class="huitie">
								<div class="kuangjia">
									<div class="portrait">
										<img src="article_img/19.jpg" alt="" height="50px"
											width="50px">
									</div>
									<div class="name"><%=u.getUname()%></div>
									<div class="laiyuan">[湖北省手机网友]</div>
									<div class="date"><%=t.getDate()%></div>
								</div>
								<div class="tiezi"><%=t.getContent()%></div>
								<div></div>
								<div class="hui_1">
									<div class="hui_2">顶</div>
									<div class="hui_2">踩</div>
									<div class="hui_2">回复</div>
									<div class="hui_2">分享</div>
								</div>

								<%
									}
								%>
	<% 
		}
     %>
					</table>

					<div class="wen">
						<div class="wenzhang">
							<div class="picture">
								<a href=""><img src="article_img/15.jpeg" alt=""
									height="106px"></a>
							</div>
							<div class="wen_right">
								<h3>
									<a href="">广西小伙回乡仅花10万造文艺别墅，还DIY了一间咖啡馆</a>
								</h3>
								<p style="font-size: 14px; color: #545454">别墅 装饰 | 网易家具综合</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container_right">
				<input type="text"
					style="height: 30px; width: 300px; margin-left: 15px;"
					placeholder="交友">
				<div class="pic">
					<img src="article_img/8.PNG" alt="">
				</div>
				<div class="pic">
					<img src="article_img/9.PNG" alt="">
				</div>
				<div>
					<div class="dao">
						<div class="da">
							<b>大家都爱看</b>
						</div>
						<div class="news">进入新闻频道></div>
					</div>
					<h3 class="ep-title-3">&nbsp;女生遭闺蜜嫌弃"胖" 狂减42斤变校</h3>
					<ul class="mod-f12list">
						<li class="li2">人间<span class="cLGray">|</span>宝贝，我们要用什么样的方式打开你
						</li>
						<li class="li2">财经<span class="cLGray">|</span>停牌9个月乐视网复牌一字跌停
							资金
						</li>
						<li class="li2">科技<span class="cLGray">|</span>苹果智能音箱2月9日上市
							何时在华
						</li>
						<li class="li2">体育<span class="cLGray">|</span>巴黎官方宣布签下前皇马10号
							欧冠
						</li>
						<li class="li2">娱乐<span class="cLGray">|</span>乐嘉问刘涛：王珂发病是否打过你？
						</li>
						<li class="li2">时尚<span class="cLGray">|</span>她专注演戏演技一流
							会穿有辨识度
						</li>
						<li class="li2">哒哒<span class="cLGray">|</span>没骗你，你朋友圈发的图暴露了你的
						</li>
					</ul>
				</div>
				<div class="pic">
					<img src="article_img/10.PNG" alt="">
				</div>
				<div>
					<div class="dao">
						<div class="da">
							<b>新闻推荐</b>
						</div>
						<div class="news">进入 新闻频道></div>
					</div>
					<h3 class="ep-title-3">&nbsp;新一轮暴雪将席卷中东部多省</h3>
					<ul class="mod-f12list">
						<li class="li2">科技<span class="cLGray">|</span>苹果智能音箱2月9号上市
							何时在华
						</li>
						<li class="li2">手机<span class="cLGray">|</span>ios11.3手动关闭降速功能：全黑模
						</li>
						<li class="li2">旅游<span class="cLGray">|</span>伊朗其实很闷骚！所以去伊朗必知道
						</li>
					</ul>
				</div>
				<div class="pic">
					<img src="article_img/12.PNG" alt="">
				</div>
				<div>
					<div class="dao">
						<div class="da">
							<b>科技企业库</b>
						</div>
						<div class="news">进入新闻频道></div>
					</div>
					<ul class="clearfix">
						<li>谷歌</li>
						<li>雅虎</li>
						<li>Facebook</li>
						<li>百度</li>
					</ul>
					<ul class="clearfix">
						<li>携程</li>
						<li>京东商城</li>
						<li>网易</li>
						<li>新浪</li>
					</ul>
					<ul class="clearfix">
						<li>腾讯</li>
						<li>苏宁易购</li>
						<li>搜狗</li>
						<li>畅游</li>
					</ul>
					<ul class="clearfix">
						<li>亚马逊</li>
						<li>当当网</li>
						<li>搜狐</li>
						<li>盛大网络</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
		<ul class="footer">
			<li>© 1997-2018 网易公司版权所有 About NetEase |</li>
			<li>公司简介</li>
			<li>联系方法 |</li>
			<li>招聘信息 |</li>
			<li>客户服务 |</li>
			<li>隐私政策 |</li>
			<li>广告服务 |</li>
			<li>网站地图 |</li>
			<li>意见反馈 |</li>
			<li>不良信息举报</li>

		</ul>
	</div>

</body>
</html>