<?php
  session_start();
  include '../module/kiem_tra_dang_nhap.php';
  include '../module/database.php';
  include '../module/javascript.php';
  $ma_loai_tin_tuc = $_POST['ma_loai_tin_tuc'];
  $ten_loai_tin_tuc = $_POST['ten_loai_tin_tuc'];
  $trang_thai = isset($_POST['trang_thai']);
  $params = array();
  $params ['ma_loai_tin_tuc'] = $ma_loai_tin_tuc;
  $params['ten_loai_tin_tuc'] = $ten_loai_tin_tuc;
  $params['trang_thai'] = $trang_thai;
  $count = execute_query("SELECT COUNT(*) FROM loai_tin_tuc WHERE ten_loai_tin_tuc = :ten_loai_tin_tuc AND ma_loai_tin_tuc <> :ma_loai_tin_tuc", array('ten_loai_tin_tuc' => $ten_loai_tin_tuc, 'ma_loai_tin_tuc' => $ma_loai_tin_tuc))[0][0];
  if($count > 0){
    alert('Tên loại tin tức đã tồn tại');
    location("sua_loai_tin_tuc.php?id={$ma_loai_tin_tuc}");
    return;
  }
  else{
    $sql = "UPDATE loai_tin_tuc SET ten_loai_tin_tuc = :ten_loai_tin_tuc, trang_thai = :trang_thai WHERE ma_loai_tin_tuc = :ma_loai_tin_tuc";
    execute_command($sql, $params);
  }
  location("sua_loai_tin_tuc.php?id={$ma_loai_tin_tuc}");
?>