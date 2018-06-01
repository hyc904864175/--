<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>假的BILILBILI</title>
<meta name="generator" content="WYSIWYG Web Builder 12 - http://www.wysiwygwebbuilder.com">
<link href="登了1.css" rel="stylesheet">
<link href="登了2.css" rel="stylesheet">
<script src="jquery-1.12.4.min.js"></script>
<script src="affix.min.js"></script>
<script src="wb.carousel.min.js"></script>
<script src="transition.min.js"></script>
<script src="carousel.min.js"></script>
<script src="./searchindex.js"></script>
<script>
var features = 'toolbar=no,menubar=no,location=no,scrollbars=yes,resizable=yes,status=no,left=,top=,width=,height=';
var searchDatabase = new SearchDatabase();
var searchResults_length = 0;
var searchResults = new Object();
function searchPage(features)
{
   var element = document.getElementById('SiteSearch1');
   if (element.value.length != 0 || element.value != " ")
   {
      var value = unescape(element.value);
      var keywords = value.split(" ");
      searchResults_length = 0;
      for (var i=0; i<database_length; i++)
      {
         var matches = 0;
         var words = searchDatabase[i].title + " " + searchDatabase[i].description + " " + searchDatabase[i].keywords;
         for (var j = 0; j < keywords.length; j++)
         {
            var pattern = new RegExp(keywords[j], "i");
            var result = words.search(pattern);
            if (result >= 0)
            {
               matches++;
            }
            else
            {
               matches = 0;
            }
         }
         if (matches == keywords.length)
         {
            searchResults[searchResults_length++] = searchDatabase[i];
         }
      }
      var wndResults = window.open('about:blank', '', features);
      setTimeout(function()
      {
         var results = '';
         var html = '<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>Search results<\/title><\/head>';
         html = html + '<body style="background-color:#FFFFFF;margin:0;padding:2px 2px 2px 2px;">';
         html = html + '<span style="font-family:Arial;font-size:13px;color:#000000">';
         for (var n=0; n<searchResults_length; n++)
         {
            var page_keywords = searchResults[n].keywords;
            results = results + '<strong><a style="color:#FFFFFF" target="_parent" href="'+searchResults[n].url+'">'+searchResults[n].title +'<\/a><\/strong><br>Keywords: ' + page_keywords +'<br><br>\n';
         }
         if (searchResults_length == 0)
         {
            results = 'No results';
         }
         else
         {
            html = html + searchResults_length;
            html = html + ' result(s) found for search term: ';
            html = html + value;
            html = html + '<br><br>';
         }
         html = html + results;
         html = html + '<\/span>';
         html = html + '<\/body><\/html>';
         wndResults.document.write(html);
     },100);
   }
   return false;
}
function searchParseURL()
{
   var url = decodeURIComponent(window.location.href);
   if (url.indexOf('?') > 0)
   {
      var terms = '';
      var params = url.split('?');
      var values = params[1].split('&');
      for (var i=0;i<values.length;i++)
      {
         var param = values[i].split('=');
         if (param[0] == 'q')
         {
            terms = unescape(param[1]);
            break;
         }
      }
      if (terms != '')
      {
         var element = document.getElementById('SiteSearch1');
         element.value = terms;
         searchPage('');
      }
   }
}
</script>
<script src="galleria/galleria-1.5.4.min.js"></script>
<link rel="stylesheet" href="galleria/theme/galleria.classic.min.css">
<script src="galleria/theme/galleria.classic.min.js"></script>
<script src="wwb12.min.js"></script>
<script>
$(document).ready(function()
{
   $("#wb_ResponsiveMenu1").affix({offset:{top: $("#wb_ResponsiveMenu1").offset().top}});
   var Carousel1Opts =
   {
      delay: 3000,
      duration: 500,
      easing: 'linear',
      mode: 'forward',
      direction: '',
      pagination: true,
      pagination_img_default: 'images/page_default.png',
      pagination_img_active: 'images/page_active.png',
      start: 0
   };
   $("#Carousel1").carousel(Carousel1Opts);
   $("#Carousel1_back a").click(function()
   {
      $('#Carousel1').carousel('prev');
   });
   $("#Carousel1_next a").click(function()
   {
      $('#Carousel1').carousel('next');
   });
   searchParseURL();
   $("a[data-rel='PhotoGallery1']").attr('rel', 'PhotoGallery1');
   $('#wb_PhotoGallery1 img').attr('title', '');$('#wb_PhotoGallery1').galleria({});
});
</script>
<!-- 请在此处插入 Google Analytics(谷歌分析)代码 -->
</head>
<body>
<div id="space"><br></div>
<div id="container">
<div id="wb_ResponsiveMenu1" style="position:absolute;left:0px;top:12%;width:100%;height:5%;z-index:1;">
<label class="toggle" for="ResponsiveMenu1-submenu" id="ResponsiveMenu1-title">Menu<span id="ResponsiveMenu1-icon"><span>&nbsp;</span><span>&nbsp;</span><span>&nbsp;</span></span></label>
<input type="checkbox" id="ResponsiveMenu1-submenu">
<ul class="ResponsiveMenu1" id="ResponsiveMenu1">
<li><a href="https://www.bilibili.com/v/douga/?spm_id_from=333.334.primary_menu.2">&#21160;&#30011;</a></li>
<li><a href="https://www.bilibili.com/v/douga/mad/?spm_id_from=333.5.primary_menu.3#/">MAD</a></li>
<li><a href="https://www.bilibili.com/v/douga/mmd/?spm_id_from=333.54.primary_menu.4#/">MMD</a></li>
<li><a href="https://www.bilibili.com/v/douga/voice/?spm_id_from=333.334.primary_menu.5">&#30701;&#29255;&amp;&#25163;&#20070;&amp;&#37197;&#38899;</a></li>
<li><a href="https://bangumi.bilibili.com/22/?spm_id_from=333.56.primary_menu.7">&#30058;&#21095;</a></li>
<li><a href="https://bangumi.bilibili.com/guochuang/">&#22269;&#21019;</a></li>
<li><a href="https://www.bilibili.com/v/game/?spm_id_from=333.5.primary_menu.33">&#28216;&#25103;</a></li>
<li><a href="https://www.bilibili.com/v/technology/?spm_id_from=333.8.primary_menu.42">&#31185;&#25216;</a></li>
<li><a href="https://www.bilibili.com/v/life/?spm_id_from=333.9.primary_menu.50">&#29983;&#27963;</a></li>
<li><a href="https://www.bilibili.com/v/kichiku/?spm_id_from=333.10.primary_menu.60">&#39740;&#30044;</a></li>
<li><a href="https://www.bilibili.com/v/douga/">&#32508;&#21512;</a></li>
</ul>
</div>
<div id="wb_Breadcrumb1" style="position:absolute;left:22%;top:34%;width:78%;height:10%;z-index:2;vertical-align:top;">
<ul id="Breadcrumb1">
<li><a href="https://www.bilibili.com/bangumi/play/ss23871/?spm_id_from=333.334.bili_bangumi.4">&#21608;&#19968;&#30058;</a></li>
<li><a href="https://www.bilibili.com/bangumi/play/ss23870/?spm_id_from=333.334.bili_bangumi.16">&#21608;&#20108;&#30058;</a></li>
<li><a href="https://www.bilibili.com/bangumi/play/ss23873/?spm_id_from=333.334.bili_bangumi.13">&#21608;&#19977;&#30058;</a></li>
<li><a href="https://www.bilibili.com/bangumi/play/ss23859/?spm_id_from=333.334.bili_bangumi.8">&#21608;&#22235;&#30058;</a></li>
<li><a href="https://www.bilibili.com/bangumi/play/ss23850/?spm_id_from=333.334.bili_bangumi.4">&#21608;&#20116;&#30058;</a></li>
<li><a href="https://www.bilibili.com/bangumi/play/ss6430/?spm_id_from=333.334.bili_bangumi.20">&#21608;&#20845;&#30058;</a></li>
<li><a href="https://www.bilibili.com/bangumi/play/ss21421/?spm_id_from=333.334.bili_bangumi.4">&#21608;&#26085;&#30058;</a></li>
</ul>
</div>
<div id="wb_Carousel1" style="position:absolute;left:22%;top:19%;width:78%;height:14%;z-index:3;overflow:hidden;">
<div id="Carousel1" style="position:absolute">
<div class="frame frame-1">
</div>
<div class="frame frame-2">
</div>
<div class="frame frame-3">
</div>
<div class="frame frame-4">
</div>
<div class="frame frame-5">
</div>
</div>
<div id="Carousel1_back" style="position:absolute;left:4px;top:37%;width:30px;height:30px;z-index:999"><a style="cursor:pointer"><img alt="Back" style="border-width:0" src="images/carousel_back.png"></a></div>
<div id="Carousel1_next" style="position:absolute;right:4px;top:37%;width:30px;height:30px;z-index:999"><a style="cursor:pointer"><img alt="Next" style="border-width:0" src="images/carousel_next.png"></a></div>
</div>
<picture id="wb_Picture1" style="position:absolute;left:3%;top:19%;width:286px;height:278px;z-index:4">
<img src="images/450f60ffd7f49fab14d8e02aa9dcd699.png" id="Picture1" alt="" srcset="">
</picture>
<marquee direction="left" scrolldelay="30" scrollamount="6" behavior="scroll" loop="0" style="position:absolute;left:0;top:32%;width:22%;height:55%;z-index:5;" id="Marquee1" onmouseover="this.stop()" onmouseout="this.start()"><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">人</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">生苦短，</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">想</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">一直懒</span><span style="color:#FF1493;font-family:Calibri;font-size:17px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;"><br></span><span style="color:#FF1493;font-family:Calibri;font-size:17px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">请</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">问有谁有公司缺人继承吗？</span><span style="color:#FF1493;font-family:Calibri;font-size:17px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <br>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">最</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">近真的头</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">秃</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">。。。。<br></span><span style="color:#FF1493;font-family:Calibri;font-size:17px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">我们还是优秀的</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">共青团员<br></span><span style="color:#FF1493;font-family:Calibri;font-size:28px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">不应该</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">这么</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">累<br></span><span style="color:#FF1493;font-family:Calibri;font-size:28px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">我</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">想要</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">乌黑浓密的</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">头发<br></span><span style="color:#FF1493;font-family:Calibri;font-size:28px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">我</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">想要</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">不虚</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">的</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">肾</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">和</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">不疼</span><span style="color:#FF1493;font-family:微软雅黑;font-size:17px;">的</span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">肝<br></span><span style="color:#FF1493;font-family:Calibri;font-size:28px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">有无儿无女的富豪缺孩子吗？<br></span><span style="color:#FF1493;font-family:Calibri;font-size:28px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">我可以萝莉音<br></span><span style="color:#FF1493;font-family:Calibri;font-size:28px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">可以御姐音</span><span style="color:#FF1493;font-family:Calibri;font-size:28px;"><br>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">可以正太音<br></span><span style="color:#FF1493;font-family:Calibri;font-size:32px;">&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color:#FF1493;font-family:微软雅黑;font-size:28px;">可以雷佳音</span></marquee>
<form name="SiteSearch1_form" id="SiteSearch1_form" accept-charset="UTF-8" onsubmit="return searchPage(features)">
<input type="text" id="SiteSearch1" style="position:absolute;left:77%;top:13%;width:12%;height:2.5%;line-height:2.5%;z-index:6;" name="SiteSearch1" value="" spellcheck="false" placeholder="Search this website"></form>
<input type="button" id="Button1" onclick="searchPage();return false;" name="Search" value="Search" style="position:absolute;left:90%;top:14%;width:5%;height:2.5%;z-index:7;">
<div id="wb_PhotoGallery1" style="position:absolute;left:75%;top:39%;width:25%;height:50%;z-index:8;">
<div id="PhotoGallery1">
   <div class="thumbnails">
      <div class="thumbnail">
         <a href="images/want.jpg" data-rel=""><img alt="" src="images/want.jpg"></a>
      </div>
      <div class="thumbnail">
         <a href="images/难为情.jpg" data-rel=""><img alt="" src="images/难为情.jpg"></a>
      </div>
      <div class="thumbnail">
         <a href="images/滚啊.jpg" data-rel=""><img alt="" src="images/滚啊.jpg"></a>
      </div>
      <div class="clearfix visible-col3"></div>
      <div class="thumbnail">
         <a href="images/妖妖灵.jpg" data-rel=""><img alt="" src="images/妖妖灵.jpg"></a>
      </div>
      <div class="thumbnail">
         <a href="images/pig.jpg" data-rel=""><img alt="" src="images/pig.jpg"></a>
      </div>
      <div class="thumbnail">
         <a href="images/托腮.jpg" data-rel=""><img alt="" src="images/托腮.jpg"></a>
      </div>
      <div class="clearfix visible-col3"></div>
      <div class="thumbnail">
         <a href="059106a2e66425d19d04886ee81480bf.jpeg" data-rel=""><img alt="" src="059106a2e66425d19d04886ee81480bf.jpeg"></a>
      </div>
      <div class="thumbnail">
         <a href="images/7616.jpg" data-rel=""><img alt="" src="images/7616.jpg"></a>
      </div>
      <div class="thumbnail">
         <a href="images/2.jpg" data-rel=""><img alt="" src="images/2.jpg"></a>
      </div>
      <div class="clearfix visible-col3"></div>
   </div>
</div></div>
<div id="Blog1" class="carousel slide" data-interval="5000" data-ride="carousel" style="overflow:auto;position:absolute;left:22%;top:39%;width:50%;height:50%;z-index:9;">
<ol class="carousel-indicators">
<li data-target="#Blog1" data-slide-to="0" class="active"></li>
<li data-target="#Blog1" data-slide-to="1"></li>
<li data-target="#Blog1" data-slide-to="2"></li>
</ol>
<div class="carousel-inner">
<div class="blogitem item active">
   <div class="blogheader" style="background-image:url(images/思考.jpg)"></div>
   <div class="blogthumb"><a href="javascript:popupwnd('https://bangumi.bilibili.com/','no','no','no','no','no','no','','','','')" target="_self"><img alt="&#31070;&#28216;&#29289;&#22806;" src="images/思考.jpg"></a></div>
   <h1 class="blogsubject"><a href="javascript:popupwnd('https://bangumi.bilibili.com/','no','no','no','no','no','no','','','','')" target="_self">神游物外</a></h1>
   <div class="blogdate">Friday, June 01, 2018<br></div>
   <span style="color:#000000;font-family:microsoft yahei ui;font-size:27px">优秀，优秀，优秀。<br>
社会，社会，社会。</span><br>
</div>
<div class="blogitem item">
   <div class="blogheader" style="background-image:url(images/难为情.jpg)"></div>
   <div class="blogthumb"><a href="images/难为情.jpg"><img alt="&#28212;&#26395;&#22836;&#21457;" src="images/难为情.jpg"></a></div>
   <h1 class="blogsubject">渴望头发</h1>
   <div class="blogdate">Friday, June 01, 2018<br></div>
   <span style="color:#000000;font-family:microsoft yahei ui;font-size:27px">治肾亏，不含糖，三百年，九芝堂</span><br>
</div>
<div class="clearfix visible-col2"></div>
<div class="blogitem item">
   <div class="blogheader" style="background-image:url(images/偷看.jpg)"></div>
   <div class="blogthumb"><a href="images/偷看.jpg"><img alt="&#21746;&#23398;" src="images/偷看.jpg"></a></div>
   <h1 class="blogsubject">哲学</h1>
   <div class="blogdate">Friday, June 01, 2018<br></div>
   <span style="color:#000000;font-family:microsoft yahei ui;font-size:27px">我是谁，我在哪，我要干什么</span><br>
</div>
</div>
<a class="left carousel-control" href="#Blog1" role="button" data-slide="prev">
<span class="icon-prev" aria-hidden="true"></span>
</a>
<a class="right carousel-control" href="#Blog1" role="button" data-slide="next">
<span class="icon-next" aria-hidden="true"></span>
</a>
</div>
</div>
<div id="PageHeader1" style="position:absolute;text-align:center;left:0px;top:0px;width:100%;height:13%;z-index:7777;">
<div id="PageHeader1_Container" style="width:1898px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
<div id="Banner1" style="position:absolute;left:0px;top:0px;width:1898px;height:114px;z-index:0"><span>&#25105;&#30340;BILIBILI</span></div>
</div>
</div>
</body>
</html>