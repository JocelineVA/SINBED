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
    public function all()
    {
        $result = $this->con->pdo->query("SELECT u.id_usuario,r.nom_rol as rol,u.nom_usuario from usuario as u INNER JOIN rol as r ON u.rol=r.id_rol ;");
        $result= $result->FETCHALL(PDO::FETCH_ASSOC);
        return $result;
    }
}
