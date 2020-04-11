<?php
 
class Follower
{
	 //Database connection link
    private $con;
 
    //Class constructor
    function __construct()
    {
        //Getting the DbConnect.php file
        require_once dirname(__FILE__) . '/DbConnect.php';
 
        //Creating a DbConnect object to connect to the database
        $db = new DbConnect();
 
        //Initializing our connection link of this class
        //by calling the method connect of DbConnect class
        $this->con = $db->connect();
    }
 
    //storing sms in database 
   public function addFollower($fid,$me,$you,$followingon){
	
            $stmt = $this->con->prepare("INSERT INTO follower (fid,me,you,followingon) VALUES (?,?,?,?)");
            $stmt->bind_param("ssss",$fid,$me,$you,$followingon);
            if($stmt->execute())
                return 1; //return 1 means success
            return 0; //return 0 means failure
    }

 public function getFollowerUid($uid){
//	echo "hi i am in fun";
        $stmt = $this->con->prepare("SELECT * FROM follower WHERE you=?");
	$stmt->bind_param("s",$uid);        
        $stmt->execute();
        $result = $stmt->get_result();
        return $result; 
    } 

 public function getFollowingUid($uid){
//      echo "hi i am in fun";
        $stmt = $this->con->prepare("SELECT * FROM follower WHERE me=?");
        $stmt->bind_param("s",$uid);        
        $stmt->execute();
        $result = $stmt->get_result();
        return $result; 
    } 

public function getFollowerCount($uid){
$stmt=$this->con->prepare("SELECT count(*) as countfollower from follower where you=?");
$stmt->bind_param("s",$uid);
$stmt->execute();
$result=$stmt->get_result()->fetch_assoc();
return array($result['countfollower']);
}

public function getFollowingCount($uid){
$stmt=$this->con->prepare("SELECT count(*) as countfollowing from follower where me=?");
$stmt->bind_param("s",$uid);
$stmt->execute();
$result=$stmt->get_result()->fetch_assoc();
return array($result['countfollowing']);
}


 }

?>
