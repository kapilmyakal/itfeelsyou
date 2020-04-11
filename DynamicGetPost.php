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
    if (isset($_POST['istype']))
 {
        $istype = $_POST['istype'];
    }
	switch($istype)
	{
	case "text":
    	$temp = array();
        $url = $db->getTextPost($count);
        while($sms = $url->fetch_assoc()){
 
        $temp['pid']=$sms['pid'];
	$temp['uid']=$sms['uid'];
//	$t['uid']=$sms['uid'];
$u = $db->getUProfileByUid($sms['uid']);
//echo json_encode($u);	  
//GetLike Count
$plc=array();
$pcc=array();
$lcount=$l->getLikeCount($sms['pid']);
	
$cmtcount=$c->getCmtCount($sms['pid']);

    
    
       $temp['status']=$sms['status'];
        $temp['addon']=$sms['addon'];          
        $temp['nickname']=$u[0];
        $temp['profile']="http://feeltunes.com/ItFeelsYou/".$u[1];          
	array_push($plc,$lcount[0]);	
	array_push($pcc,$cmtcount[0]);
	$temp['plcount']=$plc;
	$temp['cmtcount']=$pcc;
        array_push($response,$temp);
        }

          break;
	case "image":
	$temp = array();
//	$t=array();
        $url = $db->getImagePost($count);
        while($sms = $url->fetch_assoc()){
	$t=array();	
        $temp['pid']=$sms['pid'];
        $temp['uid']=$sms['uid'];
	//$temp['url']=$sms['url'];
	$media=$db->getMultiMediaByPid($sms['pid']);

//	$temp['url']=$media[0];
	while($s=$media->fetch_assoc()){

	$s1 = "http://feeltunes.com/ItFeelsYou/PostData/".$s['url'];
	array_push($t,$s1);	
	}
//	array_unique($t);
	$temp['imgurl']=$t;
//	echo json_encode($t);
$u= $db->getUProfileByUid($sms['uid']);
//echo json_encode($u);   
        $temp['status']=$sms['status'];
        $temp['addon']=$sms['addon'];          
        $temp['nickname']=$u[0];
        $temp['profile']=$u[1];          

        array_push($response,$temp);
	//unset($t);
	}
			break;
	case "video":

 $temp = array();
//      $t=array();
        $url = $db->getVideoPost($count);
        while($sms = $url->fetch_assoc()){
	$t=array();     
        $temp['pid']=$sms['pid'];
        $temp['uid']=$sms['uid'];
        $media=$db->getVideoByPid($sms['pid']);
        while($s=$media->fetch_assoc()){

        $s1 = "http://feeltunes.com/ItFeelsYou/PostData/".$s['url'];
        array_push($t,$s1);     
        }
        $temp['imgurl']=$t;
$u= $db->getUProfileByUid($sms['uid']);
        $temp['status']=$sms['status'];
        $temp['addon']=$sms['addon'];  
        $temp['nickname']=$u[0];
        $temp['profile']=$u[1];          

        array_push($response,$temp);
         
        }
  	break;
	case "next":
     	    $url = $db->getMixPost($count);
            while($sms = $url->fetch_assoc()){
            $temp = array();
            $temp['pid']=$sms['pid'];
            $temp['status']=$sms['status'];
	    $temp['addon']=$sms['addon'];          
            $temp['url']=$sms['url'];
             array_push($response,$temp);
                }
 

        break;

	default:
echo "wrong Selection...";
	}
  
      
    
    echo json_encode($response);
//	echo json_encode($resp);
 }
?>
