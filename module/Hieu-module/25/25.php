<?php

$url_host = 'http://' . $_SERVER['HTTP_HOST'];
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
    $less->compileFile('less/25.less', 'css/25.css');
    
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>25</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/25.css" rel="stylesheet" type="text/css" />
         <script src="js/jquery-2.1.4.min.js"></script>
         <script src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="js/25.js"></script>

    </head>

    <body>
        <?php include '25-content.php'; ?>
    </body>

</html>




