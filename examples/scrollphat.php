<?php
/*
Copy me into /var/www/html/
Call me with http://<ipaddress>/scrollphat.php?message=<message>
*/
$message = $_GET["message"]
include(ini_get("extension_dir") . "/wiringpi.php");
wiringpi::scrollPhatSetup();
wiringpi::scrollPhatPrintf($message);
?>
