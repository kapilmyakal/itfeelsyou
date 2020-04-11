<?php
 
class Media
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
   public function addMedia($mid,$pid,$new_path,$thumbnail,$mediatype,$extension,$posttimestamp){
	
            $stmt = $this->con->prepare("INSERT INTO media (mid,pid,url,thumb,mediatype,ext,addedon) VALUES (?,?,?,?,?,?,?)");
            $stmt->bind_param("sssssss",$mid,$pid,$new_path,$thumbnail,$mediatype,$extension,$posttimestamp);
            if($stmt->execute())
                return 1; //return 1 means success
            return 0; //return 0 means failure
    }
	
 }

?>
