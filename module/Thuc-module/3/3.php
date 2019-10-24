<?php

$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);

if (!class_exists('lessc')) {
  $dir_block = dirname($_SERVER['SCRIPT_FILENAME']);      
  require_once($dir_block.'/libs/lessc.inc.php');
}

$less = new lessc;
$less->compileFile('less/3.less', 'css/3.css');

?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <title>module 3</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="css/bootstrap.min.css" rel="stylesheet"  />
  <link href="css/font-awesome.min.css" rel="stylesheet"/>
  <link href="css/3.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/swiper.css">
  <script src="js/jquery.min.js" ></script>
  <script src="js/swiper.js"></script>
  <script src="js/bootstrap-rating.js"></script>
  <script src="js/3.js"></script>
 
</head>
<body>
 <?php  include'3-content.php'; ?>


</body>
</html>