<?php
if( get_session("uid") && get_session("team_id") ){
	$page = uri("segment", 1);
	$router = service('router'); 
	$controller  = $router->controllerName();  
	$controller  = explode("\\", $controller);  
	$controller = $controller[2];

}