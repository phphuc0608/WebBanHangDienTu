<?php include'../module/kiem_tra_dang_nhap.php';?>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm thông tin loại tin tức</title>
	<?php 
	include '../module/database.php';
	include '../module/head.php'; ?>
</head>
<body>
  <div class="container-fluid px-0">
    <?php include'../module/sidebar.php' ?>
    <form onsubmit="return check_form();" action="/WebBanHang/admin/quan_ly_loai_tin_tuc/xu_ly_them_loai_tin_tuc.php" method="post" id="main" class="row no-gutters p-3">
			<?php 
				include '../module/header.php';
			 	include '../module/form_quan_ly_loai_tin_tuc/form_them_loai_tin_tuc.php';
			 	include '../module/table/table_loai_tin_tuc.php'; 
			 	include '../module/page_number.php'; 
			?>
		</form>
  </div>
  <?php include '../module/footer.php'; ?>
</body>
</html>