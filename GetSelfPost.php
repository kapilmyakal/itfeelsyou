<?php 
 
 require_once 'DbOperation.php';
 require_once 'plike.php';
 require_once 'Comment.php';    
 
 if($_SERVER['REQUEST_METHOD']=='POST'){
    $istype="";
    $temp="";
    $userId="";
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

//      $temp = array();        
        $url = $db->getSelfPost($count,$userId);
        while($sms = $url->fetch_assoc()){
        $temp=array();
        $t=array(); 
        //echo json_encode($sms);
        $temp['pid']=$sms['pid'];
        $temp['uid']=$sms['uid'];
        $type=$sms['mediatype'];
        $temp['mediatype']=$sms['mediatype'];
        //$temp['videoUrl']="http://lovegurupro.xyz/ItFeelsYou/PostData/".$sms['url'];
        if($type=="image"){

        $imgmedia=$db->getMultiMediaByPid($sms['pid'],$type);
        $lcount = $l->getLikeCount($sms['pid']);        
        $cmtcount = $c->getCmtCount($sms['pid']);  
        while($s=$imgmedia->fetch_assoc()){
        $s1 = "http://feeltunes.com/ItFeelsYou/PostData/".$s['url'];    
        array_push($t,$s1);     
        }
        $temp['mediaurl']=$t;
        }
        if($type=="video"){       
                $media=$db->getMultiMediaByPid($sms['pid'],$type);
        $lcount = $l->getLikeCount($sms['pid']);        
        $cmtcount = $c->getCmtCount($sms['pid']);  
                          while($s=$media->fetch_assoc()){
                                  $v1= "http://feeltunes.com/ItFeelsYou/PostData/".$s['url'];
                                  $t1= "http://feeltunes.com/ItFeelsYou/thumb/".$s['thumb'];
                          }
                  $temp['videoUrl']=$v1;
                  $temp['thumb']=$t1;
                  }
                  $u= $db->getUProfileByUid($sms['uid']);
                  $temp['status']=$sms['status'];
                  $temp['addon']=$sms['addon'];          
                  $temp['nickname']=$u[0];
                  $temp['profile']="http://feeltunes.com/ItFeelsYou/".$u[1];          
          
                  $temp['plcount'] = $lcount;
                  $temp['cmtcount'] = $cmtcount[0];
                  $temp['isLiked'] = $userId == null ? false : $l->isLiked($sms['pid'], $userId);
                  array_push($response, $temp);
              }   
          
              header('Content-Type: application/json');
              echo json_encode($response);
           }
          ?>
          
