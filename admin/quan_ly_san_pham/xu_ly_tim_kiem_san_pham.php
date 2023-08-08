<?php
  session_start();
  include '../module/database.php';
  include '../module/javascript.php';
  $_SESSION['tu_khoa_san_pham'] = $_POST['tu_khoa'];
  $_SESSION['ma_nha_san_xuat'] = $_POST['ma_nha_san_xuat'];
  $_SESSION['ma_loai_san_pham'] = $_POST['ma_loai_san_pham'];
  $_SESSION['gia'] = $_POST['gia'];
  $_SESSION['trang_thai_san_pham'] = $_POST['trang_thai'];
  location('quan_ly_san_pham.php');
?>