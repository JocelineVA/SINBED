<?php
include('ConexionBD.php');
include('./Modelo/UserModel.php');
class UserController  
{
    private $con;
    public function __construct() {
        $this->con = new ConexionBD();
    }
    public function obtenerUsuarioByNombreUsuario($nom_usuario)
    {
        $user=null;
        $result = $this->con->pdo->query("SELECT * from usuario where nom_usuario='".$nom_usuario."';");
        $result= $result->FETCHALL(PDO::FETCH_ASSOC)[0];
        if(null!=$result){
            $user = new UserModel();
            $user->id = $result['id_usuario'];
            $user->rol = $result['rol'];
            $user->nom_usuario = $result['nom_usuario'];
            $user->pass_usuario = $result['pass_usuario'];
            return $user;
        }
    }
}
