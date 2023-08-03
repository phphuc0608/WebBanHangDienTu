<?php
	include '../module/database.php';
	include '../module/javascript.php';
	$ma_tin_tuc = $_POST['ma_tin_tuc'];
	$tieu_de = $_POST['tieu_de'];
	$ma_loai_tin_tuc = $_POST['ma_loai_tin_tuc'];
	$tom_tat = $_POST['tom_tat'];
	$noi_dung = $_POST['noi_dung'];
	$trang_thai = isset($_POST['trang_thai']);
	$filename = $_FILES['hinh_anh']['name'];
	if($file_name == ''){
		$sql = "UPDATE tin_tuc 
		SET tieu_de =:tieu_de,
		tom_tat=:tom_tat,
		noi_dung=:noi_dung,
		trang_thai = :trang_thai,
		ma_loai_tin_tuc=:ma_loai_tin_tuc
		WHERE ma_tin_tuc=:ma_tin_tuc";
		$params = array();
		$params['tieu_de'] = $tieu_de;
		$params['tom_tat'] = $tom_tat;
		$params['noi_dung'] = $noi_dung;
		$params['trang_thai'] =  $trang_thai;
		$params['ma_loai_tin_tuc'] =  $ma_loai_tin_tuc;
		$params['ma_tin_tuc'] =  $ma_tin_tuc;
		execute_command($sql,$params);
	}
	else{
		$hinh_anh = execute_query("SELECT hinh_anh FROM tin_tuc WHERE ma_tin_tuc=".$ma_tin_tuc);
		unlink('../data/tin_tuc/'.$hinh_anh[0][0]);
		$parts = explode('.', $filename);
		$file_type = $parts[count($parts) - 1];
		$date = new DateTimeImmutable();
		$filename = md5($filename.$date->getTimestamp()).'.'.$file_type;
		move_uploaded_file($_FILES['hinh_anh']['tmp_name'], '../../data/tin_tuc/'.$filename);
		$hinh_anh = $filename;
		$sql = "UPDATE tin_tuc 
		SET tieu_de =:tieu_de,
		tom_tat=:tom_tat,
		noi_dung=:noi_dung,
		hinh_anh=:hinh_anh,
		trang_thai = :trang_thai,
		ma_loai_tin_tuc=:ma_loai_tin_tuc
		WHERE ma_tin_tuc=:ma_tin_tuc";
		$params = array();
		$params['tieu_de'] = $tieu_de;
		$params['tom_tat'] = $tom_tat;
		$params['noi_dung'] = $noi_dung;
		$params['hinh_anh'] = $hinh_anh;
		$params['trang_thai'] =  $trang_thai;
		$params['ma_loai_tin_tuc'] =  $ma_loai_tin_tuc;
		$params['ma_tin_tuc'] =  $ma_tin_tuc;
		execute_command($sql,$params);
	}
	location ('quan_ly_tin_tuc.php');
?>