<?php
 require_once('DeviceInfo.php');

        $timestamp="";
        $brand="";
        $device_level="";
        $device_name ="";
        $ip="";
        $manufacturer="";
        $model="";
        $timezone="";
        $user_agent="";
        $vesion="";
        $api_level="";
        $application_name="";
        $install_reference="";
        $is_emulator="";
        $is_tablet="";
        $new_user="";
        
        $timestamp = round(microtime(true) * 1000);
		// $usertimestamp = round(microtime(true) * 1000);

 if($_SERVER['REQUEST_METHOD']=='POST'){
		
        $db = new DeviceInfo(); 
	       
        if (isset($_POST["brand"])) {
                $brand = $_POST['brand'];
        }
        if (isset($_POST["deviceLevel"])) {
                $device_level = $_POST['deviceLevel'];
        }

        if (isset($_POST["deviceName"])) {
                $device_name = $_POST['deviceName'];
        }

        if (isset($_POST["ipAddress"])) {
                $ip = $_POST['ipAddress'];
        }

        if (isset($_POST["manufacturer"])) {
                $manufacturer = $_POST['manufacturer'];
        }

        if (isset($_POST["model"])) {
                $model = $_POST['model'];
        }

        if (isset($_POST["timezone"])) {
                $timezone = $_POST['timezone'];
        }

        if (isset($_POST["userAgent"])) {
                $user_agent = $_POST['userAgent'];
        }

        if (isset($_POST["version"])) {
                $vesion = $_POST['version'];
        }

        if (isset($_POST["apiLevel"])) {
                $api_level = $_POST['apiLevel'];
        }

        if (isset($_POST["applicationName"])) {
                $application_name = $_POST['applicationName'];
        }

        if (isset($_POST["installReference"])) {
                $install_reference = $_POST['installReference'];
        }

        if (isset($_POST["isEmulator"])) {
                $is_emulator = $_POST['isEmulator'];
        }

        if (isset($_POST["isTablet"])) {
                $is_tablet = $_POST['isTablet'];
        }

        if (isset($_POST["ts"])) {
               $ts= $_POST['ts'];
        }
	if(isset($POST["new_user"])){
	$new_user = $_POST['new_user'];

	}
//	echo "hello"


        if(!$db->insertDevice($timestamp,$brand,$device_level,$device_name,$ip,$manufacturer,$model,$timezone,$user_agent,$vesion,$api_level,$application_name,$install_reference,$is_emulator,$is_tablet,$timestamp,$new_user))
        {
//         echo "success";
$e['success']="true";
echo json_encode($e);
  
      }
else{
$e['error']="true";
echo json_encode($e);

}
        // $myObj->userid = $userid;
        // $myObj->tp = $usertimestamp;
        // $myObj->profile ="http://18.191.179.1/ItFeelsYou/Users/".$usertimestamp."/".$userid."/".$usertimestamp.".jpg" ;
        // $myObj->nickname=$nickname;

        // $myJSON = json_encode($myObj);

        // echo $myJSON;
}

	
?>


