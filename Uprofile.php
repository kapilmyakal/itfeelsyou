<?php
 
class Uprofile
{

    private $con;
	public $ppath=""; 

    function __construct()
    {
        require_once dirname(__FILE__) . '/User.php';
        require_once dirname(__FILE__) . '/DbConnect.php';
 
	$u = new User();
        $db = new DbConnect();
//	$this->con=$u->connect();
        $this->con = $db->connect();
    }

 

public function createProfile($id,$userid,$usertimestamp,$profile,$userphonenumber,$last_name,$first_name,$nickname,$email,$website,$status,$aboutme,$gender){

//mkdir("/Users".$timestamp."/".$uid,0777,true);	
/*
if($profile){
$content = file_get_contents($profile);
file_put_contents("Users/".$usertimestamp."/".$userid."/".$usertimestamp.".jpg", $content);

$ppath="Users/".$usertimestamp."/".$userid."/".$usertimestamp.".jpg";
}
else
{
$ppath="";
}*/
//echo "Success Full Inserted In UProfile";

$stmt = $this->con->prepare("INSERT INTO uprofile (id,uid,timestamp,profile,phone,last_name,first_name,nickname,email,website,status,aboutme,gender)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
$stmt->bind_param("sssssssssssss",$id,$userid,$usertimestamp,$profile,$userphonenumber,$last_name,$first_name,$nickname,$email,$website,$status,$aboutme,$gender);

	if($stmt->execute())
{
//		echo "Profile Created";

               return 0; //return 0 means success
}
{

            return 1; //return 1 means failure
}    
}       
           
public function getUProfile($uid){
$stmt=$this->con->prepare("SELECT * from uprofile where uid=?  ORDER BY timestamp DESC LIMIT 1");
$stmt->bind_param("s",$uid);
$stmt->execute();
$r=$stmt->get_result();
return $r;

}
public function getUidFromPhone($userphonenumber){
//echo "aks ".$userphonenumber;
$stmt=$this->con->prepare("SELECT * FROM uprofile WHERE phone=?");
$stmt->bind_param("s",$userphonenumber);
$stmt->execute();
$r=$stmt->get_result();
//echo json_encode($r);
return $r;

}
public function getMaxUProfile($uid){
$stmt=$this->con->prepare("SELECT * from uprofile WHERE uid=? ORDER BY timestamp DESC LIMIT 1");
$stmt->bind_param("s",$uid);
$stmt->execute();
$r=$stmt->get_result();
return $r;

}
 
    } 	

?>
