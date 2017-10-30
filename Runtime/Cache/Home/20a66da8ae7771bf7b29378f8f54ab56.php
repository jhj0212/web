<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>睿诚财务管理咨询（吉林）有限公司</title>
		<link rel="stylesheet" type="text/css" href="/web/Public/Home/css/css.css"/>
		<link rel="stylesheet" type="text/css" href="/web/Public/Home/css/xinwen.css"/>
		<link rel="stylesheet" type="text/css" href="/web/Public/Home/css/d.css"/>
	</head>
	<body class="zhuti">

		<div class="gotop">
			<div class="qq">
				<a href="#"><img src="/web/Public/Home/img/ma1.png"/></a>
			</div>
			<div class="qq">
				<a href="http://wpa.qq.com/msgrd?v=3&uin=1751669842&site=qq&menu=yes"><img src="/web/Public/Home/img/qq.png" /></a>
			</div>
			<div class="go">
				<a href="#"><img src="/web/Public/Home/img/fanhui.png"/></a>
			</div>
		</div>

		<!--header start-->
		<div class="header">
			<div class="header_main clearfix">
				<div class="logofl">
					<a href="#"><img src="/web/Public/Home/img/logo.png" alt="加载失败" /></a>
				</div>
				<div class="you">
					<p>电话：0431-81807186</p>
					<!--<p>QQ:666999666</p>-->
				</div>
			</div>
			<nav>
				<ul>
					<li>
						<a href="<?php echo U('Index/index');?>">首页</a>
						<ul>
							<li>
								<a href="#">企业文化</a>
							</li>
							<li>
								<a href="#">总裁致辞</a>
							</li>
							<li>
								<a href="#">经营理念</a>
							</li>
							<li>
								<a href="#">管理团队</a>
							</li>
							<li>
								<a href="#">发展历程</a>
							</li>
							<li>
								<a href="#">企业优势</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="<?php echo U('News/news');?>">财税中心</a>
						<ul>
							<li>
								<a href="#">小企业优惠政策</a>
							</li>
							<li>
								<a href="#">税法天天学</a>
							</li>
							<li>
								<a href="#">新税法动态</a>
							</li>
							<li>
								<a href="#">其他</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">工商注册</a>
						<!--<ul>
							<li>
								<a href="#">产品天地</a>
							</li>
							<li>
								<a href="#">产品天地</a>
							</li>
						</ul>-->
					</li>
					<li>
						<a href="#">财务代理</a>
					</li>
					<li>
						<a href="<?php echo U('Chanpin/chanpin');?>">产品展示</a>
						<ul>
							<li>
								<a href="#">产品天地</a>
							</li>
							<li>
								<a href="#">成功案例</a>
							</li>
							<li>
								<a href="#">产品系列</a>
							</li>
							<li>
								<a href="#">案例分享</a>
							</li>
							<li>
								<a href="#">案例展示</a>
							</li>
							<li>
								<a href="#">客户案例</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">财税培训</a>
					</li>
					<li>
						<a href="<?php echo U('Zhaopin/zhaopin');?>">人才招聘</a>
					</li>
					<li>
						<a href="<?php echo U('Lianxi/lianxi');?>">联系我们</a>
					</li>
				</ul>
			</nav>
		</div>
		<!--header end-->

		<!--banner start-->
		<!-- 轮播广告 -->
		<div id="banner_tabs" class="flexslider">
			<ul class="slides">
				<li>
					<a title="" target="_blank" href="#">
						<!--<img width="1920" height="482" alt="" style="background: url(/web/Public/Home/img/banner1.png) no-repeat center;" src="/web/Public/Home/img/alpha.png">-->
						<img width="1920" height="482" alt="" style="background: url(/web/Public/Home/img/banner1.png) no-repeat center;" src="/web/Public/Home/img/alpha.png">
					</a>
				</li>
				<li>
					<a title="" href="#">
						<img width="1920" height="482" alt="" style="background: url(/web/Public/Home/img/banner2.png) no-repeat center;" src="/web/Public/Home/img/alpha.png">
					</a>
				</li>
				<li>
					<a title="" href="#">
						<img width="1920" height="482" alt="" style="background: url(/web/Public/Home/img/banner3.png) no-repeat center;" src="/web/Public/Home/img/alpha.png">
					</a>
				</li>
			</ul>
			<ul class="flex-direction-nav">
				<li>
					<a class="flex-prev" href="javascript:;">Previous</a>
				</li>
				<li>
					<a class="flex-next" href="javascript:;">Next</a>
				</li>
			</ul>
			<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
				<li>
					<a>1</a>
				</li>
				<li>
					<a>2</a>
				</li>
				<li>
					<a>2</a>
				</li>
			</ol>
		</div>
		<!--header end-->
		
		<!--main start-->
		<div class="main">
			<!--main_title-->
			<div class="main_title">
				<h1><?php echo ($res[0]["title"]); ?></h1>
				<div class="main_stitle">
					<span><?php echo (date('Y-m-d',$res[0]["time"])); ?></span>
					<span style="color: red;"><?php echo ($res[0]["name"]); ?></span>
				</div>
			</div>
			<!--main_title-->
			<!--main_con-->
			<div class="main_con">
				<!--<img src="img/1.jpg" alt="简介"/>-->
				<p><?php echo ($res[0]["content"]); ?></p>
			</div>
			<!--main_con-->
		</div>
		<!--main end-->
		<!--footer start-->
		<div class="footer">
			<div class="footer_main clearfix">
				<div class="footer_main_1">
					<a href="#">相关链接： </a>
					<a href="http://www.wise-city.com" target="_blank">吉林省智城智家科技有限公司</a>
					<!--<a href="http://www.xinhengkj.com" target="_blank">吉林省欣恒科技有限公司</a>-->
					<a href="http://www.ccshida.cn" target="_blank">长春市士达科技有限公司</a>
				</div>
				<div class="footer_main_2">
					<a href="#">招商在线：13689825302 / 0431-81807186</a>
				</div>
				<div class="footer_main_3">
					<div>
						<p>地　址：吉林省长春市南关区人民大街10606号东北亚国际金融中心2号楼</p>
					</div>
				</div>
				<div class="ma_z">
					<img src="/web/Public/Home/img/ma1.png"/>
				</div>

				<div class="ma_y">
					<img src="/web/Public/Home/img/ma2.png"/>
				</div>

			</div>
			<div class="banquan">
				<p>版权所有：吉林睿诚财务管理咨询有限公司 吉ICP备17006428号</p>
			</div>
		</div>
		<!--footer end-->
	</body>
</html>