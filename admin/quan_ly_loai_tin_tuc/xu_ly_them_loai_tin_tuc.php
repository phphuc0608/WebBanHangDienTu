<?php
  include_once '../module/kiem_tra_dang_nhap.php';
  include_once '../module/database.php';
  include_once '../module/javascript.php';
  $ten_loai_tin_tuc = $_POST['ten_loai_tin_tuc'];
  $trang_thai = isset($_POST['trang_thai']);
  $params = array();
  $params['ten_loai_tin_tuc'] = $ten_loai_tin_tuc;
  $params['trang_thai'] = $trang_thai;
  $count = execute_query("SELECT COUNT(*) FROM loai_tin_tuc WHERE ten_loai_tin_tuc = :ten_loai_tin_tuc", array('ten_loai_tin_tuc' => $ten_loai_tin_tuc))[0][0]; //mot dong va mot cot
  if($count > 0){
    alert('Tên loại tin tức đã tồn tại');
    location('quan_ly_loai_tin_tuc.php');
    return;
  }
  else{
    $sql = "INSERT loai_tin_tuc(ten_loai_tin_tuc, trang_thai) VALUES(:ten_loai_tin_tuc, :trang_thai)";
    execute_command($sql, $params);
  }
  location('quan_ly_loai_tin_tuc.php');
?>	