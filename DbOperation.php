<?php
 
class DbOperation
{

    private $con;
 

    function __construct()
    {

        require_once dirname(__FILE__) . '/DbConnect.php';
 

        $db = new DbConnect();
 
        $this->con = $db->connect();
    }
//Text Fetch
 public function getTextPost($count){

      $sql="SELECT * FROM post  WHERE mediatype='0' ORDER BY addon DESC  LIMIT $count, 5";
        $stmt = $this->con->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();   
        return $result; 
    }


//Image Fetch
    public function getImagePost($count){
	$mediatype="image";
	$i=1;
        $stmt = $this->con->prepare("SELECT * FROM post WHERE ismedia=? AND mediatype=?  ORDER BY addon DESC LIMIT ?,10");
	$stmt->bind_param("isi",$i,$mediatype,$count);        
        $stmt->execute();
        $result = $stmt->get_result();
        return $result; 
    } 

   public function getImageMultiMediaByPid($pid){
        $mediatype="image";
        $stmt =$this->con->prepare("SELECT * from media where pid=? AND mediatype=?");
        $stmt->bind_param("ss",$pid,$mediatype);
        $stmt->execute();
        $result = $stmt->get_result();
//      echo json_encode($result);     
   return $result; 
        }

   public function getMultiMediaByPid($pid,$mediatype){
	//$mediatype="image";
        $stmt =$this->con->prepare("SELECT * from media where pid=? AND mediatype=?");
        $stmt->bind_param("ss",$pid,$mediatype);
        $stmt->execute();
        $result = $stmt->get_result();
//	echo json_encode($result);     
   return $result; 
        }
//Video Post

    public function getVideoPost($count){
	$mediatype="video";
	$ismedia=1;
	$stmt = $this->con->prepare("SELECT * FROM post WHERE ismedia=? and mediatype=? ORDER BY addon DESC LIMIT ?,10");
	$stmt->bind_param("isi",$ismedia,$mediatype,$count);        
	$stmt->execute();
        $result = $stmt->get_result();
        return $result; 

    }
   public function getVideoByPid($pid){
        $mediatype="video";
        $stmt =$this->con->prepare("SELECT * from media where pid=? and mediatype=?");
        $stmt->bind_param("ss",$pid,$mediatype);
        $stmt->execute();
        $result = $stmt->get_result();
//      echo json_encode($result);     
   return $result; 
        }
   public function getSelfPost($count,$uid){
        $stmt =$this->con->prepare("SELECT * FROM post WHERE uid = ? ORDER BY addon DESC LIMIT ?,10 ");
        $stmt->bind_param("si",$uid,$count);
        $stmt->execute();
        $result = $stmt->get_result();
//      echo json_encode($result);     
   return $result; 
    } 
 
    public function getMixPost($count){

        $stmt = $this->con->prepare("SELECT * FROM post ORDER BY addon DESC LIMIT $count,10");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result; 
    } 
   public function getUProfileByUid($userid){
        $stmt =$this->con->prepare("SELECT * from uprofile where uid=?");
	$stmt->bind_param("s",$userid);
        $stmt->execute();
        $result = $stmt->get_result()->fetch_assoc();
        return array($result['nickname'],$result['profile']); 
        }

	public function generateId($length = 7) {
    		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    		$charactersLength = strlen($characters);
    		$randomString = '';
    		for ($i = 0; $i < $length; $i++) {
        		$randomString .= $characters[rand(0, $charactersLength - 1)];
    		}
		return $randomString;
	}
//Get Comment Details
  public function getCmtDetails($pid){

        $stmt =$this->con->prepare("SELECT * from cmt where pid=? ORDER BY commentedon  ");
        $stmt->bind_param("s",$pid);
        $stmt->execute();
        $result = $stmt->get_result();
//      echo json_encode($result);     
   return $result; 
        }


	public function getAllDevices(){
        	$stmt = $this->con->prepare("SELECT * FROM devices");
	        $stmt->execute();
        	$result = $stmt->get_result();
	        return $result; 
    	}
// $con->close();
}
?>

