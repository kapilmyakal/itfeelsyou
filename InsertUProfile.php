<?php
require_once('DbOperation.php');
require_once('Uprofile.php');

if($_SERVER['REQUEST_METHOD']=='POST'){

	$id="";
    $uid ="";
    $timestamp="";
    $profile="";
    $phone="";
    $last_name="";
    $first_name="";
    $nickname="";
    $email="";
    $website="";
    $status="";
    $aboutme="";
    $gender="";
	
	$new_path="";

/*//ImageUpload
$upload_folder = "PostData/"; // Your upload folder
$allowed_extensions = array('png', 'jpg', 'jpeg', 'gif', 'mp4', '3gp', 'webm');
$imagetype = array('png', 'jpg', 'jpeg', 'gif');

//if (isset($_POST['data'])) {
$filename = pathinfo($_FILES['data']['name'], PATHINFO_FILENAME);
$extension = strtolower(pathinfo($_FILES['data']['name'], PATHINFO_EXTENSION));
$fn=$_FILES['data']['name'];
//echo $filename;
if(!in_array($extension, $allowed_extensions)) {
    die("Invalid file extension. Only png, jpg, jpeg, gif, mp4, 3gp and webm are allowed.");
   }
  
   
   $new_path = $upload_folder.$filename.'.'.$extension;
   
   if(file_exists($new_path)) { //If filename already exists, add a "_number" to the filename
     $id = 1;
    do {
    $new_path = $upload_folder.$filename.'_'.$id.'.'.$extension;
    $id++;
    } while(file_exists($new_path));
   }
move_uploaded_file($_FILES['data']['tmp_name'], $new_path);*/
	
$db = new DbOperation(); 
$up = new Uprofile();

$timestamp = round(microtime(true) * 1000);

$id = $timestamp.$db->generateId();


if (isset($_POST["uid"])) {
    $uid = $_POST['uid'];
    }
 $mypath = "Users/".$timestamp;
        if (!file_exists($mypath)) {
        mkdir($mypath,0777, true);
        mkdir("Users/".$timestamp."/".$uid,0777,true);
        }
        $upload_folder = $mypath."/".$uid; // Your upload folder
        $allowed_extensions = array('png', 'jpg', 'jpeg', 'gif', 'mp4', '3gp', 'webm');
        $imagetype = array('png', 'jpg', 'jpeg', 'gif');
        
        //if (isset($_POST['data'])) {
        $filename = pathinfo($_FILES['data']['name'], PATHINFO_FILENAME);
        $extension = strtolower(pathinfo($_FILES['data']['name'], PATHINFO_EXTENSION));
        $fn=$_FILES['data']['name'];
        //echo $filename;
        if(!in_array($extension, $allowed_extensions)) {
        die("Invalid file extension. Only png, jpg, jpeg, gif, mp4, 3gp and webm are allowed.");
        }
        $new_path = $upload_folder.$filename.'.'.$extension;
        
        if(file_exists($new_path)) { //If filename already exists, add a "_number" to the filename
         $id = 1;
        do {
        $new_path = $upload_folder.$filename.'_'.$id.'.'.$extension;
        $id++;
        } while(file_exists($new_path));
        }
        move_uploaded_file($_FILES['data']['tmp_name'], $new_path);
        

if (isset($_POST["phonenumber"])) {
$userphonenumber = $_POST['phonenumber'];
}
if (isset($_POST["profile"])) {
$profile = $_POST['profile'];
}else{
$profile="PostData/IMG-20180720-WA0005.jpg";
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

if($uid){
    $url = $up->getMaxUProfile($uid);
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
  
    array_push($response,$temp);
    }

    echo json_encode($response);

 if($uprofile->createProfile($id,$uid,$usertimestamp,$new_path,$userphonenumber,$last_name,$first_name,$nickname,$email,$website,$status,$aboutme,$gender))
         {
// //$e['error']="false";
// //echo json_encode($e);
 }
}
}

?>





