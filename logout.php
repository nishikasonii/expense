<?php
include_once("config.php");
include_once("functions.php");
unset($_SESSION['uid']);
unset($_SESSION['uname']);
session_destroy();
redirect("index.php");
?>