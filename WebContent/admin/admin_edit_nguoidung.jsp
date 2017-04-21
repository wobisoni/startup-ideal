<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Forms</title>

<link href="<%=request.getContextPath() %>/template/admin/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/template/admin/css/datepicker3.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/template/admin/css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="<%=request.getContextPath() %>/template/admin/js/lumino.glyphs.js"></script>

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<p class="navbar-brand">Thông tin thành viên</p>
			</div>							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">	
			<li><a href="admin_ql_baidang.html"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Quản lí bài đăng</a></li>
			<li><a href="admin_ql_danhmuc.html"><svg class="glyph stroked clipboard with paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Quản lí danh mục</a></li>
			<li><a href="admin_ql_nguoidung.html"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Quản lí người dùng</a></li>
			<li><a href="admin_ql_lienhe.html"><svg class="glyph stroked two messages"><use xlink:href="#stroked-two-messages"/></svg> Quản lí liên hệ</a></li>
			<li><a href="admin_thongke.html"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Thống kê</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">	
		<div class="logo" >
			<img src="<%=request.getContextPath() %>/template/admin/images/logo.png" width="217px" height="55px"/>
			<a href="index.html" class="logout">Đăng xuất</a>		
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">SE11</h1>
			</div>
		</div><!--/.row-->
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6" style="width:100px">
							<label class="custom-file-upload">
								<input type="file"/>
								<img src="<%=request.getContextPath() %>/template/admin/images/logo.png" width="70" height="70">
							</label>
						</div>
						<div class="col-md-6" style="width:450px">
							<form role="form">							
								<div class="form-group">
									<label style="width:100px">Tên hiển thị</label>
									<input class="form-control" placeholder="Tên hiển thị">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Ngày sinh</label>
									<input class="form-control" placeholder="Ngày sinh">
									
								</div>
								<div class="form-group">
									<label style="width:100px">Email</label>
									<input class="form-control" placeholder="Email">									
								</div>
								<div class="form-group">
									<label style="width:100px">Số điện thoại</label>
									<input class="form-control" placeholder="Số điện thoại">
								</div>		
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary">Sửa</button>
								</div>								
							</form>
						</div>
						<div class="col-md-6" style="width:450px">
							<form role="form">
								<div class="form-group">
									<label style="width:100px">Mật khẩu cũ</label>
									<input class="form-control" placeholder="Tên hiển thị">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mật khẩu mới</label>
									<input class="form-control" placeholder="Ngày sinh">									
								</div>
								<div class="form-group">
									<label style="width:100px">Nhập lại mật khẩu</label>
									<input class="form-control" placeholder="Email">									
								</div>	
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
								</div>		
							</form>							
						</div>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
	</div><!--/.main-->

	<script src="<%=request.getContextPath() %>/template/admin/js/jquery-1.11.1.min.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/chart.min.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/chart-data.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/easypiechart.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/easypiechart-data.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
