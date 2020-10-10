<?php
    include_once('UserController.php');
    class LoginController{
        const HASH = PASSWORD_BCRYPT; 
        const COST = 12;
        public function autenticar($nom_usuario,$pass)
        {
            $controller = new UserController();
            $response =$controller->obtenerUsuarioByNombreUsuario($nom_usuario);
            $passw = $response->pass_usuario;
            if($response=!null){
                if(password_verify($pass,$passw)){
                     return true;
                }
            }
        }
    }
?>