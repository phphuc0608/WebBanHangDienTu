<?php
	include '../module/database.php';
	include '../module/javascript.php';
	$ma_nha_san_xuat = $_POST['ma_nha_san_xuat'];
    $ten_nha_san_xuat = $_POST['ten_nha_san_xuat'];
	$trang_thai = isset($_POST['trang_thai']);
	$filename = $_FILES['hinh_anh']['name'];
	if($file_name == ''){    
		$sql = "UPDATE nha_san_xuat SET ten_nha_san_xuat =:ten_nha_san_xuat, trang_thai = :trang_thai WHERE ma_nha_san_xuat=:ma_nha_san_xuat";
		$params = array();
		$params['ma_nha_san_xuat'] = $ma_nha_san_xuat;
		$params['ten_nha_san_xuat'] = $ten_nha_san_xuat;
		$params['trang_thai'] =  $trang_thai;
		execute_command($sql,$params);
	}
	else{
		$hinh_anh = execute_query("SELECT hinh_anh FROM nha_san_xuat WHERE ma_nha_san_xuat=".$ma_nha_san_xuat);
		unlink('../data/nsx/'.$hinh_anh[0][0]);
		$parts = explode('.', $filename);
		$file_type = $parts[count($parts) - 1];
		$date = new DateTimeImmutable();
		$filename = md5($filename.$date->getTimestamp()).'.'.$file_type;
		move_uploaded_file($_FILES['hinh_anh']['tmp_name'], '../../data/nsx/'.$filename);
		$hinh_anh = $filename;
		$sql = "UPDATE nha_san_xuat SET ten_nha_san_xuat =:ten_nha_san_xuat, hinh_anh = :hinh_anh, trang_thai = :trang_thai WHERE ma_nha_san_xuat=:ma_nha_san_xuat";
		$params = array();
		$params['ma_nha_san_xuat'] = $ma_nha_san_xuat;
		$params['ten_nha_san_xuat'] = $ten_nha_san_xuat;
		$params['hinh_anh'] = $hinh_anh;
		$params['trang_thai'] =  $trang_thai;
		execute_command($sql,$params);
	}
	location ('them_nsx.php');
?>