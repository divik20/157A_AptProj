<?php

class Suite{

  private $conn;

  //constructor
  public function __construct($db){
    $this->conn = $db;
  }

  function getAll($request){
    $query = "Select * FROM suite s
    INNER JOIN apthassuites h
    ON h.aptLongitude =".$request['longitude']." AND h.aptLatitude =". $request['latitude']." AND s.suiteId = h.suiteId";

    if(isset($request['petsAllowed'])) $query.= " WHERE s.petsAllowed = " + $request['petsAllowed'];


    $stmt = $this->conn->prepare($query);
    $stmt->execute();

    return $stmt;
  }

  function getSuiteTenants($suiteId){

    $query = "Select t.name,t.phoneNumber,t.description FROM tenant t
    JOIN tenanthassuite x
    ON x.suiteId =".$suiteId." AND x.tenPhoneNum = t.phoneNumber
    ORDER BY t.name ASC";

    $stmt2 = $this->conn->prepare($query);
    $stmt2-> execute();

    return $stmt2;
  }

}

?>
