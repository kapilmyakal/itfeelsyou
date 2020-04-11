


<?php
require_once('DbOperation.php');
require_once('Comment.php');

if($_SERVER['REQUEST_METHOD']=='POST'){

$cid="";
$pid="";
$uid="";
$nickname="";
$profile="";
$commenttext="";
$commentedon="";
//echo "start dskfans ,sdnf";
        $c=new Comment();
        $db = new DbOperation(); 
       
        $commentedon = round(microtime(true) * 1000);
        $cid = $commentedon.$db->generateId();
        
if (isset($_POST['pid'])) {
                $pid = $_POST['pid'];
}
if (isset($_POST['uid'])) {
    $uid = $_POST['uid'];
}
if (isset($_POST['commenttext'])) {
    $commenttext = $_POST['commenttext'];
}
if (isset($_POST['profile'])) {
    $profile = $_POST['profile'];
}
if (isset($_POST['nickname'])) {
    $nickname = $_POST['nickname'];
}
// echo "hi";
if($c->addComment($cid,$pid,$uid,$commenttext,$commentedon,$profile,$nickname))
 {
$e['success']="true";
echo json_encode($e);

  //  echo "Success...";
 }else
{
$e['error']="true";
echo json_encode($e);

}
// if($ismedia){
// $m->addMedia($mid,$pid,$new_path,$mediatype,$extension,$posttimestamp);
// }
}
?>





