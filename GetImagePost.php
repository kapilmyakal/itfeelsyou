<?php 
 
 require_once 'DbOperation.php';
 require_once 'plike.php';
 require_once 'Comment.php';	
 
 if($_SERVER['REQUEST_METHOD']=='POST'){
    $istype="";
    $temp="";
    $count = "";
    $url = "";
    $s="";
    $db = new DbOperation();
    $l=new plike(); 
    $c=new Comment();
    $response = array(); 
  
   if (isset($_POST['count'])) {
            $count = $_POST['count'];
    }
   if (isset($_POST['userId'])) {
        $userId = $_POST['userId'];
    } else {
        if (isset($_POST['token'])) {
            $token = $_POST['token'];
        }
    }

    if ($userId == null && $token == null){
         echo json_encode(['error' => true, 'message'=> 'Bad Request ' . $userId]); 
         return;
    }
  	$temp = array();

        $url = $db->getImagePost($count);
        while($sms = $url->fetch_assoc()){
	$t=array();	
        $temp['pid']=$sms['pid'];
        $temp['uid']=$sms['uid'];
	//$temp['url']=$sms['url'];
	$media=$db->getImageMultiMediaByPid($sms['pid']);
	$lcount = $l->getLikeCount($sms['pid']);	
        $cmtcount = $c->getCmtCount($sms['pid']);  
	while($s=$media->fetch_assoc()){
	$s1=$s['url'];
	//$s1 = "http://feeltunes.com/ItFeelsYou/PostData/".$s['url'];
	array_push($t,$s1);	
	}

	$temp['mediaurl']=$t;

	$u= $db->getUProfileByUid($sms['uid']);

        $temp['status']=$sms['status'];
        $temp['addon']=$sms['addon'];          
        $temp['nickname']=$u[0];
        $temp['profile']="http://feeltunes.com/ItFeelsYou/".$u[1];          
/*	$temp['plcount'] = $lcount;
        $temp['cmtcount'] = $cmtcount[0];
  */
                  $temp['plcount'] = $lcount==null ? 0 :$lcount;
                  $temp['cmtcount'] = $cmtcount[0]==null ? 0 : $cmtcount[0];
      $temp['isLiked'] = $userId == null ? false : $l->isLiked($sms['pid'], $userId);
        array_push($response, $temp);
    }   

    header('Content-Type: application/json');
    echo json_encode($response);
 }
?>
