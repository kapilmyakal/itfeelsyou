<?php 
 
 require_once 'DbOperation.php';
 
 $db = new DbOperation(); 
 $pid=$_POST['pid'];
 $url = $db->getCmtDetails($pid);
 
 $response = array(); 
 
while($sms = $url->fetch_assoc()){
 $temp = array();
 $temp['commenttext']=$sms['commenttext'];
 $temp['commentedon']=$sms['commentedon'];
 $temp['profile']=$sms['profile'];
 $temp['nickname']=$sms['nickname'];

 array_push($response,$temp);
 }
 
 echo json_encode($response);

?>

