<?php
require_once('DbOperation.php');
require_once('Media.php');
require_once('Post.php');
if($_SERVER['REQUEST_METHOD']=='POST'){

	$filename="";
	$extension="";
	$new_path="";
	//Media Table
        $mid="";
        $mediatype="";
        //Post Table
        $posttimestamp="";
        $pid="";
  	$uid ="";
	$thumbnail="";
        $status="";
        $url="";
        $keywords="";
        $tags="";
        $ismedia="1";
        $ispublic="1";
        $issponsored="no";
        $lang="";
        $latitude="";
        $longitude="";
        $location="";

//ImageUpload
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
move_uploaded_file($_FILES['data']['tmp_name'], $new_path);
$ffmpeg = "/usr/bin/ffmpeg";
		$thumbnail = rand()."thumb.jpg";
                $imgsize = "612x612";
                $sec = 5;
$cmd = "$ffmpeg -i PostData/$fn -an -ss $sec -s $imgsize thumb/$thumbnail";
		
 
if(in_array($extension, $imagetype)) {
//$ismedia="1";
$mediatype="image";
}
else{
//$ismedia="1";
$mediatype="video";
/*		$ffmpeg = "/usr/bin/ffmpeg";
		$videoext=$filename.".".$extension;
		$thumbnail = rand().$filename.".jpg";
                $imgsize = "1280x720";
                $sec = 5;
                //128x128 logo
                $cmd = "$ffmpeg -i PostData/$videoext -an -ss $sec -s $imgsize PostData/$thumbnail";
*/		
}





        $p=new Post();
        $m=new Media();
        $db = new DbOperation(); 
       
        $posttimestamp = round(microtime(true) * 1000);
        $pid = $posttimestamp.$db->generateId();
        $mid=$posttimestamp.$db->generateId();

if (isset($_POST['uid'])) {
                $uid =$_POST['uid'];
}

if (isset($_POST['status'])) {
                $status = $_POST['status'];
}

if (isset($_POST['keywords'])) {
                $keywords = $_POST['keywords'];
}
if (isset($_POST['tags'])) {
      $tags = $_POST['tags'];
}

if (isset($_POST['ispublic'])) {
                $ispublic=$_POST['ispublic'];
}
if (isset($_POST['issponsored'])) {
                $issponsored =$_POST['issponsored'];;
}
if(isset($_POST['lang'])) {
                $lang = $_POST['lang'];
}
if (isset($_POST['latitude'])) {
                $latitude = $_POST['latitude'];
}
if (isset($_POST['longitude'])) {
    $longitude = $_POST['longitude'];
}
if (isset($_POST['location'])) {
    $location = $_POST['location'];
}

//Image Or Video File Name
$path=$filename.'.'.$extension;
//echo  $status;  
 if(!shell_exec($cmd)){
                                        //echo "Success";
                      
}
if($p->createPost($pid,$uid,$status,$path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location))
        {
//$e['error']="false";
//echo json_encode($e);
if($ismedia){
$m->addMedia($mid,$pid,$path,$thumbnail,$mediatype,$extension,$posttimestamp);


}

}

/*if($ismedia){
$m->addMedia($mid,$pid,$path,$thumbnail,$mediatype,$extension,$posttimestamp);
}*/

}

?>




