<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>供应链子系统前端商城 </title>
<link href="front/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="front/css/style_du.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="front/js/jquery.min.js"></script>
<!-- start slider -->		
	<link href="front/css/slider.css" rel="stylesheet" type="text/css" media="all" />

	<script type="text/javascript" src="front/js/modernizr.custom.28468.js"></script>
	<script type="text/javascript" src="front/js/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#da-slider').cslider();
		});
	</script>
		<!-- Owl Carousel Assets -->
		<link href="front/css/owl.carousel.css" rel="stylesheet">
		     <!-- Owl Carousel Assets -->
		    <!-- Prettify -->
		    <script src="front/js/owl.carousel.js"></script>
		        <script>
		    $(document).ready(function() {
		
		      $("#owl-demo").owlCarousel({
		        items : 4,
		        lazyLoad : true,
		        autoPlay : true,
		        navigation : true,
			    navigationText : ["",""],
			    rewindNav : false,
			    scrollPerPage : false,
			    pagination : false,
    			paginationNumbers: false,
		      });
		
		    });
		    </script>
		   <!-- //Owl Carousel Assets -->
		<!-- start top_js_button -->
		<script type="text/javascript" src="front/js/move-top.js"></script>
		<script type="text/javascript" src="front/js/easing.js"></script>
		   <script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
					});
				});
			</script>
			 
</head>
<body>

<!-- start header -->
<div class="header_bg">
    <div align="right">
		<p><a href="#" class="tc">登录</a></p>
	</div>
</div>
<div id="gray"></div>
<!------登录悬浮 ------->
<div class="popup" id="popup">

	<div class="top_nav" id='top_nav'>
		<div align="center">
			<i></i>
			<span>登录账号</span>
			<a class="guanbi"></a>
		</div>
	</div>
	
	<div class="min">
	
		<div class="tc_login">
		
			<div class="left">
				<h4 align="center">欢迎登录夜雪商城</h4>
				<div align="center"><img src="front/images/zfb_2yuan.jpg" width="150" height="150" /></div>
				<dd>
					<div align="center">自愿赞助我们 <span style="font-family: 'microsoft yahei'; color: #F60; font-size: 18px;">2</span> 元</div>
				</dd>
			</div>  
		
			<div class="right">
				<form method="POST" name="form_login" action="login.action" target="_top">
					<div align="center">
						
						<input type="text" name="name" id="name" required="required" placeholder="用户名" autocomplete="off" class="input_yh">
						<input type="password" name="pass" id="pass" required="required" placeholder="密码" autocomplete="off" class="input_mm">
					</div>
					<dd>
						<div align="center"><a href="front/">遇到登录问题</a></div>
					</dd>
					<div align="center">
						<input type="submit" class="button" title="Sign In" value="登录">
					</div>
				</form>   
				<dd>
					<div align="center"><a href="front/#" target="_blank">立即注册</a></div>
				</dd>
				<hr align="center" />
			
			</div>
		
		</div>
	
	</div>

</div>

<div class="header_bg">	
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="front/index.html"><img src="front/images/logo.jpg" alt=""/></a>
		</div>
		<div class="h_icon">
		<ul class="icon1 sub-icon1">
			<li><a class="active-icon c1" href="front/#"><i>$300</i></a>
				<ul class="sub-icon1 list">
					<li><h3>购物车</h3><a href="front/"></a></li>
					<li><p>查看购物车 </p></li>
				</ul>
			</li>
		</ul>
		</div>
		<div class="h_search">
    		<form>
    			<input type="text" value="">
    			<input type="submit" value="">
    		</form>
		</div>
		
		<div class="clear"></div>
	</div>
</div>
</div>
<div class="header_btm">
<div class="wrap">
	<div class="header_sub">
		<div class="h_menu">
			<ul>
				<li class="active"><a href="front/index.html">主页</a></li> |
				<li><a href="front/sale.html">推荐</a></li> |
				<li><a href="front/handbags.html">手提包</a></li> |
				<li><a href="front/shoes.html">鞋子</a></li> |
				<li><a href="front/service.html">服务</a></li> |
				<li><a href="front/contact.html">联系我们</a></li>
			</ul>
		</div>
		<div class="top-nav">
	          <nav class="nav">	        	
	    	    <a href="front/#" id="w3-menu-trigger"> </a>
	                  <ul class="nav-list" style="">
	            	        <li class="nav-item"><a class="active" href="front/index.html">Home</a></li>
							<li class="nav-item"><a href="front/sale.html">Sale</a></li>
							<li class="nav-item"><a href="front/handbags.html">Handbags</a></li>
							<li class="nav-item"><a href="front/accessories.html">Accessories</a></li>
							<li class="nav-item"><a href="front/shoes.html">Shoes</a></li>
							<li class="nav-item"><a href="front/service.html">Services</a></li>
							<li class="nav-item"><a href="front/contact.html">Contact</a></li>
	                 </ul>
	           </nav>
	             <div class="search_box">
				<form>
				   <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
			    </form>
			</div>
	          <div class="clear"> </div>
	          <script src="front/js/responsive.menu.js"></script>
         </div>		  
	<div class="clear"></div>
</div>
</div>
</div>
<div class="wrap">
<!----start-img-cursual---->
	<div id="owl-demo" class="owl-carousel">
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c1.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded shoes</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c2.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded tees</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c3.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded jeens</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c2.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded tees</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c1.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded shoes</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c2.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded tees</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='##################';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="front/images/c3.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="front/##################">branded jeens</a></h4>
				<a href="front/##################" class="btn">shop</a>
			</div>
		</div>	
	</div>
	<!----//End-img-cursual---->
</div>
<!-- start main1 -->
<div class="main_bg1">
<div class="wrap">	
	<div class="main1">
		<h2>featured products</h2>
	</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">	
	<div class="main">
		<!-- start grids_of_3 -->
		<div class="grids_of_3">
			<div class="grid1_of_3">
				<a href="front/##################">
					<img src="front/images/pic1.jpg" alt=""/>
					<h3>branded shoes</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="grid1_of_3">
				<a href="front/##################">
					<img src="front/images/pic2.jpg" alt=""/>
					<h3>branded t-shirts</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="grid1_of_3">
				<a href="front/##################">
					<img src="front/images/pic3.jpg" alt=""/>
					<h3>branded tees</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="clear"></div>
		</div>
		<div class="grids_of_3">
			<div class="grid1_of_3">
				<a href="front/##################">
					<img src="front/images/pic4.jpg" alt=""/>
					<h3>branded bags</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="grid1_of_3">
				<a href="front/##################">
					<img src="front/images/pic5.jpg" alt=""/>
					<h3>ems women bag</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="grid1_of_3">
				<a href="front/##################">
					<img src="front/images/pic6.jpg" alt=""/>
					<h3>branded cargos</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="clear"></div>
		</div>	
		<!-- end grids_of_3 -->
	</div>
</div>
</div>	
<!-- start footer -->
<div class="footer_bg">
<div class="wrap">	
	<div class="footer">
		<!-- start grids_of_4 -->	
		<div class="grids_of_4">
			<div class="grid1_of_4">
				<h4>featured sale</h4>
				<ul class="f_nav">
					<li><a href="front/">alexis Hudson</a></li>
					<li><a href="front/">american apparel</a></li>
					<li><a href="front/">ben sherman</a></li>
					<li><a href="front/">big buddha</a></li>
					<li><a href="front/">channel</a></li>
					<li><a href="front/">christian audigier</a></li>
					<li><a href="front/">coach</a></li>
					<li><a href="front/">cole haan</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>mens store</h4>
				<ul class="f_nav">
					<li><a href="front/">alexis Hudson</a></li>
					<li><a href="front/">american apparel</a></li>
					<li><a href="front/">ben sherman</a></li>
					<li><a href="front/">big buddha</a></li>
					<li><a href="front/">channel</a></li>
					<li><a href="front/">christian audigier</a></li>
					<li><a href="front/">coach</a></li>
					<li><a href="front/">cole haan</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>women store</h4>
				<ul class="f_nav">
					<li><a href="front/">alexis Hudson</a></li>
					<li><a href="front/">american apparel</a></li>
					<li><a href="front/">ben sherman</a></li>
					<li><a href="front/">big buddha</a></li>
					<li><a href="front/">channel</a></li>
					<li><a href="front/">christian audigier</a></li>
					<li><a href="front/">coach</a></li>
					<li><a href="front/">cole haan</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>quick links</h4>
				<ul class="f_nav">
					<li><a href="front/">alexis Hudson</a></li>
					<li><a href="front/">american apparel</a></li>
					<li><a href="front/">ben sherman</a></li>
					<li><a href="front/">big buddha</a></li>
					<li><a href="front/">channel</a></li>
					<li><a href="front/">christian audigier</a></li>
					<li><a href="front/">coach</a></li>
					<li><a href="front/">cole haan</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
</div>	
<!-- start footer -->
<div class="footer_bg1">
<div class="wrap">
	<div class="footer">
		<!-- scroll_top_btn -->
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <a href="front/#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
		<div class="copy">
			<p class="link">Copyright &copy; 2016.LCX All Rights Reserved</p>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
<script type="text/javascript">
//窗口效果
//点击登录class为tc 显示
$(".tc").click(function(){
	$("#gray").show();
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
});
//点击关闭按钮
$("a.guanbi").click(function(){
	$("#gray").hide();
	$("#popup").hide();//查找ID为popup的DIV hide()隐藏
})

//窗口水平居中
$(window).resize(function(){
	tc_center();
});

function tc_center(){
	var _top=($(window).height()-$(".popup").height())/2;
	var _left=($(window).width()-$(".popup").width())/2;
	
	$(".popup").css({top:_top,left:_left});
}	
</script>
<script type="text/javascript">
$(document).ready(function(){ 

	$(".top_nav").mousedown(function(e){ 
		$(this).css("cursor","move");//改变鼠标指针的形状 
		var offset = $(this).offset();//DIV在页面的位置 
		var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
		var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
		$(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 
		
			$(".popup").stop();//加上这个之后 
			
			var _x = ev.pageX - x;//获得X轴方向移动的值 
			var _y = ev.pageY - y;//获得Y轴方向移动的值 
		
			$(".popup").animate({left:_x+"px",top:_y+"px"},10); 
		}); 

	}); 

	$(document).mouseup(function() { 
		$(".popup").css("cursor","default"); 
		$(this).unbind("mousemove"); 
	});
}) 
</script>
</body>
</html>