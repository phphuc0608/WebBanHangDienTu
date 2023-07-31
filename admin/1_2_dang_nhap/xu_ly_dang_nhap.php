<?php
	include '../module/database.php';
	include '../module/javascript.php';
	$tai_khoan = $_POST['ten_tai_khoan'];
	$mat_khau = md5($_POST['mat_khau']);
	$kiem_tra_mat_khau = execute_query("SELECT tai_khoan FROM nguoi_dung WHERE mat_khau='{$mat_khau}'");
	$valid = password_verify($tai_khoan,$mat_khau);
	if ($valid) {
		alert('Đăng nhập thành công !');
		//header('location:/WebBanHang/admin/1_1_quan_ly_nguoi_dung/them_nguoi_dung.php');
	}
	else {
		alert('Thông tin tài khoản không chính xác !');
		//echo "<script>document.getElementById('error_message').innerHTML = 'Thông tin tài khoản không chính xác';</script>";
			header('location:/WebBanHang/admin/1_2_dang_nhap/chuc_nang_dang_nhap.php');
	}
?>