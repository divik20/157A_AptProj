<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once 'database.php';
include_once 'Apartment.php';
include_once 'OtherQueries.php';

$database = new Database();
$db = $database->getConnection();

$apt = new Apartment($db);
//query all
$oq = new OtherQueries($db);

$stmt = $apt->getAll();
$num = $stmt->rowCount();

$data = array();

if($num>0){
  while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

    $stmt2 = $oq->countTransNear($row['longitude'],$row['latitude']);
    $countTrans = $stmt2->rowCount();

    if($countTrans > 0){
      $row['hasNearbyTrans'] = "YES";
    }else{
      $row['hasNearbyTrans'] = "NO";
    }

    $stmt3 = $oq->countSchoolsNear($row['longitude'],$row['latitude']);
    $countSchools = $stmt3->rowCount();

    if($countSchools > 0){
      $row['hasNearbySchools'] = "YES";
    }else{
      $row['hasNearbySchools'] = "NO";
    }

    $stmt4 = $oq->countStoresNear($row['longitude'],$row['latitude']);
    $countStores = $stmt4->rowCount();

    if($countStores > 0){
      $row['hasNearbyStores'] = "YES";
    }else{
      $row['hasNearbyStores'] = "NO";
    }

    $data[] = $row;
  }
}

echo '{"results":'.json_encode($data).'}';
?>
