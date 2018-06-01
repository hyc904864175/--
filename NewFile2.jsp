<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>向B站致敬</title>
<style type="text/css">
        /*给整个页面加上背景*/
        body{
            background-color: pink;/*颜色当背景*/
            background-image: url(bg3.jpg);
            background-size: 100% 100%;
            /*引入图片当背景,使用 url(),房屋大地板砖小，故铺满*/
            /*background-repeat: repeat-x;*/
            /*只在水平方向上铺满图片*/
            background-repeat: no-repeat;
            /*图片不重复，仅显示一遍*/
            /*background-attachment: fixed;*/
            /*背景图片位置固定，不随滚动条的变化而变化*/
            background-position: center;
            /*控制背景图片的位置*/
        }
    </style>
</head>
<body>
<head>
<title>wuli 哔哩哔哩</title>
<style>
*{
box-sizing:border-box;
}
body{
margin:0;
}
/* stytle of header*/
.header{
background-color:#F660AB;
padding:20px;
text-align:center;
}
/* stytle of top navi*/
.topnavi{
overflow:hidden;
background-color:#FAAFBE;
}
.topnavi a {
display:block;
text-decoration:none;
color:	#FFFFFF;
float:left;/* all in one line*/
padding:14px;
}
.topnavi a:hover{
background-color:#FF0080;
color:black;
}
/*style of main content*/

.column{
float:left;



}
.column.middle {
width:50%;

}
.column.side{
width:22%;

}
.row:after{
content:"";
display:table;
clear:both;
}
@media screen and (max-width:600px){
.column.middle,.column.side{
width:100%;
}
}
.footer{
background-color:#FAAFBE;
text-align:center;
padding:15px 10px;
}

</style>
</head>
<body>
<div class="header">
<b><h1>致敬BILIBILI
<img src="小人.gif" ></h1>
</div>
<div class="topnavi">
<a href="https://www.bilibili.com/v/douga/?spm_id_from=333.334.primary_menu.2">动画</a>
<a href="https://www.bilibili.com/v/douga/mad/?spm_id_from=333.5.primary_menu.3#/">MAD</a>
<a href="https://www.bilibili.com/v/douga/mmd/?spm_id_from=333.54.primary_menu.4#/">MMD</a>
<a href="https://www.bilibili.com/v/douga/voice/?spm_id_from=333.334.primary_menu.5">短片&手书&配音</a>
<a href="https://bangumi.bilibili.com/22/?spm_id_from=333.56.primary_menu.7">番剧</a>
<a href="https://bangumi.bilibili.com/guochuang/">国创</a>
<a href="https://www.bilibili.com/v/game/?spm_id_from=333.5.primary_menu.33">游戏</a>
<a href="https://www.bilibili.com/v/technology/?spm_id_from=333.8.primary_menu.42">科技</a>
<a href="https://www.bilibili.com/v/life/?spm_id_from=333.9.primary_menu.50">生活</a>
<a href="https://www.bilibili.com/v/kichiku/?spm_id_from=333.10.primary_menu.60">鬼畜</a>
<a href="https://www.bilibili.com/v/douga/">综合</a>
<select name="select">
<option>别点开</option>
<option>既然点开</option>
<option>那就关注我们一下吧</option>
<option>又不会怀孕</option>
</select>
<img src="喵.gif" >
</div>
<div class="row">
<div class="column side">
<h2>Up主创意展览区</h2>
<p>
<img src="123.gif">
</p>
<br>
<img src="小视频.jpg">
</br>
<br>
<img src="相簿.jpg">
</br><br>

<li>
<a href="https://www.bilibili.com/anime/timeline/?spm_id_from=333.334.bili_bangumi.3">每日新番</a>
</li><br>
<li>
<a href="#">cosplay</a>
</li><br>
<li>
聪明的你请点击<a href="guanli">这里</a></li>
<br><br><br><br><br><br><br><br><br><br>
</div>

<div class="column middle">
<h2>头条</h2>

<p><h3>《紫罗兰永恒花园》今日上映！</h3><br>
<head>
<script src="jquery-1.12.4.min.js"></script>
<script src="jquery-ui.min.js"></script>
<script src="wb.slideshow.min.js"></script>
<script>
$(document).ready(function()
{
   $("#SlideShow1").slideshow(
   {
	   interval: 2000,
	      type: 'sequence',
	      effect: 'slide',
	      direction: 'right',
	      pagination: false,
	      effectlength: 1000
   });
});
</script>
</head>
<div id="SlideShow1" style="position:absolute;left:23%;top:35%;width:45%;height:50%;z-index:0;">
<img class="image" src="1.jpg" alt="Pulpit rock" title="" width=100% height=100%;>
<img class="image" src="2.jpg" alt="Pulpit rock" title=""width=100% height=100%; >
<img class="image" src="3.jpg" alt="Pulpit rock" title=""width=100% height=100%; >

</div></div>
<div class="column side">
 <center><br>    <form id="indexform" name="indexForm" action="denglu.jsp" method="post">
                <tr>
                        <td>用户名：</td>
                        <td><input type="text" name="username"></td>
                    </tr><br><br>
                    <tr>
                        <td>密   码：</td>
                        <td><input type="password" name="password">
                        </td>
                    </tr>
            <br><br>
                <input type="submit" value="登录" style="color:#BC8F8F">
            </form><br>
            <form action="注册页.jsp">
                还没有注册？请点击<input type="submit" value="注册" >
            </form></center>
<hr>
<h2><b>水军区 <img src="咸鱼.gif"></h2>
<form action="session.jsp"method="post">
社区名:<br>
<input type="text" name="community" value="">
<br><br>
<input type="submit" value="戳戳">
</form>

<p>《紫罗兰永恒花园》第一集就看哭了</p>
<p><img src="TIM图片20180328194615.jpg"></p>
</div>
</div>
<div class="footer">
致敬BILIBILI<br>
信管161班web开发课程设计<br>
侯祎晨 殷晓靓 金端亚
</div>
</body>
</html>
</body>
</html>