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
              <a href="gioi_thieu_tin_tuc_theo_loai.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'" class="nav-link pb-2 p-0">'.$loai_tin_tuc['ten_loai_tin_tuc'].'</a>
            </li>
          ';
          }
        ?>
      </ul>
    </div>
  </div>
  <?php
    $ma_tin_tuc =(int)($_GET['id']);
		$params = array();
		$params['ma_tin_tuc'] = $ma_tin_tuc;
    $sql = "SELECT * FROM v_tin_tuc WHERE ma_tin_tuc = :ma_tin_tuc";
    $tin_tucs = execute_query($sql, $params);
    if(count($tin_tucs) == 0){
      alert("Tin tức không tồn tại");
      location('/'.$root.'/home/trang_chu.php');
      return;
    }
    else{
      $tin_tuc = $tin_tucs[0];
    }
		execute_command("UPDATE tin_tuc SET luot_xem = luot_xem + 1 WHERE ma_tin_tuc = :ma_tin_tuc", $params);
  ?>
    <!-- Main -->
    <div id="main" class="col-md-10">
      <div class="col-lg-12 p-3 my-3 main_item ">
        <h2 class="font-weight-bold mb-0 news_title"><?php echo $tin_tuc['tieu_de'] ?></h2>
      </div>
      <?php
        foreach($tin_tucs as $tin_tuc){
          if($tin_tuc['trang_thai']!=0)
          echo '
          <div class="col-md-12 d-flex align-content-center pb-4">
            <img src="/'.$root.'/data/tin_tuc/'.$tin_tuc['hinh_anh'].'" class="w-25 img_news">
            <div class="news_info ml-3 pt-3">
              <div class="date_views font-italic mb-2">Ngày đăng: '.$tin_tuc['ngay_dang'].' - Lượt xem: '.$tin_tuc['luot_xem'].'</div>
              <div class="summary">
                <p>
                  '.$tin_tuc['tom_tat'].'
                </p>       
              </div>
            </div>
          </div>  
					<div class="col-md-12 d-flex align-content-center pb-4" style="font-size: 15pt;">
						<div class="content">
							'.$tin_tuc['noi_dung'].'
						</div>
					</div>
          ';
        }
      ?>
			<div class="col-lg-12 p-3 my-3 main_item ">
        <h2 class="font-weight-bold mb-0">Tin tức cùng loại</h2>
      </div>
			<?php
				$ma_loai_tin_tuc = (int)($_GET['tid']);
				$params = array();
				$params['ma_loai_tin_tuc'] = $ma_loai_tin_tuc;
        $sql= "SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc = :ma_loai_tin_tuc";
        $tin_tucs = execute_query($sql, $params);
        foreach($tin_tucs as $tin_tuc){
          if($tin_tuc['trang_thai']!=0 && $tin_tuc['ma_tin_tuc'] != $ma_tin_tuc)
          echo '
          <div class="col-md-12 d-flex align-content-center pb-4">
            <img src="/'.$root.'/data/tin_tuc/'.$tin_tuc['hinh_anh'].'" class="w-25 img_news">
            <div class="news_info ml-3">
              <h3 class="news_title font-weight-bold m-0 mb-2">'.$tin_tuc['tieu_de'].'</h3>
              <div class="date_views font-italic mb-2">Ngày đăng: '.$tin_tuc['ngay_dang'].' - Lượt xem: '.$tin_tuc['luot_xem'].'</div>
              <div class="summary">
                <p>
                  '.$tin_tuc['tom_tat'].'
                </p>       
              </div>
            </div>
          </div>  
          ';
        }
      ?>
    </div>
  </div>