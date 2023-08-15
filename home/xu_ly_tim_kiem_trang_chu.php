<?php
  session_start();
  include_once "../admin/module/javascript.php";
  include "../home/module/config.php";
  $_SESSION['tu_khoa'] = $_POST['tu_khoa'];
  location('/'.$root.'/home/ket_qua_tim_kiem_trang_chu.php');
?>