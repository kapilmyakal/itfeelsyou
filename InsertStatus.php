
<?php
require_once('DbOperation.php');
require_once('Post.php');

if($_SERVER['REQUEST_METHOD']=='POST'){

	

        //Post Table
        $posttimestamp="";
        $pid="";
  	$uid ="";
    //    $mediatype="";
        $status="";
        $url="";
	$mediatype="0";
        $new_path="";
        $keywords="";
        $tags="";
        $ismedia="0";
        $ispublic="1";
        $issponsored="no";
        $lang="";
        $latitude="";
        $longitude="";
        $location="";


        $p=new Post();
        $db = new DbOperation(); 
       
        $posttimestamp = round(microtime(true) * 1000);
            
if (isset($_POST['uid'])) {
            $uid = $_POST['uid'];
}

if (isset($_POST['pid'])) {
            $pid = $_POST['pid'];
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

//echo  $status;  
if($p->insertStatus($pid,$uid,$status,$new_path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location)){
$e['success']="true";
echo json_encode($e);
}else{
$e['error']="true";
echo json_encode($e);

}
//       echo json_encode($e);


}
?>





