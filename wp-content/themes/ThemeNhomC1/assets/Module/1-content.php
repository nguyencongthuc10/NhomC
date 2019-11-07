<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>

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

          <a class="navbar-brand" href="#"><img src="<?php echo get_template_directory_uri() ?>/assets/images/logo-nille-4.png ?>" alt="img-1" class="img-fix" style="max-width: 50%"></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#search">
     <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
      </button>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse" style="z-index: 100">
        <ul class="nav navbar-nav navbar-left">
             <?php 
              wp_nav_menu( array(
              'menu_class'      => 'nav navbar-nav',
              'menu_id'         => 'main-menu',
              ) );
              ?>
          </ul>
          
          <form class="navbar-form navbar-right hidden-sm hidden-md hidden-xs" role="search" action="/" method="GET">
      <div class="input-group">
      <input type="text" class="search-field"/>
      <span class="input-group-btn">
        <button class="btn btn-search" type="submit"><i class="fa fa-search"></i></button>
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

