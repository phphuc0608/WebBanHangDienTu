<?php
  session_start();
  include '../module/database.php';
  include '../module/javascript.php';
  $_SESSION['tu_khoa_tin_tuc'] = $_POST['tu_khoa'];
  $_SESSION['tu_ngay_tin_tuc'] = $_POST['tu_ngay'];
  $_SESSION['den_ngay_tin_tuc'] = $_POST['den_ngay'];
  $_SESSION['ma_loai_tin_tuc'] = $_POST['ma_loai_tin_tuc'];
  $_SESSION['trang_thai_tin_tuc'] = $_POST['trang_thai'];
  location('quan_ly_tin_tuc.php');
?>