<?php 
session_start();
session_unset('email');
session_unset('pass');
session_destroy();
header('location:home.php');
?>