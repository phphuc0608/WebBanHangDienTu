<?php include'../module/kiem_tra_dang_nhap.php';?>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm loại sản phẩm</title>
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
    <form onsubmit="return check_form();" action="xu_ly_them_loai_san_pham.php" method="post" enctype="multipart/form-data">
      <div id="main" class="row no-gutters p-3">
        <?php
          include '../module/header.php';
          include '../module/form_quan_ly_loai_san_pham/form_them_loai_san_pham.php';
          include '../module/table/table_loai_san_pham.php';
        ?>                
      </div>
    </form>
	</div>	
  <?php
    include '../module/footer.php';
  ?>
</body>
</html>