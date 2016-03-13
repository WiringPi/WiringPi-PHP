<?php
ini_set("enable_dl","On");
include('wiringpi.php');
echo wiringpi::digitalRead(1);
?>
