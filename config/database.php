<?php

class Database{
  private $host = "localhost";
  private $db = "cs157a_aptdatabase";
  private $username = "root";
  private $password = "";

  public $conn;

  //connect to db
  public function getConnection(){
    $this->conn = null;
    try{
      $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db, $this->username, $this->password);
    }catch(PDOException $e){
      echo "Failed Connection!: " . $e->getMessage() . "<br/>";
    }
    return $this->conn;
  }
}
 ?>
