<?php

class Apartment{

  private $conn;

  //attributes of table
  public $name;
  public $longitude;
  public $latitude;

  //constructor
  public function __construct($db){
    $this->conn = $db;
  }

  function getAll(){

    $query = "SELECT * FROM Apartment";
    $stmt = $this->conn->prepare($query);
    $stmt->execute();

    return $stmt;
  }

  function filteredApts(){

      $query = "SELECT name,longitude,latitude
              FROM Apartment
              WHERE name = ?";

      if(isset($longitude)){
         $longitude = floatval($longitude);
         $query = $query.",longitude = ?";
      }
      if(isset($latitude)){
         $latitude = floatval($latitude);
         $query = $query.",latitude = ?";
      }
      $stmt = $this->conn->prepare($query);
      $stmt->bindParam(1,$this->name);

      if(isset($longitude)) $stmt->bindParam(2,$this->longitude);
      if(isset($latitude))  $stmt->bindParam(3,$this->latitude);


      $stmt->execute();
      return $stmt;
    }

}

?>
