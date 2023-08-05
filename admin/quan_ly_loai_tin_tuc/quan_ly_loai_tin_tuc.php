<?php include'../module/kiem_tra_dang_nhap.php';?>
<!DOCTYPE html>
<html>
<head>
	<title>Quản lý loại tin tức</title>
	<?php
		include '../module/database.php';
		include '../module/head.php';
	?>
</head>
<body>
	<div class="container-fluid px-0">
		<?php
		include '../module/sidebar.php';?>
		<form action="xu_ly_tim_kiem_loai_tin_tuc.php" method="post" enctype="multipart/form-data">
			<div id="main" class="row no-gutters p-3">
				<?php 
					include '../module/header.php'; 
					include '../module/form_quan_ly_loai_tin_tuc/form_quan_ly_loai_tin_tuc.php'; 
					include '../module/table/table_loai_tin_tuc.php';  
					include '../module/footer.php';
				?>
			</div>
		</form>
	</div>
</body>
</html>