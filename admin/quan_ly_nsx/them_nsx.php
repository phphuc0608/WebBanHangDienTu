<!DOCTYPE html>
<html>
<head>
	<title>Thêm nhà sản xuất</title>
	<?php
		include '../module/database.php';
		include '../module/head.php';
	?>
</head>
<body>
	<div class="container-fluid px-0">
		<?php
		include '../module/sidebar.php';?>
		<form onsubmit="return check_form();" action="xu_ly_them_nsx.php" method="post" enctype="multipart/form-data">
			<div id="main" class="row no-gutters p-3">
				<?php 
					include '../module/header.php'; 
					include '../module/form_quan_ly_nsx/form_them_nsx.php'; 
					include '../module/table/table_nsx.php';  
          			include '../module/page_number.php';
					include '../module/footer.php';
				?>
			</div>
		</form>
	</div>
</body>
</html>