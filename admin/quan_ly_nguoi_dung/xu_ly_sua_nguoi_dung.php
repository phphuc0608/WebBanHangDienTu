<?php
	include'../module/kiem_tra_dang_nhap.php';
	include '../module/database.php';
	// include_once '../module/javascript.php';
	$tai_khoan = $_POST['ten_tai_khoan'];
	$mat_khau = md5($_POST['mat_khau']);
	$trang_thai = isset($_POST['trang_thai']);
	$xac_nhan_mat_khau = md5($_POST['xac_nhan_mat_khau']);
	if ($mat_khau != $xac_nhan_mat_khau) {
		alert('Xác nhận mật khẩu không trùng khớp !');
		location('them_nguoi_dung.php');
		return;
	}
	if ($_POST['mat_khau'] != '') {
		$params = array();
		$params['tai_khoan'] = $tai_khoan;
		$params['mat_khau'] =  $mat_khau;
		$params['trang_thai'] =  $trang_thai;
		$sql = "UPDATE nguoi_dung SET mat_khau=:mat_khau, trang_thai=:trang_thai WHERE tai_khoan=:tai_khoan";
		execute_command($sql, $params);
	location('them_nguoi_dung.php');
	}
	else {
		$params = array();
		$params['tai_khoan'] = $tai_khoan;
		$params['trang_thai'] =  $trang_thai;
		$sql = "UPDATE nguoi_dung SET trang_thai=:trang_thai WHERE tai_khoan=:tai_khoan";
		execute_command($sql, $params);
		location('them_nguoi_dung.php');
	}
?>