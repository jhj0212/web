<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>睿诚财务管理咨询（吉林）有限公司</title>
		<meta http-equiv="X-UA-Compatible" content="edge" />
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/css.css" />
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/gongshang.css" />
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/d.css" />
	</head>

	<body class="zhuti">

		<div class="gotop">
			<div class="qq">
				<a href="#"><img src="/RCweb/Public/Home/img/ma1.png"/></a>
			</div>
			<div class="qq">
				<a href="http://wpa.qq.com/msgrd?v=3&uin=1751669842&site=qq&menu=yes"><img src="/RCweb/Public/Home/img/qq.png" /></a>
			</div>
			<div class="go">
				<a href="#"><img src="/RCweb/Public/Home/img/fanhui.png"/></a>
			</div>
		</div>

		<!--banner start-->
		<!-- 轮播广告 -->
		<div id="headerHack"></div>
		<div id="banner_tabs" class="flexslider">
			<ul class="slides">
				<li>
					<a title="" target="_blank" href="#">
						<img width="1920" height="482" alt="" style="background: url(/RCweb/Public/Home/img/banner1.png) no-repeat center;" src="/RCweb/Public/Home/img/alpha.png">
					</a>
				</li>
				<li>
					<a title="" href="#">
						<img width="1920" height="482" alt="" style="background: url(/RCweb/Public/Home/img/banner2.png) no-repeat center;" src="/RCweb/Public/Home/img/alpha.png">
					</a>
				</li>
				<li>
					<a title="" href="#">
						<img width="1920" height="482" alt="" style="background: url(/RCweb/Public/Home/img/banner3.png) no-repeat center;" src="/RCweb/Public/Home/img/alpha.png">
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
		<!--banner end-->
		<!--header start-->
		<div class="header">
			<div class="header_main clearfix">
				<div class="logofl">
					<a href="#"><img src="/RCweb/Public/Home/img/logo.png" alt="加载失败" /></a>
				</div>
				<div class="you_tel">
					<p>电话：13689825302 / 0431-81115490</p>
					<!--<p>QQ:666999666</p>-->
				</div>
			</div>
			<div class="nav">
				<ul>
					<li>
						<a href="<?php echo U('Index/index');?>" class="lanse">首页</a>
					</li>
					<li>
						<a href="<?php echo U('News/news');?>" id="ulChoose">财税中心</a>
						<ul id="ulDou">
							<li>
								<a class="liChoose" href="<?php echo U('News/more',array('pid'=>1));?>">小企业优惠政策</a>
							</li>
							<li>
								<a class="liChoose" href="<?php echo U('News/more',array('pid'=>2));?>">新税法动态</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="<?php echo U('Zhaopin/zhuce');?>">工商注册</a>
					</li>
					<li>
						<a href="<?php echo U('Zhaopin/daili');?>">财务代理</a>
					</li>
					<li>
						<a href="<?php echo U('Chanpin/chanpin');?>">产品展示</a>
					</li>
					<li>
						<a href="<?php echo U('Zhaopin/peixun');?>">财税培训</a>
					</li>
					<li>
						<a href="<?php echo U('Zhaopin/zhaopin');?>">人才招聘</a>
					</li>
					<li>
						<a href="<?php echo U('Lianxi/lianxi');?>">联系我们</a>
					</li>
				</ul>
			</div>
		</div>
		<!--header end-->
		<script src="/RCweb/Public/Home/js/jquery-1.10.2.min.js"></script>
		<script src="/RCweb/Public/Home/js/slider.js"></script>
		<script type="text/javascript">
			// nav 特效样式
			;$(function (){
				var ulChoose = $('#ulChoose'),
					ulDou = $('#ulDou'),
					liChoose = $('.liChoose'),
					firstA = $('.nav').children('ul').children('li').children('a');

				ulChoose.on('mouseenter',function (){
					ulDou.show(100);
				})
				ulDou.on('mouseleave',function (){
					ulDou.hide(100);
				})
				firstA.on('mouseenter',function (){
					$(this).animate({
						width: 90,
					},150).css({'color':'#1296DB','font-weight':'bold'});
				})
				firstA.on('mouseleave',function (){
					$(this).animate({
						width: 56
					},150).css({'color':'#757575','font-weight':'normal'});
				})
			})
		</script>
		<script type="text/javascript">
            $(function() {
                var bannerSlider = new Slider($('#banner_tabs'), {
                    time: 5000,
                    delay: 400,
                    event: 'hover',
                    auto: true,
                    mode: 'fade',
                    controller: $('#bannerCtrl'),
                    activeControllerCls: 'active'
                });
                $('#banner_tabs .flex-prev').click(function() {
                    bannerSlider.prev()
                });
                $('#banner_tabs .flex-next').click(function() {
                    bannerSlider.next()
                });
            })
		</script>
		<!--banner end-->
		<!-- content start -->
		<?php if(is_array($data)): foreach($data as $key=>$vo): ?><div class="neirong">
				<!--<h3><?php echo ($vo["title"]); ?></h3>-->
				<p><?php echo ($vo["content"]); ?></p>
			</div>
			<hr style="margin: 30px 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: solid; border-top-color: rgb(238, 238, 238);  		color: rgb(51, 51, 51); font-family: 'microsoft yahei', 'lvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;" /><?php endforeach; endif; ?>

		<!--<div class="neirong">
			<p>1、财务实操培训（价格2600元）</p>
			<ul>
				<li>（1）时间安排：培训时间为三个月，同时赠送报税及开发票培训（国税、地税、个税）每周六周日培训，上午2.5课时、下午3课时（每课时为45分钟）。报名时间为每月的1至5号，报名电话：0431-81115490或13689825302</li>
				<li>（2）培训内容安排：大类为商业类、工业类、建筑类、现代服务等10余中行业。</li>
				<li>（3）培训的具体内容，包括手工记账；财务软件应用、建账、针对行业特点成本线的设计、会计科目的设立、会计凭证录入、审核、记账、结账、会计报表；会计分类核算等。</li>
			</ul>
			<p>2、会计初中级考前培训</p>
			<ul>
				<li>（1）初级班：培训时间待定，报名电话：0431-81115490或13689825302</li>
				<li>（2）中级班：培训时间待定，报名电话：0431-81115490或13689825302</li>
			</ul>
		</div>-->
			
		<!-- content End -->

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
					<a href="#">招商在线：13689825302 / 0431-81115490</a>
				</div>
				<div class="footer_main_3">
					<div>
						<p>地　址：吉林省长春市南关区人民大街10606号东北亚国际金融中心2号楼</p>
					</div>
				</div>
				<div class="ma_z">
					<img src="/RCweb/Public/Home/img/ma1.png"/>
				</div>

				<div class="ma_y">
					<img src="/RCweb/Public/Home/img/ma2.png"/>
				</div>

			</div>
			<div class="banquan">
				<p>版权所有：吉林睿诚财务管理咨询有限公司 吉ICP备17006428号</p>
			</div>
		</div>
		<!--footer end-->

	</body>

</html>