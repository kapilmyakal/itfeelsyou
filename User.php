<?php
 
class User
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
   public function createUser($userid,$usertimestamp,$userphonenumber,$userfid, $usergid, $useripaddr){
	
            $stmt = $this->con->prepare("INSERT INTO user (id,timestamp,phonenumber,fid,gid,ipaddr) VALUES (?,?,?,?,?,?)");
            $stmt->bind_param("ssssss",$userid,$usertimestamp,$userphonenumber,$userfid, $usergid, $useripaddr);
            if($stmt->execute())
                return 0; //return 0 means success
            return 1; //return 1 means failure
    }
	
// $con->close();
 }

?>
