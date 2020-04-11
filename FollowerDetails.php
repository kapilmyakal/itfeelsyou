<?php 
require_once 'Follower.php';
require_once 'DbOperation.php';
 $f = new Follower(); 
$db=new DbOperation();
$uid="";
if (isset($_POST["uid"])) {
		$uid = $_POST['uid'];
}
if (isset($_POST["istype"])) {
  $istype = $_POST['istype'];
}

switch($istype)
{
case  "followers":
$url = $f->getFollowerUid($uid);
 
 $response = array(); 

while($sms = $url->fetch_assoc()){
$temp=array();
 $temp['me']=$sms['me'];
$u = $db->getUProfileByUid($sms['me']);
  $temp['nickname']=$u[0];
  $temp['profile']=$u[1];  
array_push($response,$temp);
 }
break;
case "following":
$url = $f->getFollowingUid($uid);
 
 $response = array(); 

while($sms = $url->fetch_assoc()){
$temp=array();
 $temp['me']=$sms['me'];
$u = $db->getUProfileByUid($sms['me']);
  $temp['nickname']=$u[0];
  $temp['profile']=$u[1];  
array_push($response,$temp);
 }

break;
 }
 echo json_encode($response);
?>


