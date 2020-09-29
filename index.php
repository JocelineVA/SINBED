<?php
$domain = '/SINBED';
$request = $_SERVER['REQUEST_URI']; 
switch ($request) {
  case $domain.'/' :
          require_once __DIR__ . '/Vista/home.php';
      break;
  case $domain.'/login':
    require_once __DIR__.'/Vista/login.php';
  break;
  
}
?>