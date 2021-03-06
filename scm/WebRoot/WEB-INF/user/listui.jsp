<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- EL表达式支持 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/style_cart.css"/>
	<script type="text/javascript" src="js/demo.js"></script>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style_du.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- start slider -->		
	<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
	<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#da-slider').cslider();
		});
	</script>
		<!-- Owl Carousel Assets -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		     <!-- Owl Carousel Assets -->
		    <!-- Prettify -->
		    <script src="js/owl.carousel.js"></script>
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
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
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
		 <c:if test="${!empty requestScope.user}">
		<td>欢迎你，${sessionScope.user.u_name}！</td>，
		<a  href="#####" class="tc">退出</a></p>
	</c:if>
    
    <c:if test="${empty requestScope.user}">
    	<%// response.sendRedirect(basePath + "loginuser_login.action");%>
		<td align="left"><p align="left"><a align="left" href="javaScript:ulogin()" class="tc">登录</a></p></td>
	</c:if>
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
				<div align="center"><img src="images/zfb_2yuan.jpg" width="150" height="150" /></div>
				
			</div>  
		
			<div class="right">
				<form method="POST" name="form_login" target="_top">
					<div align="center">
						
						<input type="text" name="name" id="name" required="required" placeholder="用户名" autocomplete="off" class="input_yh">
						<input type="password" name="pass" id="pass" required="required" placeholder="密码" autocomplete="off" class="input_mm">
					</div>
					<dd>
						<div align="center"><a href="">遇到登录问题</a></div>
					</dd>
					<div align="center">
						<input type="submit" class="button" title="Sign In" value="登录">
					</div>
				</form>   
				<dd>
					<div align="center"><a href="#" target="_blank">立即注册</a></div>
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
			<a href="index.html"><img src="images/logo.jpg" alt=""/></a>
		</div>
		<div class="h_icon">
		<ul class="icon1 sub-icon1">
			<li><a class="active-icon c1" href="#"><i>$300</i></a>
				<ul class="sub-icon1 list">
					<li><h3>购物车</h3><a href=""></a></li>
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
				<li class="active"><a href="index.html">主页</a></li> |
				<li><a href="sale.html">推荐</a></li> |
				<li><a href="handbags.html">男鞋</a></li> |
				<li><a href="handbags.html">女鞋</a></li> |
				<li><a href="shoes.html">男装</a></li> |
				<li><a href="handbags.html">女装</a></li> |
				<li><a href="service.html">服务</a></li> |
				<li><a href="contact.html">联系我们</a></li>
			</ul>
		</div>
		</div>
	
	
		<div class="top-nav">
	          <nav class="nav">	        	
	    	    <a href="#" id="w3-menu-trigger"> </a>
	                  <ul class="nav-list" style="">
				
				<li class="active"><a href="index.html">主页</a></li> |
				<li><a href="sale.html">推荐</a></li> |
				<li><a href="handbags.html">男鞋</a></li> |
				<li><a href="handbags.html">女鞋</a></li> |
				<li><a href="shoes.html">男装</a></li> |
				<li><a href="handbags.html">女装</a></li> |
				<li><a href="service.html">服务</a></li> |
				<li><a href="contact.html">联系我们</a></li>
	           </nav>
	             <div class="search_box">
				<form>
				   <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
			    </form>
			</div>
	          <div class="clear"> </div>
	          <script src="js/responsive.menu.js"></script>
         </div>		  
	<div class="clear"></div>
</div>
</div>
</div>
<form method="post" name="calist">
<div class="catbox">
  <table id="cartTable">
    <thead>
      <tr>
        
        <th>商品</th>
        <th>单价</th>
        <th>数量</th>
        <th>小计</th>
        <th>状态</th>
        <th>操作</th>
        
      </tr>
    </thead>
	<div class="main_bg1">
		<div class="wrap">	
			<div class="main1"  align="left">
				<h2  color="red">订单</h2>
			</div>
		</div>
	</div>
	
    <tbody>
    <c:if test="${!empty olist}">
    <c:forEach var="order" items="${olist}" varStatus="rowStatus">
      <tr>  
        <td class="goods">
        <c:forEach var="product" items="${plist }" varStatus="rowStatus">
    	<c:if test="${product.pid==order.pid }">
        <img src="${product.img1 }" alt="${product.pname }"/>
         </c:if>
       	</c:forEach> 
       	<c:forEach var="product" items="${plist }" varStatus="rowStatus">
    	<c:if test="${product.pid==order.pid }">
    	<span>${product.pname }</span>
    	</c:if>
    	</c:forEach>
       </td>
       <c:forEach var="product" items="${plist }" varStatus="rowStatus">
    	<c:if test="${product.pid==order.pid }">
        <td class="price" >${product.price}</td>
        </c:if>
        </c:forEach>
        <td class="count">${order.pnum }</td> 
        <c:forEach var="product" items="${plist }" varStatus="rowStatus">
    	<c:if test="${product.pid==order.pid }"> 
        <td class="subtotal">${order.pnum*product.price }</td>
        </c:if>
        </c:forEach>
        <td>${order.ostatus }</td>
        <td class="operation">
        <span class="delete">
        <a href="<%=basePath %>orders/orders_delete.action?orders.oid=${order.oid}">删除</a>
        </span>
        <c:if test="${order.ostatus eq '待付款'}">
        <a href="<%=basePath %>orders/orders_save.action?orders.oid=${order.oid}">付款</a>
        </c:if>
        </td>
       </tr>
        
      </c:forEach>
      </c:if>
    </tbody>
  </table>
</div>
</form>
<script type="text/javascript">
function docount(){
  		document.calist.action = "<%=basePath %>orders/orders_save.action";
  		document.calist.submit();
}
</script>
<script type="text/javascript">
//窗口效果
//点击登录class为tc 显示
/* $(".tc").click(function(){
	$("#gray").show();
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
}); */
function ulogin(){
	$("#gray").show();
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
}
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
