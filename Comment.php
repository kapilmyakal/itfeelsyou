<?php
 
class Comment
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
   public function addComment($cid,$pid,$uid,$commenttext,$commentedon,$profile,$nickname){
//	echo $cid;
            $stmt = $this->con->prepare("INSERT INTO cmt (cid,pid,uid,commenttext,commentedon,profile,nickname) VALUES (?,?,?,?,?,?,?)");
            $stmt->bind_param("sssssss",$cid,$pid,$uid,$commenttext,$commentedon,$profile,$nickname);
            if($stmt->execute())
                return 1; //return 1 means success
            return 0; //return 0 means failure
    }
public function getCmtCount($pid){
$stmt=$this->con->prepare("SELECT count(*) as countComment from cmt where pid=?");
$stmt->bind_param("s",$pid);
$stmt->execute();
$result=$stmt->get_result()->fetch_assoc();
return array($result['countComment']);
}



 }

?>

