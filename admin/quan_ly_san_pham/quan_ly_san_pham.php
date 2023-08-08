<?php include'../module/kiem_tra_dang_nhap.php';?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quản lý thông tin sản phẩm</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<form action="xu_ly_tim_kiem_san_pham.php" method="post" id="main" class="row no-gutters p-3">
			<?php
        include '../module/header.php';
        include '../module/form_quan_ly_san_pham/form_quan_ly_san_pham.php';
        include '../module/table/table_san_pham.php';
      ?>						
		</form>
	</div>
	<?php
		include '../module/footer.php';
	?>
</body>
</html>