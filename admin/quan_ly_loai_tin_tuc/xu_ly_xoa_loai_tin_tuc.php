<?php
  session_start();
  include '../module/kiem_tra_dang_nhap.php';
  include '../module/database.php';
  include_once '../module/javascript.php';
  $ma_loai_tin_tuc = $_GET['id'];
  $sql = "SELECT COUNT(*) AS dem FROM tin_tuc WHERE ma_loai_tin_tuc = :ma_loai_tin_tuc";
  $params = array('ma_loai_tin_tuc' => $ma_loai_tin_tuc);
  $data = execute_query($sql,$params);
  if($data[0]['dem'] > 0){
    alert('Còn '.$data[0]['dem'].' tin tức thuộc loại tin tức này.');
    location('quan_ly_loai_tin_tuc.php');
    return;
  }else{
    execute_command("DELETE FROM loai_tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc",$params);
  }
  location('quan_ly_loai_tin_tuc.php');
?>