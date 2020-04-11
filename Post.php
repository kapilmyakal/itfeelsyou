
<?php
 
class Post
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
   public function createPost($pid,$uid,$status,$new_path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location){
//	echo $uid;
//echo $status;
            $stmt = $this->con->prepare("INSERT INTO post(pid,uid,status,url,mediatype,keywords,tags,addon,ismedia,ispublic,issponsored,lang,latitude,longitude,location) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            $stmt->bind_param("sssssssssssssss",$pid,$uid,$status,$new_path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location);

            if($stmt->execute())
                return 1; //return 1 means success
            return 0; //return 0 means failure
}
public function insertStatus($pid,$uid,$status,$new_path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location)
        {
  $stmt = $this->con->prepare("INSERT INTO post(pid,uid,status,url,mediatype,keywords,tags,addon,ismedia,ispublic,issponsored,lang,latitude,longitude,location) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
//echo "funcation";
            $stmt->bind_param("sssssssssssssss",$pid,$uid,$status,$new_path,$mediatype,$keywords,$tags,$posttimestamp,$ismedia,$ispublic,$issponsored,$lang,$latitude,$longitude,$location);

            if($stmt->execute())
                return 1; //return 1 means success

            return 0; //return 0 means failure

}
    
	
// $con->close();
 }

?>

