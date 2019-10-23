<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
  <div class="type-1">
  <div class="container">
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

          <a class="navbar-brand" href="#"><img src="img/logo-nille-4.png" alt="img-1" class="img-fix" style="max-width: 50%"></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#search">
     <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
      </button>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
        
          <ul class="nav navbar-nav navbar-left">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">HOME</a>
              <ul class="dropdown-menu">
                <li><a href="#">Main Home</a></li>
                <li><a href="#">Cosmetics Home</a></li>
                <li><a href="#">Floating Products</a></li>
                <li><a href="#">Clothing Home</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-left">
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES</a>
              <ul class="dropdown-menu">
                <li><a href="#">About Me</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Our Team</a></li>
                <li><a href="#">Video Pages</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-left">
           
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">SHOP</a>
              <ul class="dropdown-menu">
                <li><a href="#">Shop Type</a></li>
                <li><a href="#">Products Type</a></li>
                <li><a href="#">Shop Layouts</a></li>
                <li><a href="#">Shop Pages</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-left">
           
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">PORTFOLIO</a>
              <ul class="dropdown-menu">
                <li><a href="#">Portfolio Type</a></li>
                <li><a href="#">Portfolio Layouts</a></li>
                <li><a href="#">Portfolio Single</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-left">
          
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">BLOG</a>
              <ul class="dropdown-menu">
                <li><a href="#">Blog Standard</a></li>
                <li><a href="#">Blog Left Sidebar</a></li>
                <li><a href="#">Blog No Sidebar</a></li>
                <li><a href="#">Post Types</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-right hidden-sm hidden-md hidden-xs" role="search" action="/" method="GET">
      <div class="input-group">
      <input type="text" class="form-control" placeholder="Tìm kiếm..."/>
      <span class="input-group-btn">
        <button class="btn btn-success" type="button">Tìm kiếm</button>
      </span>
      </div>
      </form>
        </div><!-- /.navbar-collapse -->
      <div class="collapse navbar-collapse hidden-lg" id="search">
      <form class="mobile_search hidden-sm hidden-md hidden-lg" role="search" action="/" method="GET">
      <div class="input-group">
      <input type="text" class="form-control" placeholder="Tìm kiếm..."/>
      <span class="input-group-btn">
        <button class="btn btn-success" type="button">Tìm kiếm</button>
      </span>
      </div>
</form>
    </div>
      </div>
    </nav>
  </div>
</div>


<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    $(".dropdown a").hover(function() {
      $(this).find("dropdown-menu li a:first").slideDown(500);
    }, function() {
      $(this).find("dropdown-menu li a:first").hide(300);
    });


  });
</script>
</body>
</html>
