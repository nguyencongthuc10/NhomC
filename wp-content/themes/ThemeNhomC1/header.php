<!DOCTYPE html>
<html lang="en">
<head>
  
    <meta charset="<?php bloginfo('charset'); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="profile" href="http://gmgp.org/xfn/11" />
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
        
        <?php wp_head(); ?>
    
</head>
<body <?php body_class( 'woocommerce' ); ?> > <!--Thêm class tượng trưng cho mỗi trang lên <body> để tùy biến-->
     
<?php get_template_part('/assets/Module/1', 'content');   ?>
