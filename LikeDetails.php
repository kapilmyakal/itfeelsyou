<?php 
 
 require_once 'plike.php';
 
 $db = new plike(); 
 $pid=$_POST['pid'];
 $url = $db->getLikesDetail($pid);
 
 $response = array(); 
 
while($sms = $url->fetch_assoc()){
 $temp = array();
 $temp['likedon']=$sms['likedon'];
 $temp['profile']=$sms['profile'];
 $temp['nickname']=$sms['nickname'];

 array_push($response,$temp);
 }
 
 echo json_encode($response);

?>


