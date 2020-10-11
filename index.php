<?php
include_once('./global.php');
$request = $_SERVER['REQUEST_URI']; 
switch ($request) {
  case $domain.'/' :
          require_once __DIR__ . '/Vista/home.php';
      break;
  case $domain.'/login':
    require_once __DIR__.'/Vista/login.php';
  break;
  case $domain.'/dashboard':
    require_once __DIR__.'/Vista/dashboard.php';
  break;
  case $domain.'/administrar-usuarios':
    require_once __DIR__.'/Vista/adminUser.php';
  break;
  case $domain.'/cerrarSesion' :
    session_destroy();
    header('Location:'.$domain.'/');
  break;
  
}
?>