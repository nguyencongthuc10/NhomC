<!-- <?php
 // add_theme_support( 'post-thumbnails' );
 ?> -->
 <?php 
/*
  @ Thiết lập các hằng dữ liệu quan trọng
  @ THEME_URL = get_stylesheet_directory() - đường dẫn tới thư mục theme
  @ CORE = thư mục /core của theme, chứa các file nguồn quan trọng.
  */
require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
  define('THEME_URL', get_stylesheet_directory());

  function register_my_menu(){
    register_nav_menu('primary-menu', __('Header Menu'));
  }
  add_action('init', 'register_my_menu');

  function demo_styles()
{
    wp_register_style('bootstrapmin', get_template_directory_uri() . '/assets/css/bootstrap.min.css', 'all');
    wp_enqueue_style('bootstrapmin');
  
 
    wp_register_script('jque-style', get_template_directory_uri() . '/assets/js/jquery.min.js', 'all');
    wp_enqueue_script('jque-style');

    wp_register_style('bootstrapminjs', get_template_directory_uri() . '/assets/js/bootstrap.min.js', 'all');
    wp_enqueue_style('bootstrapminjs');

    wp_register_style('swipercss-style', get_template_directory_uri() .'/assets/css/swiper.min.css', 'all');
    wp_enqueue_style('swipercss-style');

    wp_register_script('swiperjs-style', get_template_directory_uri() .'/assets/js/swiper.min.js', 'all');
    wp_enqueue_script('swiperjs-style');

 
    wp_register_style('woocommerce-style', get_template_directory_uri() . '/style.css', 'all');
    wp_enqueue_style('woocommerce-style');

   

    wp_register_script('2js-style', get_template_directory_uri() .'/assets/js/2.js', 'all');
    wp_enqueue_script('2js-style');
    wp_register_script('3js-style', get_template_directory_uri() .'/assets/js/3.js', 'all');
    wp_enqueue_script('3js-style');
    

    // wp_register_style('stylemain-style', get_template_directory_uri() . '/css/woocomstyle/css/woocommerce.css', 'all');
    // wp_enqueue_style('stylemain-style');

 
    // wp_register_style('reset-style', get_template_directory_uri() . '/assets/css/reset.css', 'all');
    // wp_enqueue_style('reset-style');
    // wp_register_script('script-style', get_template_directory_uri() . '/assets/sitescripts.js', 'all');
    wp_enqueue_script('script-style');
}
add_action('wp_enqueue_scripts', 'demo_styles');