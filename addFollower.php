<?php
require_once('DbOperation.php');
require_once('Follower.php');

		 $followingon="";
		 $me="";
		 $you="";
		 $fid="";
              
 if($_SERVER['REQUEST_METHOD']=='POST'){
		 $db = new DbOperation(); 
		$f=new Follower();
        $followingon = round(microtime(true) * 1000);
	    $fid = $followingon.$db->generateId();
	       
if (isset($_POST["me"])) {
		$me = $_POST['me'];
}
if (isset($_POST["you"])) {
		$you = $_POST['you'];
}

       if($f->addFollower($fid,$me,$you,$followingon))
			{
                echo "success";
            }

}
?>

