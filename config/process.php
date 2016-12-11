<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once 'database.php';
include_once 'OtherQueries.php';

$database = new Database();
$db = $database->getConnection();

$oq = new OtherQueries($db);
//query all

$request = json_decode(file_get_contents("php://input"),true); //returns array

$stmt = $oq->getALL($request['table']);
$num = $stmt->rowCount();

$data = array();

if($num>0){
  while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    $data[] = $row;
  }
}

echo '{"results":'.json_encode($data).'}';
?>
