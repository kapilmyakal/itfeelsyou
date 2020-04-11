<?php 
require_once('DbOperation.php'); 
require_once('Uprofile.php');
 require_once('Follower.php');

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


$db = new DbOperation(); 
$up = new Uprofile();
 $response = array(); 

$timestamp = round(microtime(true) * 1000);

$id = $timestamp.$db->generateId();


if (isset($_POST["uid"])) {
                $uid = $_POST['uid'];
}
/*
if (is_uploaded_file($_FILES['data']['name'])) {
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
}
*/
if($uid){
    $url = $up->getMaxUProfile($uid);
   
   while($sms = $url->fetch_assoc()){
    $temp = array();
    $temp['userid']=$sms['uid'];
    $temp['timestamp']=$timestamp;
    
    $temp['phone']=$sms['phone'];
    $userphonenumber=$sms['phone'];
if (isset($_FILES['data'])) {
 $file_name = $_FILES['data']['name'];
                $file_size = $_FILES['data']['size'];
                $file_type = $_FILES['data']['type'];
                $temp_name = $_FILES['data']['tmp_name'];
                $location = "Users/".$timestamp;
  if (!file_exists($location)) {
        mkdir($location,0777, true);
        mkdir("Users/".$timestamp."/".$uid,0777,true);
        }

 	$upload_folder = $location."/".$uid."/"; // Your upload folder
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

                move_uploaded_file($temp_name, $new_path);
        $temp['profile']="http://feeltunes.com/ItFeelsYou/".$new_path;

}else{
        $profile="http://feeltunes.com/ItFeelsYou/".$sms['profile'];
       $temp['profile']="http://feeltunes.com/ItFeelsYou/".$sms['profile'];
}
/*    if (isset($_POST["profile"])) {
        $profile = $_POST['profile'];
        $temp['profile']="http://feeltunes.com/ItFeelsYou/".$_POST['profile'];

        }else{
        $profile="http://feeltunes.com/ItFeelsYou/".$sms['profile'];
        $temp['profile']="http://feeltunes.com/ItFeelsYou/".$sms['profile'];

        }
*/
    if (isset($_POST["last_name"])) {
    $last_name = $_POST['last_name'];
    $temp['last_name']= $_POST['last_name'];

    }else{
        $last_name=$sms['last_name'];
        $temp['last_name']=$sms['last_name'];

    }

    if (isset($_POST["first_name"])) {
        $first_name = $_POST['first_name'];
        $temp['first_name']=$_POST['first_name'];

        }else{
        $first_name=$sms['first_name'];
        $temp['first_name']=$sms['first_name'];

        }

        if (isset($_POST["nickname"])) {
            $nickname = $_POST['nickname'];
            $temp['nickname']=$_POST['nickname'];

            }else{
                $nickname=$sms['nickname'];
                $temp['nickname']=$sms['nickname'];

            }
            if (isset($_POST["email"])) {
                $email = $_POST['email'];
                $temp['email']=$_POST['email'];

                }else{
                    $email =$sms['email'];
                    $temp['email']=$sms['email'];

                }
                if (isset($_POST["website"])) {
                $website = $_POST['website'];
                $temp['website']= $_POST['website'];

                }else {
                    $website =$sms['website'];
                    $temp['website']=$sms['website'];
                }
                if (isset($_POST["status"])) {
                $status = $_POST['status'];
                $temp['status']=$_POST['status'];

                }else {
                    $status=$sms['status'];
                    $temp['status']=$sms['status'];

                }
                if (isset($_POST["aboutme"])) {
                $aboutme = $_POST['aboutme'];
                $temp['aboutme']= $_POST['aboutme'];

                }else {
                    $aboutme=$sms['aboutme'];
                    $temp['aboutme']=$sms['aboutme'];

                }
                if (isset($_POST["gender"])) {
                $gender= $_POST['gender'];
                $temp['gender']=$_POST['gender'];

                }else {
                    $gender=$sms['gender'];
                    $temp['gender']=$sms['gender'];
                }
    $f=new Follower();
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

if($up->createProfile($id,$uid,$timestamp,$new_path,$userphonenumber,$last_name,$first_name,$nickname,$email,$website,$status,$aboutme,$gender))
        {
//$e['error']="false";
//echo json_encode($e);
//echo json_encode($response);

}
}
}
?>





