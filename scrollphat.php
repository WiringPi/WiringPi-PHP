<?php
ini_set("enable_dl","On");
include('wiringpi.php');
wiringpi::scrollPhatSetup();
wiringpi::scrollPhatPrintf("Hello PHP");
?>
