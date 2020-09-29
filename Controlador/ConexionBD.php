<?php

class ConexionBD
{
    public $pdo=null;
    public function __construct() {
        try{
            $this->pdo = new PDO('mysql:host=127.0.0.1:3307;dbname=sinbed',"root","root");
        }catch(PDOException $e){
            echo 'Error de conexión: ' . $e->getMessage();
            exit;
        }
    }
        
}
