
<?php
require_once('DbOperation.php');
require_once('Uprofile.php');
require_once('User.php');
require_once 'Uprofile.php';
require_once 'Follower.php';

$mysqli = new mysqli('localhost','root','pass@123','Feelsyou');

		 $usertimestamp="";
		 $userid="";
		 $userfid="";
		 $usergid="";
                 $useripaddr="";
                 $userphonenumber="";
                 $id="";
                 $profile="";
                 $last_name="";
                 $first_name="";
                 $nickname="";
                 $email="";
                 $website="";
                 $status="";
                 $aboutme="";
	 	 $gender="";
 		 $mypath="";	

 if($_SERVER['REQUEST_METHOD']=='POST'){
		
		$user=new User();
                $db = new DbOperation(); 
		$uprofile = new Uprofile();
	       
 	        $useripaddr = $_SERVER['REMOTE_ADDR'];
		$usertimestamp = round(microtime(true) * 1000);
	
    	        $id = $usertimestamp.$db->generateId();
	        $userid = $usertimestamp.$db->generateId();

if (isset($_POST["fid"])) {
		$userfid = $_POST['fid'];
}
if (isset($_POST["gid"])) {
		$usergid = $_POST['gid'];
}
if (isset($_POST["phonenumber"])) {
		$userphonenumber = $_POST['phonenumber'];
}
if (isset($_POST["profile"])) {
		$profile = $_POST['profile'];
}else{
$profile="PostData/logo.jpg";
}

if (isset($_POST["last_name"])) {
		$last_name = $_POST['last_name'];
}
if (isset($_POST["first_name"])) {
		$first_name = $_POST['first_name'];
}
if (isset($_POST["nickname"])) {
		$nickname = $_POST['nickname'];
}
if (isset($_POST["email"])) {
		$email = $_POST['email'];
}
if (isset($_POST["website"])) {
		$website = $_POST['website'];
}
if (isset($_POST["status"])) {
		$status = $_POST['status'];
}
if (isset($_POST["aboutme"])) {
		$aboutme = $_POST['aboutme'];
}
if (isset($_POST["gender"])) {
                $gender= $_POST['gender'];
}

$result = $mysqli->query("SELECT phonenumber FROM user WHERE phonenumber = $userphonenumber");
if($result->num_rows == 0) {
     // row not found, do stuff...

$mysqli->close();



$mypath = "Users/".$usertimestamp;
if (!file_exists($mypath)) {
mkdir($mypath,0777, true);
 
        
//          echo('Folder Created');
	 mkdir("Users/".$usertimestamp."/".$userid,0777,true);
        }
        else
        {
//          echo('Folders Not created ');
        }
             
if(!$user->createUser($userid,$usertimestamp,$userphonenumber,$userfid,$usergid,$useripaddr))
{

$uprofile->createProfile($id,$userid,$usertimestamp,$profile,$userphonenumber,$last_name,$first_name,$nickname,$email,$website,$status,$aboutme,$gender);

}
$response=array();
$myObj=array();
$myObj['userid'] = $userid;
$myObj['timestamp'] = $usertimestamp;
$myObj['profile']="http://feeltunes.com/ItFeelsYou/".$profile;
//$myObj->profile ="http://feeltunes.com/ItFeelsYou/Users/".$usertimestamp."/".$userid."/".$usertimestamp.".jpg" ;
$myObj['nickname']=$nickname;
$myObj['followerc']="0";
$myObj['followingc']="0";
 array_push($response,$myObj);
echo json_encode($response);
//echo  json_encode($myObj);

}			
else 
{
//echo $userphonenumber;
//$result = $mysqli->query("SELECT * FROM uprofile WHERE phone = $userphonenumber");
//echo json_encode($result);
 $f=new Follower();
 $up = new Uprofile(); 
 $u=$up->getUidFromPhone($userphonenumber);
 $s=$u->fetch_assoc();
 $uid= $s['uid'];
 $url = $up->getUProfile($uid);
 $response = array(); 
 
while($sms = $url->fetch_assoc()){
 $temp = array();
 $temp['userid']=$sms['uid'];
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

 array_push($response,$temp);
 }

 echo json_encode($response);

}

}
?>

