<div class="container-fluid row">
  <div id="menu2" class="col-md-2 text-left">
    <div class="p-3 m-3 menu_jr">
      <div class="col-md-12 p-0">
        <h6 class="title pb-2 font-weight-bold">NHÀ SẢN XUẤT</h6>
      </div>
      <ul class="nav flex-column mt-2">
        <?php
          $nha_san_xuats = execute_query("SELECT * FROM nha_san_xuat");
          foreach($nha_san_xuats as $nha_san_xuat)
            echo '<li class="nav-item mt-1">
            <a class="nav-link p-0 pb-2" href="gioi_thieu_san_pham_theo_nha_san_xuat.php?id='.$nha_san_xuat['ma_nha_san_xuat'].'">'.$nha_san_xuat['ten_nha_san_xuat'].'</a>
          </li>';
        ?>
      </ul>
    </div>
	</div>
  <?php
    //Lay ra ma loai tin tuc tu link
    $ma_nha_san_xuat =(int)($_GET['id']);
    $params = array('ma_nha_san_xuat'=>$ma_nha_san_xuat);
    $sql = "SELECT * FROM nha_san_xuat WHERE ma_nha_san_xuat = :ma_nha_san_xuat";
    $nha_san_xuats = execute_query($sql, $params);
    if(count($nha_san_xuats) == 0){
      alert("Nhà sản xuất không tồn tại");
      location('/'.$root.'/home/trang_chu.php');
      return;
    }
    else{
      $nha_san_xuat = $nha_san_xuats[0];
    }
  ?>
  <!-- Main -->
  <div id="main" class="col-md-10">
    <div class="col-lg-12 p-3 my-3 main_item ">
      <h2 class="font-weight-bold mb-0"><?php echo $nha_san_xuat['ten_nha_san_xuat']?></h2>
    </div>
    <div class="row">
    <?php
      $page_index = 1;
      $page_length = 9;
      if(isset($_GET['pid']))
        $page_index = $_GET['pid'];
      $sql= "SELECT * FROM san_pham WHERE ma_nha_san_xuat = :ma_nha_san_xuat";
      $start_index = ($page_index - 1) * $page_length;
      $sql = $sql." LIMIT {$start_index}, {$page_length}";

      $san_phams = execute_query($sql, $params);
      foreach($san_phams as $san_pham){
        if($san_pham['trang_thai']!=0){
          echo '
        <div class="col-md-3">
        <div class="product_container text-center overflow-hidden p-3 my-3">
          <img src="/'.$root.'/data/san_pham/'.$san_pham['hinh_anh'].'" style="width: 200px;" class="product_img">
          <div class="font-weight-bold h6 mt-3">
          <a href="/'.$root.'/home/trinh_bay_san_pham.php?id='.$san_pham['ma_san_pham'].'&tid='.$san_pham['ma_loai_san_pham'].'">
            '.$san_pham['ten_san_pham'].'
          </a>
        </div>
          <div class="text-danger">'.format_vn_number($san_pham['gia']).'VNĐ</div>
          <div class="text-info">'.$san_pham['luot_xem'].' lượt xem</div>
        </div>
      </div> ';
        }
      }
      $sql = "SELECT COUNT(*) AS dem FROM san_pham WHERE ma_nha_san_xuat = :ma_nha_san_xuat";
      $row_number = execute_query($sql,$params)[0]['dem'];
      $page_number = (int)($row_number / $page_length); //ép kiểu về int
      if($row_number % $page_length != 0){
        $page_number++;
      }
    ?>

    <div class="col-md-12">
      <div class="pagination d-flex justify-content-center">
        <ul class="pagination">
        <?php
          for($i = 1; $i <= $page_number; $i++)
            echo    ' <li class="page-item page_item">
                        <a href="/'.$root.'/home/gioi_thieu_san_pham_theo_nha_san_xuat.php?id='.$ma_nha_san_xuat.'&pid='.$i.'" class="page-link">'.$i.'</a>
                      </li>';
        ?>
        </ul>
      </div>
    </div>     
  </div>
  </div>
</div>