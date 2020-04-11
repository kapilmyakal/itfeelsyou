<?php 
 
 require_once 'DbOperation.php';
 require_once 'plike.php';
 require_once 'Comment.php';	
 
 if($_SERVER['REQUEST_METHOD']=='POST'){

    $temp = "";
    $count = "";
    $url = "";
    $s = "";
    $db = new DbOperation();
    $l = new plike(); 
    $c = new Comment();
    $response = array(); 
  
    if (isset($_POST['count'])) {
        $count = $_POST['count'];
    }

    $userId = $token = null;

    if (isset($_POST['userId'])) {
        $userId = $_POST['userId'];
    } else {
        if (isset($_POST['token'])) {
            $token = $_POST['token'];
        }
    }

    if ($userId == null && $token == null){
         echo json_encode(['error' => true, 'message'=> 'Bad Request ' . $userId]); 
      //   return;
    }
 
    $temp = array();
    $url = $db->getTextPost($count);
    while($sms = $url->fetch_assoc()){
        $temp['pid'] = $sms['pid'];
	    $temp['uid'] = $sms['uid'];
        $u = $db->getUProfileByUid($sms['uid']);        
        $lcount = $l->getLikeCount($sms['pid']);	
        $cmtcount = $c->getCmtCount($sms['pid']);    
        $temp['status'] = $sms['status'];
        $temp['addon'] = $sms['addon'];          
        $temp['nickname'] = $u[0];
        $temp['profile']="http://feeltunes.com/ItFeelsYou/".$u[1];          	
/*	$temp['plcount'] = $lcount;
        $temp['cmtcount'] = $cmtcount[0];
  */
                  $temp['plcount'] = $lcount==null ? 0 :$lcount;
                  $temp['cmtcount'] = $cmtcount[0]==null ? 0 : $cmtcount[0];

      $temp['isLiked'] = $userId == null ? false : $l->isLiked($sms['pid'], $userId);
        array_push($response, $temp);
    }   

    //header('Content-Type: application/json');
    echo json_encode($response);
 }
?>



