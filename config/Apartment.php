<?php

class Apartment{

  private $conn;

  //constructor
  public function __construct($db){
    $this->conn = $db;
  }

  function getAll(){

    $queryGetAll = "SELECT * FROM Apartment";


    $stmt = $this->conn->prepare($queryGetAll);
    $stmt->execute();

    return $stmt;
  }

  function filteredApts($request){

    $query = "SELECT apartment.name, apartment.longitude, apartment.latitude, apartment.city, apartment.state FROM Apartment";


    $cond = array();
    $params = array();

    $joins = array();

    if(!empty($request['numberOfRooms']) || !empty($request['roomSharing']) || !empty($request['petsAllowed']) || !empty($request['priceMin'])|| !empty($request['priceMax'])){
        $joins[] = "apthassuites ON apartment.longitude = apthassuites.aptLongitude AND apartment.latitude = apthassuites.aptLatitude";
        $joins[] = "suite ON apthassuites.suiteId = suite.suiteId";
    }

    if(!empty($request['aptName'])){
      $cond[] = "apartment.name = ?";
      $params[] = $request['aptName'];
    }

    if(!empty($request['city'])){
      $cond[] = "apartment.city = ?";
      $params[] = $request['city'];
    }
    if(!empty($request['state'])){
      $cond[] ="apartment.state = ?";
      $params[] = $request['state'];
    }

    if(!empty($request['numberOfRooms'])) {
      $cond[] = "suite.numberOfRooms = ?";
      $params[] = $request['numberOfRooms'];
    }


    if(!empty($request['roomSharing'])) {
      $cond[] = "suite.roomSharing = ?";
      $params[] = $request['roomSharing'];
    }

    if(!empty($request['petsAllowed'])) {
      $cond[] = "suite.petsAllowed = ?";
      $params[] = $request['petsAllowed'];
    }

    if(!empty($request['priceMin'])) {
      $cond[] = "suite.price >= ?";
      $params[] = $request['priceMin'];
    }
    if(!empty($request['priceMax'])){
      $cond[] = "suite.price <= ?";
      $params[] = $request['priceMax'];
    }

    if(count($joins)){

      $query.= ' JOIN '.implode(' JOIN ', $joins);
    }

    if(count($cond)){
      $query.= ' WHERE '.implode(' AND ', $cond);
    }

    if(count($joins)) $query.= "GROUP BY (apartment.name)";


    //echo $query;
      $stmt = $this->conn->prepare($query);
      $stmt->execute($params);

      return $stmt;

    }

}

?>
