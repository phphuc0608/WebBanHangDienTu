<?php
  include'../module/kiem_tra_dang_nhap.php'; 
  include '../module/database.php';
  $ma_loai_san_pham = $_POST['ma_loai_san_pham'];
  $ten_loai_san_pham = $_POST['ten_loai_san_pham'];
  $file_name = $_FILES['hinh_anh']['name'];
  $trang_thai = isset($_POST['trang_thai']);

  $sql = "";
  $params = array();
  if($file_name == ''){    
    $sql = "UPDATE loai_san_pham SET ten_loai_san_pham = :ten_loai_san_pham, trang_thai = :trang_thai WHERE ma_loai_san_pham = :ma_loai_san_pham";
  }else{
    $hinh_anh = execute_query("SELECT hinh_anh FROM loai_san_pham WHERE ma_loai_san_pham = {$ma_loai_san_pham}")[0][0];
    unlink("../../data/loai_san_pham/{$hinh_anh}");
    $parts = explode('.',$hinh_anh);
    $date = new DateTimeImmutable();
    $file_name = md5($date->getTimestamp() . $file_name) . '.' . $parts[count($parts ) - 1];
    move_uploaded_file($_FILES['hinh_anh']['tmp_name'], '../../data/loai_san_pham/' . $file_name);
    $hinh_anh = $file_name;

    $sql = "UPDATE loai_san_pham SET ten_loai_san_pham = :ten_loai_san_pham, hinh_anh = :hinh_anh, trang_thai = :trang_thai WHERE ma_loai_san_pham = :ma_loai_san_pham";
    $params['hinh_anh'] = $hinh_anh;
  } 
  $params['ma_loai_san_pham'] = $ma_loai_san_pham;
  $params['ten_loai_san_pham'] = $ten_loai_san_pham;
  $params['trang_thai'] = $trang_thai;
  execute_command($sql,$params);
  header("Location: them_loai_san_pham.php", TRUE, 307);
?>