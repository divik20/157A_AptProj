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

  public function countTransNear($aptLong, $aptLat){
    $query = "Select COUNT(modeName) from apthastrans where aptLongitude =".$aptLong. "and aptLatitude = ".$aptLat;
    $stmt = $this->conn->prepare($query);
    $stmt->execute();

    return $stmt;

  }

    public function countSchoolsNear($aptLong, $aptLat){
      $query = "Select COUNT(*) from apthasschool where aptLongitude =".$aptLong. "and aptLatitude = ".$aptLat." GROUP BY schoolLongitude,schoolLatitude";
      $stmt = $this->conn->prepare($query);
      $stmt->execute();

      return $stmt;

    }


      public function countStoresNear($aptLong, $aptLat){
        $query = "Select COUNT(*) from apthasstore where aptLongitude =".$aptLong. "and aptLatitude = ".$aptLat. " GROUP BY storeLongitude, storeLatitude";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;

      }










}










 ?>
