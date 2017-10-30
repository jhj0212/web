<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>睿诚财务管理咨询（吉林）有限公司</title>
		<meta http-equiv="X-UA-Compatible" content="edge" />
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/css.css"/>
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/jiage.css"/>
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/d.css"/>
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
		<!--main start-->
		<div class="jiage">
			<!--<?php if($data["id"] == 1): ?><h3><?php echo ($data["title"]); echo ($data["price"]); ?>元/起</h3>
				<p>资深会计师向小规模企业提供包括财务核算、税务申报、出具报表、年末装订总账明细账等服务，服务满意度高，95%的用户已选择续费。
					价格 200 元
					安全支付
					保险赔付
					售后无忧
					服务期限
					1月 1季度 半年 1年
					服务形式
					标准服务
					申报方式
					零申报 非零申报
				</p><?php endif; ?>-->
			<h2><?php echo ($data["title"]); ?></h2>
			<p>资深会计师向小规模企业提供包括财务核算、税务申报、出具报表、年末装订总账明细账等服务，服务满意度高，95%的用户已选择续费。</p>
			<div class="shu">
				<span class="s_1">价格：</span>
				<span class="s_2" id="pri"><?php echo ($data["price"]); ?></span>
				<input type="hidden" name="price" id="price" value="<?php echo ($data["price"]); ?>"/>
				<input type="hidden" name="price" id="price_shou" value="<?php echo ($data["price"]); ?>"/>
				<span class="s_3">元</span>
			</div>
			<div class="xx">
				<ul>
					<li>
						<span>服务期限</span>
						<b>
							<i class="on" id="1" onclick="jidu(this.id)" >1月</i>
							<i class="" id="3" onclick="jidu(this.id)">1季度</i>
							<i class="" id="6" onclick="jidu(this.id)">半年</i>
							<i class="" id="12" onclick="jidu(this.id)">1年</i>
						</b>
					</li>
					<li>
						<span>服务形式</span>
						<b>
							<i class="on" id="5" onclick="jidu(this.id)">标准服务</i>
							<?php if($data["id"] != 1): ?><i class="" id="7" onclick="jidu(this.id)">上门服务</i><?php endif; ?>
						</b>
					</li>
					<?php if($data["id"] == 1): ?><li>
							<span>申报方式</span>
							<b>
								<i class="on" id="2" onclick="jidu(this.id)">无收入</i>
								<i class="" id="4" onclick="jidu(this.id)">有收入</i>
							</b>
						</li><?php endif; ?>
				</ul>
				<div class="fangshi">
					<div class="haoma">电话：13689825302</div>
					<div class="xiang">邮箱：rc@rcguanli.com</div>
				</div>
			</div>
		</div>
		<script >
			function jidu($id) {
				$('#'+$id).siblings('i').removeClass('on');
				$('#'+$id).addClass('on');
				if($('#2').hasClass('on')){
                    var price=$('#price').val();
                    if($('#1').hasClass('on')){
                        var price_ji=price;
                    }else if($('#3').hasClass('on')){
                        var price_ji=price*3;
                    }else if($('#6').hasClass('on')){
                        var price_ji=price*6;
                    }else if($('#12').hasClass('on')){
                        var price_ji=price*12;
                    }
				}else if($('#4').hasClass('on')){
                    var price_shou=$('#price').val();
                    var price=parseInt(price_shou)+parseInt(100);
                    if($('#1').hasClass('on')){
                        var price_ji=price;
					}else if($('#3').hasClass('on')){
                        var price_ji=price*3;
                    }else if($('#6').hasClass('on')){
                        var price_ji=price*6;
                    }else if($('#12').hasClass('on')){
                        var price_ji=price*12;
                    }
				}else if($('#5').hasClass('on')){
                    var price=$('#price').val();
                    if($('#1').hasClass('on')){
                        var price_ji=price;
					}else if($('#3').hasClass('on')){
                        var price_ji=price*3;
                    }else if($('#6').hasClass('on')){
                        var price_ji=price*6;
                    }else if($('#12').hasClass('on')){
                        var price_ji=price*12;
                    }
				}else if($('#7').hasClass('on')){
                    var price_shou=$('#price').val();
                    var price=parseInt(price_shou)+parseInt(100);
                    if($('#1').hasClass('on')){
                        var price_ji=price;
					}else if($('#3').hasClass('on')){
                        var price_ji=price*3;
                    }else if($('#6').hasClass('on')){
                        var price_ji=price*6;
                    }else if($('#12').hasClass('on')){
                        var price_ji=price*12;
                    }
				}
                $('#pri').text(price_ji);
       	 	}
		</script>
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