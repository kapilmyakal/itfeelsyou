
<?php
require_once('DbOperation.php');
require_once('plike.php');

if($_SERVER['REQUEST_METHOD']=='POST'){
    
$uid="";
$pid="";

$resp=array();
        $l=new plike();


        
if (isset($_POST['pid'])) {
                $pid = $_POST['pid'];
}
if (isset($_POST['uid'])) {
    $uid = $_POST['uid'];
}

if($l->onDisLiked($pid,$uid))
 {
//    echo "Success...";
 }
  $lcount = $l->getDisLikeCount($pid);
        
      echo json_encode($lcount[0]);

}
?>




