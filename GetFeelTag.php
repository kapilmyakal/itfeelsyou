<?php

$email = $_POST['email'];   
$data[0]['feeltag']="attitude";
$data[1]['feeltag']="happy";

$data[2]['feeltag']="sad";
$data[3]['feeltag']=$email;
$sa=  json_decode($email,true);

foreach($sa as $value) {

   //$qtyOut = $value . "<br>";
echo $value['uri'];

}
//echo json_encode($data);
//echo $sa[0]["uri"];
//echo $email;
//echo $sa[0]["uri"];
?>





