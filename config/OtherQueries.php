<?php


class OtherQueries {

  private $conn;

  //constructor
  public function __construct($db){
    $this->conn = $db;
  }

  public function getALL($tableName){
    $query = "Select * FROM ". $tableName;
    $stmt = $this->conn->prepare($query);
    $stmt->execute();

    return $stmt;
  }












}










 ?>
