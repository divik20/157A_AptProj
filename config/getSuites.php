<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once 'database.php';
include_once 'Suite.php';

$database = new Database();
$db = $database->getConnection();

$suite = new Suite($db);
//query all
$request = json_decode(file_get_contents("php://input"),true); //returns array

$stmt = $suite->getAll($request);
$num = $stmt->rowCount();


$suiteData = array();

if($num>0){
  while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

    $stmt2 = $suite->getSuiteTenants($row['suiteId']);
    $num2 = $stmt2->rowCount();
    $tenantData = array();

    if($num2>0){
        while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
          $tenantData[] = $row2;
        }

        $row['tenants'] = $tenantData;
        if($row['petsAllowed'] == 0 ) $row['petsAllowed'] = 'NO';
        else $row['petsAllowed'] = 'YES';

        if($row['roomSharing'] == 0 ) $row['roomSharing'] = 'NO';
        else $row['roomSharing'] = 'YES';

        $suiteData[] = $row;
    }

  }

}

echo '{"results":'.json_encode($suiteData).'}';
?>
