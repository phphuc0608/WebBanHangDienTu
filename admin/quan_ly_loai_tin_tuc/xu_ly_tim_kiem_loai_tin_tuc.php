<?php
  include_once '../module/kiem_tra_dang_nhap.php';
  include_once '../module/database.php';
  include_once '../module/javascript.php';
  $_SESSION['tu_khoa_loai_tin_tuc'] = $_POST['tu_khoa'];
  $_SESSION['trang_thai_loai_tin_tuc'] = $_POST['trang_thai'];
  location('quan_ly_loai_tin_tuc.php');
?>