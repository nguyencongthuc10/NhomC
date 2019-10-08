<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

	<link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/bootstrap/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Title</a>
			</div>
	
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<?php 
    wp_nav_menu( array(
        'theme_location'  => 'header-menu', // Gọi menu đã đăng ký trong function
        'depth'           => 2,     // Cấu hình dropdown 2 cấp
        'container'       => false, // Thẻ div bọc menu
        'menu_class'      => 'navbar-nav ml-auto', // Class của nav bootstrap
        
    ));
?>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>
</body>
</html>