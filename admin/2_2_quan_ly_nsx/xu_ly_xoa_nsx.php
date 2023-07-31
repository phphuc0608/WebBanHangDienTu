
<?php
  include '../module/database.php';
  include '../module/javascript.php';
  $ma_nha_san_xuat = $_GET['id'];
  $sql = "SELECT COUNT(*) AS dem FROM san_pham WHERE ma_nha_san_xuat=:ma_nha_san_xuat";
	$params = array('ma_nha_san_xuat'=> $ma_nha_san_xuat);
	$data = execute_query($sql,$params);
	if ($data[0]['dem'] > 0) {
		alert('Còn '.$data[0]['dem'].' sản phẩm thuộc nhà sản xuất này');
		location('them_nsx.php');
		return;
	}
  $sql = "SELECT hinh_anh FROM nha_san_xuat WHERE ma_nha_san_xuat=:ma_nha_san_xuat";
  $hinh_anh = execute_query($sql,$params);
  if(count($hinh_anh) > 0){
    execute_command("DELETE FROM nha_san_xuat WHERE ma_nha_san_xuat = :ma_nha_san_xuat",$params);
    unlink('../../data/nsx/'.$hinh_anh[0][0]);
  }
  location ('them_nsx.php');
?>