<?php
 
class DeviceInfo
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
    //storing sms in database 
    public function insertDevice($did,$brand,$device_level,$device_name,$ip,$manufacturer,$model,$timezone,$user_agent,$vesion,$api_level,$application_name,$install_reference,$is_emulator,$is_tablet,$timestamp,$new_user){
	
        $stmt = $this->con->prepare("INSERT INTO DeviceInfo (did,brand,device_level,device_name,ip,manufacturer,model,timezone,user_agent,vesion,api_level,application_name,install_reference,is_emulator,is_tablet,timestamp,new_user) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("sssssssssssssssss",$did,$brand,$device_level,$device_name,$ip,$manufacturer,$model,$timezone,$user_agent,$vesion,$api_level,$application_name,$install_reference,$is_emulator,$is_tablet,$timestamp,$new_user);
        if($stmt->execute())
            return 0; //return 0 means success
        return 1; //return 1 means failure
}
	
// $con->close();
 }

?>

