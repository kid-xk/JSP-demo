/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : 163

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2018-01-29 18:33:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `passwords` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `tittle` varchar(50) DEFAULT NULL,
  `top` longtext,
  `center` longtext,
  `foot` longtext,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nimg` varchar(100) DEFAULT NULL,
  `author` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '机器人 微软', '微软研发绘图机器人 根据文字描述画出相应图像', '																																																																																																																																																																																																																																																																																																																														网易科技讯 1月22日消息，据CNBC报道，在推迟了近一年后，亚马逊无人便利店Amazon Go周\r\n一正式向公众开放。Amazon Go是亚马逊首个自动零售店，承诺“不用排队，不用结账，\r\n没有收银台”，将是便利店和零售行业的游戏规则改变者。', '																																																																																																																																																																																																																																																																																																																																这将测试自动售卖技术能否实现，此前有报道称，2017年初自动结账的技术无法按计划工作。同时这也将带来亚马逊能否创造就业的问题，也将测试消费者是否欢迎全渠道、技术先进零售体验。该店位于亚马逊西雅图新总部的中心位置，占地面积1800平方英尺，原本计划在2017年初向公众开放。但直到今天该店依然只对亚马逊职员测试，亚马逊称之为“Just Walk Out”（拿了就走）技术，使用的是电脑视觉、深度学习和传感器融合技术，很多技术是用于开发自动驾驶汽车。在店里消费者买东西很简单，只要扫Amazon Go应用，就可以进店拿东西走人。亚马逊在后台跟踪顾客购物全过程，当顾客走出店后，亚马逊就会自动从顾客账户上扣款，然后发送账单。', '																																																																																																																																																																																																																																																																																																																																据美国劳工部称，截止2016年5月美国有350多万人从事收银工作，其中便利店有近90万人。虽然Amazon Go会让很多人失去工作，但也会雇佣人准备\r\n原料、生产商品、招呼顾客和整理货架。（木秀林）', '2018-01-28 10:30:00', 'article_img//one.jpeg', '张三');
INSERT INTO `news` VALUES ('2', '人工智能', '柯洁：职业棋手与AI的差距没那么大 顶多让三子', '					  【网易智能讯 1月26日消息】1月24日深夜，围棋冠军柯洁在微博上发表文章，谈到了职业棋手与人工智能的差距。', '					  柯洁认为，职业棋手与人工智能的真正差距在于心态，“和人类下棋的时候是英勇无畏的，”柯洁表示，和AI下棋，自己的心态是“棋未先行心态已崩”。<br/>\r\n  柯洁同时表示，如果以一个平和的心态去面对，差距不会有想象中那么大，差距“绝对不会超过三子”。<br/>\r\n  柯洁表示，希望有AI真的到了AlphGo Zero的水平，可以放下尊严去下正式的让子棋，给爱好者们看看到底又多大差距。柯洁还称，在1月24日执黑与腾讯的AI绝艺下了一盘被让两子（黑贴6.5大约等于让先倒贴目）赢了一盘。', '					  2017年5月，柯洁在乌镇与AlphaGo对弈，三场皆告负。', '2018-01-27 00:00:00', 'article_img//kejie.jpeg', '小羿');
INSERT INTO `news` VALUES ('3', '计算机视觉 AR', 'AR行业的大事儿！脸书开源Detectron计算机视觉算法', '																									  【网易智能讯 1月26日消息】Facebook本周宣布Detectron开放源代码正式向大众公开，该项目也是Facebook基于深度学习框架进行设计的关于计算机视觉对象检测算法平台。该公司表示，开放该项目的动机是加速计算机视觉研究，并且Facebook公司内部团队正在使用该代码进行各种应用测试，其中就包括针对增强现实技术的研究。', '																									  在我最近发表的一篇文章中，详细介绍了当今增强现实技术即将面临的三大挑战，在这其中我注意到计算机进行实时对象分类是我们最大的技术难区之一：\r\n  不仅仅只观察一个形状，让计算机利用视觉去理解“杯子”的物体含义是一个值得深究的问题。这就是为什么多年以来，我们在看到的增强现实技术演示中发现人们将基准标记附加到观察对象上，从而促进机器与观察物体之间更细致的跟踪和交互。\r\n  为什么难？我们要提到的第一个技术挑战是如何进行视觉分类。我们了解到，杯子有数千种形状，大小，颜色和纹理。有些杯子有特殊的属性，它们是为了特殊目的而制造的（如烧杯），这意味着它们在不同的地方和环境中有多种多样的用法。\r\n  让我们来想象关于如何写一个能帮助计算机理解所有我们在上面提到的这些概念的算法有多难，而且这只是为了能够在多个杯子中辨认出其中一个目标的杯子。我们还可以想想，关于写一个能够帮助电脑区分杯子和碗的代码是另一项需要完成的挑战。\r\n  我还谈到了为什么“深度学习”技术是实时对象分类问题的一个潜在的解决方案，它能够做到“培训”一台计算机来解释它所看到的，而不是用人工编程不断的一行行进行检测。 Facebook本周已经开发出了他们自创的对象检测算法，这可能会加速系统的开发，使系统能够进行实时对象分类，从而使增强现实技术真正得到广泛使用。\r\n  关于增强现实技术与我们周围物体实际相互作用的方式，在粗略地了解附近特定的场景之前并不用针对特定环境进行预先编程。例如，如果您戴着AR眼镜，并希望能够将烤箱温度投影到烤箱上方，然后还需要将冰箱中需要拿出来的食物的列表在AR眼镜中显示出来，则您的眼镜需要分辨烤箱和冰箱的样子。鉴于各种烤箱和冰箱以及它们生产地方的不同和放置位置的不同，这是一项极具挑战性的任务。\r\n  Facebook的人工智能研究团队最近一直在研究计算机视觉对象检测问题，并且它们正在尝试通过深度学习使计算机能够得出关于场景中存在什么物体的结论。在Facebook宣布基于Caffe2深度学习框架的对象检测算法开发的被称为Detectron的平台向大众开放后，现在任何人都可以在GitHub上利用该算法进行试验。 Facebook公司希望Detectron平台将使世界各地的计算机视觉研究人员能够尝试并不断改进最新的技术。', '																									具体哪些团队将使用Detectron应用增强现实技术并未公布，但是我们现在知道Oculus很可能会使用它，因为他的首席科学家Michael Abrash最近就增强现实技术将如何以及何时改变我们的生活发表了长篇演讲。', '2018-01-26 00:00:00', 'article_img//cc.png', '丁广胜');
INSERT INTO `news` VALUES ('4', '苹果 自驾', '达沃斯报告：AI有炒作 但更多老板愿意用AI替换人', '					【网易智能讯1月26日消息】全球近五分之二的公司已经用人工智能数字工具取代了一些工作岗位，然而大多数人仍然希望人工智能能够创造更多的就业机会。根据信息技术外包和服务公司Infosys Ltd.的调查，这一数据来自于超过1000名信息技术决策者和来自7个国家的公司的高级管理人员。', '					  这项周二在瑞士达沃斯发布的调查报告显示，这些公司包括美国，澳大利亚，中国，印度和其他地区的公司。这些公司的规模从500人到5000多人，其中大约四分之一的公司的年收入有10亿美元。\r\n  我们将AI定义为“使计算机或机器人在精度，容量和速度方面等同于或优于正常人类计算能力的软件技术”，以机器学习，自然语言处理，机器人和聊天机器人为例。“就像大多数有前景的新技术一样，围绕人工智能的炒作也非常多，”Infosys公司总裁Mohit Joshi在一份声明中说道。但是，他补充说，“事实证明，绝大多数具有人工智能部署的企业正在实现清晰和可衡量的结果。”', '					  普华永道的研究人员说：“人们仍然会有工作，但他们会更高效地工作。（选自：The Wall Street Journal编译：网易智能 参与：雨蛋）', '2018-01-29 00:00:00', 'article_img//d3313aa4dde04.jpeg', '丁广胜');
INSERT INTO `news` VALUES ('5', '贾跃亭 离职', '贾跃亭\"整风\"FF：不容忍消极情绪，HR负责人离职', '										1月24日，据美国科技新闻网站The Verge报道，法拉第未来（Faraday Future）的HR部门负责人Crystal Peterson近日辞职。', '										职业社交平台LinkedIn上，Peterson是法拉第未来第12号员工，不过已于上周辞职。Peterson在法拉第未来创始合伙人、人力资源副总裁Alan Cherry去年8月离职之后，才成为HR的负责人，时间相当短暂。\r\n在Peterson离任的当天，法拉第未来的员工们都收到了一封来自HR部门的邮件，邮件宣布：“对于违反公司利益和使命的行为采取零容忍政策”，这些行为包括泄露内部通讯信息等。\r\n“还有一件事情也是我们不能容忍的，就是包庇那些已经对FF失去忠诚和热情的人，不管是那些泄露公司商业机密、与竞争对手合作的人，或者是不断传递消极情绪的人。”这封邮件写到，“我们不能允许组织从内部被倾覆。”\r\n这封邮件是在暗指Peterson，据几位法拉第未来员工透露，尽管这封信没有明确指出哪些行为违反了规定。\r\nThe Verge的报道还指出，这封内部邮件凸显了公司内部紧张的情况，许多前员工称，公司内部存在文化隔阂，美国员工对中国员工持有怀疑态度，这些中国员工主要来自乐视，在内部被称作“CN Team”（中国团队）。', '										“中国不可能造出好的电动汽车。”一位职级颇高的前雇员称，“他们没有设计、没有电池技术。”许多法拉第未来的员工都持有这一观点：中国品牌在美国销售也是非常困难的， 所以贾跃亭投资了法拉第未来，并将其打造成美国的初创企业，为的就是吸引顶尖人才、生产知识产权，并为乐视所用。', '2018-01-29 00:00:00', 'article_img//aaaaaaaa.jpeg', '王凤枝');

-- ----------------------------
-- Table structure for `tiezi`
-- ----------------------------
DROP TABLE IF EXISTS `tiezi`;
CREATE TABLE `tiezi` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uaccount` varchar(20) DEFAULT NULL,
  `upassword` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `content` varchar(150) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES ('1', 'a123456', 'a123456', '周杰伦', '大家好，我是周杰伦', '2018-01-01');
INSERT INTO `tiezi` VALUES ('2', 'a123456', 'a123456', '周杰伦', '你好啊', '2018-01-29');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uaccount` varchar(20) DEFAULT NULL,
  `upassword` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `utel` varchar(11) DEFAULT NULL,
  `uemail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'a123456', 'a123456', '周杰伦', '18112334567', 'a123@163.com');
