
<?php
 
class plike
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
 
        $this->con = $db->connect();
    }
    
    //$uid,$pid,$type,$lstatus,$likedon,$latitude,$longitude,$location
    public function onLiked($uid,$pid,$likedon,$lattitude,$longitude) {            
        if(!$this->isUserExists($uid)){
            return false;
        }  
        
        $liked = !$this->isLiked($pid, $uid);

        $stmt = $this->con->prepare('INSERT INTO posts_like (user_id, post_id, liked, lattitude, longitude, action_on) VALUES (?,?,?,?,?,?)');            
        
        $stmt->bind_param("ssiddi", $uid, $pid, $liked, $lattitude, $longitude, $likedon);

        try{
            $stmt->execute();            
            return true;
        } catch(Exception $e){
            return false;
        }
    }
    

    public function  onDisLiked($pid,$uid){
        $stmt = $this->con->prepare("DELETE FROM `plike` WHERE pid=? AND uid=?");
        $stmt->bind_param("ss",$pid,$uid);
        if($stmt->execute())
            return 1; //return 1 means success
        return 0; //return 0 means failure
    }
    
    public function getLikeCount($pid){
        $sql = "SELECT COUNT(*) as countLike FROM posts_like WHERE liked = true and id IN ( SELECT MAX(id) FROM posts_like WHERE post_id = ? GROUP BY user_id)";
        $stmt = $this->con->prepare($sql);
        $stmt->bind_param("s",$pid);
        $stmt->execute();
        $result=$stmt->get_result()->fetch_assoc();
        return $result['countLike'] == null ? 0 : $result['countLike'];
    }

    public function isUserExists($userId){
        $stmt=$this->con->prepare("SELECT id  FROM user WHERE id = ?");
        $stmt->bind_param("s",$userId);
        $stmt->execute();
        $result=$stmt->get_result()->fetch_assoc();

        if($result['id'] == null){
            return false;
        }
        return true;
    }

    public function isLiked($pid, $uid){
        
        if(!$this->isUserExists($uid)){
            return false;
        }        

        $stmt = $this->con->prepare("SELECT liked as is_liked FROM posts_like WHERE id = (SELECT MAX(id) FROM posts_like WHERE user_id = ? AND post_id = ?)");
        $stmt->bind_param("ss",$uid, $pid);
        $stmt->execute();
        $result=$stmt->get_result()->fetch_assoc();
        return $result['is_liked'] == null ? false : ( $result['is_liked'] == 1 ? true : false );
    }

    public function getDisLikeCount($pid){
        $stmt=$this->con->prepare("SELECT count(*) as countLike from plike where pid=?");
        $stmt->bind_param("s",$pid);
        $stmt->execute();
        $result=$stmt->get_result()->fetch_assoc();
        return $result['countLike'];
    }
  
    public function getLikesDetail($pid){
       
        $stmt =$this->con->prepare("SELECT * from plike where pid=? ORDER BY likedon DESC");
        $stmt->bind_param("s",$pid);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result; 
    }

 }

?>


