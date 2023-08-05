<?php include'../module/kiem_tra_dang_nhap.php';?>
<!DOCTYPE html>
<html>
<head>
	<title>Sửa người dùng</title>
	<?php
		include '../module/head.php';
		include '../module/database.php';	
	?>
</head>
<body>
	<div class="container-fluid px-0">
		<?php
			include '../module/sidebar.php';
		?>
		<form action="xu_ly_sua_nguoi_dung.php" onsubmit="return check_form();" method="post" id="main" class="row no-gutters p-3">
			<?php
				include '../module/header.php';
				include '../module/form_quan_ly_nguoi_dung/form_sua_nguoi_dung.php';
				include '../module/table/table_nguoi_dung.php';
			?>
		</form>
	</div>
	<?php 
		include '../module/footer.php';
	?>
</body>
</html>