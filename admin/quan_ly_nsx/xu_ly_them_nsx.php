<?php
	include'../module/kiem_tra_dang_nhap.php';
	include '../module/database.php';
	$ten_nha_san_xuat = $_POST['ten_nha_san_xuat'];
	$trang_thai = isset($_POST['trang_thai']);
	$filename = $_FILES['hinh_anh']['name'];
	$parts = explode('.', $filename);
	$file_type = $parts[count($parts) - 1];
	$date = new DateTimeImmutable();
	$filename = md5($filename.$date->getTimestamp()).'.'.$file_type;
	move_uploaded_file($_FILES['hinh_anh']['tmp_name'], '../../data/nsx/'.$filename);
	$hinh_anh = $filename;
  $params = array();
	$params['ten_nha_san_xuat'] = $ten_nha_san_xuat;
	$params['hinh_anh'] =  $hinh_anh;
	$params['trang_thai'] =  $trang_thai;
	$count = execute_query("SELECT COUNT(*) FROM nha_san_xuat WHERE ten_nha_san_xuat = :ten_nha_san_xuat", array('ten_nha_san_xuat' => $ten_nha_san_xuat))[0][0];
	if($count > 0){
    alert('Tên nhà sản xuất này đã tồn tại');
		location ('them_nsx.php');
    return;
  }
  else{
		$sql = "INSERT nha_san_xuat(ten_nha_san_xuat,hinh_anh,trang_thai) VALUES(:ten_nha_san_xuat, :hinh_anh, :trang_thai)";
		execute_command($sql, $params);
  }
	location ('them_nsx.php');
?>