<base href="http://localhost/dienthoai/" />
<?php
session_start();
include("include/connect.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<!--<html xmlns:fb="http://ogp.me/ns/fb#">-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title> Siêu thị điện máy </title>
	<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="slide/engine/style.css">
	<script type="text/javascript" src="slide/engine/wowslider.js"></script>
	<script type="text/javascript" src="slide/engine/wowslider.mod.js"></script>
	<!--<script>(function(d, s, id) {-->
	<!--  var js, fjs = d.getElementsByTagName(s)[0];-->
	<!--  if (d.getElementById(id)) return;-->
	<!--  js = d.createElement(s); js.id = id;-->
	<!--  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";-->
	<!--  fjs.parentNode.insertBefore(js, fjs);-->
	<!--}(document, 'script', 'facebook-jssdk'));</script>-->
	<!-------------------------------------Slide tài trợ-------------------------------------->
	<script src="js/newsScrollerDefault-rightToleft-bottomTotop.js" type="text/javascript"></script>
	<script src="js/newsScrollerEdit-leftToright-topTobottom.js" type="text/javascript"></script>
	<!-------------------------------------zoom anh-------------------------------->
	<script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script>
	<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />
	<!-------------------------------------Tabs-------------------------------->
	<script>
		// Wait until the DOM has loaded before querying the document
		$(document).ready(function() {
			$('ul.tabs').each(function() {
				// For each set of tabs, we want to keep track of
				// which tab is active and it's associated content
				var $active, $content, $links = $(this).find('a');
				// If the location.hash matches one of the links, use that as the active tab.
				// If no match is found, use the first link as the initial active tab.
				$active = $($links.filter('[href="' + location.hash + '"]')[0] || $links[0]);
				$active.addClass('active');
				$content = $($active.attr('href'));
				// Hide the remaining content
				$links.not($active).each(function() {
					$($(this).attr('href')).hide();
				});
				// Bind the click event handler
				$(this).on('click', 'a', function(e) {
					// Make the old tab inactive.
					$active.removeClass('active');
					$content.hide();
					// Update the variables with the new link and content
					$active = $(this);
					$content = $($(this).attr('href'));
					// Make the tab active.
					$active.addClass('active');
					$content.show();
					// Prevent the anchor's default click action
					e.preventDefault();
				});
			});
		});
	</script>
	<!-------------------------------------slide-------------------------------->
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
	<script language="javascript" type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var buttons = {
				previous: $('#lofslidecontent45 .lof-previous'),
				next: $('#lofslidecontent45 .lof-next')
			};
			$obj = $('#lofslidecontent45').lofJSidernews({
				interval: 4000,
				direction: 'opacitys',
				easing: 'easeInOutExpo',
				duration: 2000,
				auto: true,
				maxItemDisplay: 4,
				navPosition: 'horizontal', // horizontal
				navigatorHeight: 32,
				navigatorWidth: 80,
				mainWidth: 1000,
				buttons: buttons
			});
		});
	</script>
</head>

<body style="background:black">
	<div id="wapper">
		<div id="header">
			<div id="lg-header">
                <img src="img/logo-header.png" width="120px" height="120px" >
				<h1><a href="index.php"></a></h1>


			</div>
			<!-- End .bg-lg-header -->
			<div id="bg-header">
			</div><!-- End .bg-header -->
			<div id="menu-header">
				<?php include("home_include/menu_ngang.php"); ?>
				<!-- End .menu -->
			</div><!-- End .menu-header -->
		</div><!-- End .header -->
		<div id="content">
			<div id="lofslidecontent45" class="lof-slidecontent" style="width:1000px; height:350px;">
				<div class="preload">
					<div></div>
				</div>
				<div id="lof-main-outer">
					<ul class="lof-main-wapper">
						<li><img src="img/slide/slide1.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide8.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide2.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide5.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide6.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide7.jpg" width="1000" height="350"></li>
					</ul>
				</div>

			</div>
			<div id="main-content">
				<div id="left-content">
					<?php include("home_include/left_content.php"); ?>
				</div><!-- End .left-content -->
				<div id="center-content">
					<?php include("content_page.php"); ?>
					<!-------------------------------------------------------------------------------------------------------------------->
				</div><!-- End .center-content -->
				<div id="right-content">
					<?php include("home_include/right_content.php"); ?>
				</div><!-- End .right-content-->
			</div><!-- End .main-content -->

		</div><!-- End .content -->
		<div id="footer">
			<div id="menu-footer">
				<ul>
                    <li><a href="index.php">TRANG CHỦ</a></li>
                    <li><a href="index.php?content=gioithieu">GIỚI THIỆU</a></li>
                    <li><a href="index.php?content=sanpham">ĐIỆN THOẠI</a>
                    <li><a href="index.php?content=laptop">LAPTOP</a>
                    <li><a href="index.php?content=phukien">PHỤ KIỆN</a></li>
                    <li><a href="index.php?content=khuyenmai">KHUYỂN MÃI</a></li>
                    <li><a href="index.php?content=baitap">BÀI TẬP</a></li>
                    <li><a href="index.php?content=hotro">HỖ TRỢ</a></li>
				</ul>
			</div><!-- End .menu-footer -->
			<div id="bg-footer">
				<div id="noidungfooter">
					<div id="lg-footer" >

						<h3><a href="index.php">logo</a>  </h3>
					</div><!-- End .lg-footer -->
					<div id="noidung">
						<ul>
							<li><span id="tencongty">Công Ty Thiết bị điện tử N14</span></li> <br>
							<li>2 - Nguyễn Đình Chiểu - Vĩnh Thọ - Nha Trang </li>
							<li>Điện thoại: 0935948955 </li>
						</ul>
					</div><!-- End .noidung -->
					<div id="thanhngang">
						<img src="img/thanhngang-footer.png">
					</div><!-- End .thanhngang -->
					<div id="copyright">
						<p>Nhóm Sinh Viên: N14 -PHP | Lớp : 61CNTT2 |
						<p>
					</div><!-- End .copyright -->
				</div><!-- End .noidungfooter -->
			</div><!-- End .bg-footer -->
		</div><!-- End .footer -->
	</div><!-- End .wapper -->
</body>

</html>