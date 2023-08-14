<div class="container-fluid row">
  <!-- Menu2 -->
  <div id="menu2" class="col-md-2">
    <div class="p-3 m-3 menu_jr">
      <div class="col-md-12 p-0">
        <h5 class="title font-weight-bold pb-2">LOẠI TIN TỨC</h5>
      </div>
      <ul class="nav flex-column mt-2">
        <?php
          $loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc WHERE trang_thai=1");
          foreach($loai_tin_tucs as $loai_tin_tuc){
            echo '
            <li class="nav-item mt-1">
              <a href="/WebBanHang/home/gioi_thieu_tin_tuc_theo_loai.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'" class="nav-link pb-2 p-0">'.$loai_tin_tuc['ten_loai_tin_tuc'].'</a>
            </li>
          ';
          }
        ?>
      </ul>
    </div>
  </div>
    <!-- Main -->
    
</div>
<?php
	$ma_loai_tin_tuc = (int)($_GET['id']);
	$params = array('ma_loai_tin_tuc'=>$ma_loai_tin_tuc);
	$loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc", $params);
	if(count($loai_tin_tucs) == 0) {
		// alert('Tin tức không tồn tại !');
		// location('/webbanhang/home/trang_chu.php');
		// return;
	}
	else
		$loai_tin_tuc = $loai_tin_tucs[0];
?>
<div class="container-fluid p-3 m-3" id="main_menu">
<!-- Menu2 -->
<div id="menu2" class="col-md-2">
    <div class="p-3 m-3 menu_jr">
      <div class="col-md-12 p-0">
        <h5 class="title font-weight-bold pb-2">LOẠI TIN TỨC</h5>
      </div>
      <ul class="nav flex-column mt-2">
        <?php
          $loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc WHERE trang_thai=1");
          foreach($loai_tin_tucs as $loai_tin_tuc){
            echo '
            <li class="nav-item mt-1">
              <a href="/WebBanHang/home/gioi_thieu_tin_tuc_theo_loai.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'" class="nav-link pb-2 p-0">'.$loai_tin_tuc['ten_loai_tin_tuc'].'</a>
            </li>
          ';
          }
        ?>
      </ul>
    </div>
  </div>
		<div class="col-md-10 p-3 my-3" id="main_page">
			<div class="col-md-12" style="background-color: #eee; border-radius: 10px">
				<?php
					$tin_tucs = execute_query("SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc ORDER BY ma_tin_tuc DESC LIMIT 0,1", $params);
					foreach($tin_tucs as $tin_tuc)
						echo '<h2 class="col-md-12 p-3 m-3" style="font-weight: bold;">'.$tin_tuc['tieu_de'].'</h2>';
				?>
				<div class="col-md-12 row">
					<div class="col-md-3 py-3 my-3">
						<?php
							$tin_tucs = execute_query("SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc ORDER BY ma_tin_tuc DESC LIMIT 0,1", $params);
							foreach($tin_tucs as $tin_tuc)
								echo '<img src="/WebBanHang/data/tin_tuc/'.$tin_tuc['hinh_anh'].'" class="img-fluid">';
						?>
					</div>
					<div class="col-md-9 py-3 my-3">
						<?php
							$tin_tucs = execute_query("SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc ORDER BY ma_tin_tuc DESC LIMIT 0,1", $params);
							foreach($tin_tucs as $tin_tuc)
								echo '<p style="font-size: 16pt; font-style: italic;">Ngày đăng: '.$tin_tuc['ngay_dang'].'</p><br><p style="font-size: 16pt; font-style: italic;">'.$tin_tuc['tom_tat'].'</p><br>';
						?>
					</div>
					<div class="col-md-12 p-3 m-3">
						<?php
							$tin_tucs = execute_query("SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc ORDER BY ma_tin_tuc DESC LIMIT 0,1", $params);
							foreach($tin_tucs as $tin_tuc)
								echo '<p style="font-size: 18pt">'.$tin_tuc['noi_dung'].'</p>';
						?>
					</div>
				</div>
			</div>
			<br>
			<div class="col-md-12 py-3 my-3" id="tintuc_cungchuyenmuc">
				<h2 class="col-md-12 p-3 m-3" style="font-weight: bold; background-color: #eee; border-radius: 10px">TIN CÙNG CHUYÊN MỤC</h2>
					<?php
						$tin_tucs = execute_query("SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc=:ma_loai_tin_tuc AND trang_thai=1 ORDER BY ma_tin_tuc DESC LIMIT 1,5", $params);
						foreach($tin_tucs as $tin_tuc)
							echo '<br><div class="col-md-12 row"><div class="col-md-3">
							<a href="/webbanhang/home/san_pham.php?id='.$tin_tuc['ma_tin_tuc'].'"><img src="/WebBanHang/data/tin_tuc/'.$tin_tuc['hinh_anh'].'" class="img-fluid"></a>
								</div>
								<div class="col-md-9">
									<h2 style="font-weight: bold;">'.$tin_tuc['tieu_de'].'</h2>
									<p style="font-style: italic;">Ngày đăng: '.$tin_tuc['ngay_dang'].'</p>
									<p style="font-size: 18pt;">'.$tin_tuc['tom_tat'].'</p>
								</div></div><br>';
						
					?>
			</div>
		</div>	
	</div>
</div>