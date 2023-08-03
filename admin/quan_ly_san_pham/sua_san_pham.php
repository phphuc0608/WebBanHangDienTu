<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Sửa sản phẩm</title>
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
    <form onsubmit="return check_form();" action="xu_ly_sua_san_pham.php" method="post" enctype="multipart/form-data">
      <div id="main" class="row no-gutters p-3">
        <?php
          include '../module/header.php';
          include '../module/form_quan_ly_san_pham/form_sua_san_pham.php';
          include '../module/footer.php';
        ?>					
      </div>
    </form>
	</div>
</body>
</html>