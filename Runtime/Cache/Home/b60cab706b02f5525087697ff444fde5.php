<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>睿诚财务管理咨询（吉林）有限公司</title>
		<meta http-equiv="X-UA-Compatible" content="edge" />
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/css.css" />
		<link rel="stylesheet" type="text/css" href="/RCweb/Public/Home/css/d.css" />

		<script src="/RCweb/Public/Home/js/jquery.min.js"></script> 
        <script src="/RCweb/Public/Home/js/wow.min.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
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

		<!--百度地图容器-->
		<div class="ditu" style="width:100%; height:570px;background: #fff; padding:60px 0 15px;">
			<div style="width:900px;height:500px;border:#ccc solid 1px;background:#fff;margin: 0 auto" id="dituContent"></div>
		</div>
		<!--百度地图容器-->

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
		<script type="text/javascript">
            //创建和初始化地图函数：
            function initMap() {
                createMap(); //创建地图
                setMapEvent(); //设置地图事件
                addMapControl(); //向地图添加控件
                addMarker(); //向地图中添加marker
            }

            //创建地图函数：
            function createMap() {
                var map = new BMap.Map("dituContent"); //在百度地图容器中创建一个地图
                var point = new BMap.Point(125.336787, 43.815833); //定义一个中心点坐标
                map.centerAndZoom(point, 15); //设定地图的中心点和坐标并将地图显示在地图容器中
                window.map = map; //将map变量存储在全局
            }

            //地图事件设置函数：
            function setMapEvent() {
                map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
                map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
                map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
                map.enableKeyboard(); //启用键盘上下左右键移动地图
            }

            //地图控件添加函数：
            function addMapControl() {
                //向地图中添加缩放控件
                var ctrl_nav = new BMap.NavigationControl({
                    anchor: BMAP_ANCHOR_TOP_LEFT,
                    type: BMAP_NAVIGATION_CONTROL_LARGE
                });
                map.addControl(ctrl_nav);
                //向地图中添加比例尺控件
                var ctrl_sca = new BMap.ScaleControl({
                    anchor: BMAP_ANCHOR_BOTTOM_LEFT
                });
                map.addControl(ctrl_sca);
            }

            //标注点数组
            var markerArr = [{
                title: "睿诚财务管理咨询有限公司",
                content: "东北亚国际金融中心",
                point: "125.333984|43.816373",
                isOpen: 0,
                icon: {
                    w: 21,
                    h: 21,
                    l: 0,
                    t: 0,
                    x: 6,
                    lb: 5
                }
            }];
            //创建marker
            function addMarker() {
                for(var i = 0; i < markerArr.length; i++) {
                    var json = markerArr[i];
                    var p0 = json.point.split("|")[0];
                    var p1 = json.point.split("|")[1];
                    var point = new BMap.Point(p0, p1);
                    var iconImg = createIcon(json.icon);
                    var marker = new BMap.Marker(point, {
                        icon: iconImg
                    });
                    var iw = createInfoWindow(i);
                    var label = new BMap.Label(json.title, {
                        "offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)
                    });
                    marker.setLabel(label);
                    map.addOverlay(marker);
                    label.setStyle({
                        borderColor: "#808080",
                        color: "#333",
                        cursor: "pointer"
                    });

                    (function() {
                        var index = i;
                        var _iw = createInfoWindow(i);
                        var _marker = marker;
                        _marker.addEventListener("click", function() {
                            this.openInfoWindow(_iw);
                        });
                        _iw.addEventListener("open", function() {
                            _marker.getLabel().hide();
                        })
                        _iw.addEventListener("close", function() {
                            _marker.getLabel().show();
                        })
                        label.addEventListener("click", function() {
                            _marker.openInfoWindow(_iw);
                        })
                        if(!!json.isOpen) {
                            label.hide();
                            _marker.openInfoWindow(_iw);
                        }
                    })()
                }
            }
            //创建InfoWindow
            function createInfoWindow(i) {
                var json = markerArr[i];
                var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
                return iw;
            }
            //创建一个Icon
            function createIcon(json) {
                var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
                    imageOffset: new BMap.Size(-json.l, -json.t),
                    infoWindowOffset: new BMap.Size(json.lb + 5, 1),
                    offset: new BMap.Size(json.x, json.h)
                })
                return icon;
            }

            initMap(); //创建和初始化地图
		</script>
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
	</body>

</html>