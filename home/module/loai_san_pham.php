<div class="container-fluid p-3 m-3" id="main_menu">
	<div class="col-md-12 row">
		<div class="col-md-2" id="sub_menu" style="width: 250px;">
			<div class="col-md-12 py-3 my-3 row" style="height: auto; box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.2); border: solid 1px #fff; border-radius: 10px;">
				<h5 class="col-md-12 text-left float-left" style="color: #78221f">LOẠI SẢN PHẨM</h5>
				<ul class="loaisanpham_list" style="float: left;">
					<?php
						$loai_san_phams = execute_query("SELECT * FROM loai_san_pham");
						foreach($loai_san_phams as $loai_san_pham)
							echo '<li style="font-size: 18pt; list-style-type: none;"><a href="/webbanhang/home/loai_san_pham.php?id='.$loai_san_pham['ma_loai_san_pham'].'" class="text-danger">'.$loai_san_pham['ten_loai_san_pham'].'</a></li>';
					?>
				</ul>
			</div>
		</div>
		<?php
			$ma_loai_san_pham = (int)($_GET['id']);
			$params = array('ma_loai_san_pham'=>$ma_loai_san_pham);
			$loai_san_phams = execute_query("SELECT * FROM loai_san_pham WHERE ma_loai_san_pham=:ma_loai_san_pham", $params);
			if(count($loai_san_phams) == 0) {
				alert('Loại sản phẩm không tồn tại !');
				location('/webbanhang/home/trang_chu.php');
				return;
			}
			else
				$loai_san_pham = $loai_san_phams[0];
		?>
		<div class="container-md col-md-8" id="main_page">
			<div class="col-md-12 row bg-light">
				<h2 style="font-weight: bold;"><?php echo $loai_san_pham['ten_loai_san_pham'] ?></h2>
			</div>
			<br>
			<div class="col-md-12 row">
				<?php
					$san_phams = execute_query("SELECT * FROM san_pham WHERE ma_loai_san_pham=:ma_loai_san_pham", $params);
					foreach($san_phams as $san_pham){
						echo '<div class="col-md-3 py-3 my-3 text-center">
							<div style="box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.2); border: solid 1px #fff; border-radius: 10px;">
								<a href="/webbanhang/home/san_pham.php?id='.$san_pham['ma_san_pham'].'"><img src="/webbanhang/data/san_pham/'.$san_pham['hinh_anh'].'" style="width: 90%;"></a>
								<h3 style="font-weight: bold;">'.$san_pham['ten_san_pham'].'</h3>
								<price>'.$san_pham['gia'].'</price><br>
								<views style="font-style: italic;">Lượt xem: '.$san_pham['luot_xem'].'</views>
							</div>
						</div>';
					}
				?>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>