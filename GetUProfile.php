<?php 
 
 require_once 'Uprofile.php';
 require_once 'Follower.php';
 $f=new Follower();
 $up = new Uprofile(); 
 $uid=$_POST['uid'];
 $url = $up->getUProfile($uid);
 $response = array(); 
 
while($sms = $url->fetch_assoc()){
 $temp = array();
 $temp['uid']=$sms['uid'];
 $temp['timestamp']=$sms['timestamp'];
 $temp['profile']="http://feeltunes.com/ItFeelsYou/".$sms['profile'];
 $temp['phone']=$sms['phone'];
 $temp['last_name']=$sms['last_name'];
 $temp['first_name']=$sms['first_name'];
 $temp['nickname']=$sms['nickname'];
 $temp['email']=$sms['email'];
 $temp['website']=$sms['website'];
 $temp['status']=$sms['status'];
 $temp['aboutme']=$sms['aboutme'];
 $temp['gender']=$sms['gender'];
$followerc=array();
$followercount=$f->getFollowerCount($uid);
$followingc=array();
$followingcount=$f->getFollowingCount($uid);
//array_push($followerc,$followercount[0]);    
//array_push($followingc,$followingcount[0]);    
$temp['followerc']=$followercount[0];
$temp['followingc']=$followingcount[0];
echo json_encode($temp);
 //array_push($response,$temp);
 }

// echo json_encode($response);

?>
