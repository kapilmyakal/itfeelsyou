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
        $newpath="";
	$userId="";
	$status=0;  
      $p=new Post();
        $m=new Media();
        $db = new DbOperation(); 
       
        $posttimestamp = round(microtime(true) * 1000);
//        $pid = $posttimestamp.$db->generateId();
       // $mid=$posttimestamp.$db->generateId();

if (isset($_POST['pid'])) {

                $pid = $_POST['pid'];

}
if (isset($_POST['userId'])) {

                $userId = $_POST['userId'];
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
                $issponsored =$_POST['issponsored'];
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
if (isset($_POST['mediaType'])) {
    $mediatype = $_POST['mediaType'];
}
if (isset($_POST['mediaurl'])) {
    $newpath = $_POST['mediaurl'];
 
}
$sa=  json_decode($newpath,true);

//foreach($sa as $value) {

   //$qtyOut = $value . "<br>";
//echo $value['uri'];



//foreach($newpath as $value) {
//echo $value;
//   $qtyOut = $value . "<br>";

//}
echo $uid;
if($p->createPost($pid,$userId,$status,$sa[0]['uri'],$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location))
        {
//echo "success";
//$e['success']="true";
//echo json_encode($e);
foreach($sa as $value) {
        $mid=$posttimestamp.$db->generateId();

if($m->addMedia($mid,$pid,$value['uri'],$thumbnail,$mediatype,$extension,$posttimestamp)){
$status=1;
}else{ 
$status=0;
}
}
}else{
//$e['error']="true";
//echo json_encode($e);
$status=0;
}

/*if($ismedia){
$m->addMedia($mid,$pid,$path,$thumbnail,$mediatype,$extension,$posttimestamp);
echo "media success";

}

if($p->createPost($pid,$userId,$status,$path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location))
        {
echo "hii";
if($ismedia){
$m->addMedia($mid,$pid,$path,$thumbnail,$mediatype,$extension,$posttimestamp);
$e['success']="true";
echo json_encode($e);



}else{ 
$e['error']="true";
echo json_encode($e);

}

}else{ 
$e['error']="true";
echo json_encode($e);

}
*/
if($status){
//$m->addMedia($mid,$pid,$path,$thumbnail,$mediatype,$extension,$posttimestamp);
$e['success']="true";
echo json_encode($e);



}else{
$e['error']="true";
echo json_encode($e);

}
}

?>





