<?php
ini_set("enable_dl","On");
include('wiringpi.php');
wiringpi::wiringpisetupgpio();
echo wiringpi::digitalRead(1);
?>
