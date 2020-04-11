<?php
require_once('DbOperation.php');
require_once('plike.php');

if($_SERVER['REQUEST_METHOD']=='POST'){
    
    $uid="";
    $pid="";
    $type="";
    $lstatus="";
    $nickname="";
    $profile="";
    $likedon="";
    $latitude="";
    $longitude="";
    $location="";
//        $temp=array();

    $resp = array();
    $l = new plike();
    $db = new DbOperation(); 
        
    $likedon = round(microtime(true) * 1000);

            
    if (isset($_POST['pid'])) {
        $pid = $_POST['pid'];
    }

    if (isset($_POST['uid'])) {
        $uid = $_POST['uid'];
    }

    if (isset($_POST['latitude'])) {
        $latitude = $_POST['latitude'];
    }
        
    if (isset($_POST['longitude'])) {
        $longitude = $_POST['longitude'];
    }


/*
echo "hoo";
    if($l->onLiked($uid,$pid,$likedon,$latitude,$longitude)){
        $lcount = $l->getLikeCount($pid);
$temp['isLiked'] = $uid == null ? false : $l->isLiked($pid, $uid);
$temp['count']=$lcount;

        echo json_encode($temp);
    } else{
        echo json_encode(['error' => 1]);
    }
}
*/
    if($l->onLiked($uid,$pid,$likedon,$latitude,$longitude)){
        $lcount = $l->getLikeCount($pid);
$temp['isLiked'] = $uid == null ? false : $l->isLiked($pid, $uid);
$temp['count']=$lcount;

        echo json_encode($temp);
 
//       echo json_encode(['count' => $lcount]);
    } else{
        echo json_encode(['error' => 1]);
    }
}
?>





