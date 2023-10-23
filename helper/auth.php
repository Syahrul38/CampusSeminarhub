<?php
session_start();

function isLogin()
{
  if($_SESSION['level']==""){
		header("location:../login.php?pesan=gagal");
	}
}
?>
