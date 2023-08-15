<div class="container-fluid row">
  <!-- Menu2 -->
  <div id="menu2" class="col-md-2 text-left">
    <div class="p-3 m-3 menu_jr">
      <div class="col-md-12 p-0">
        <h6 class="title pb-2 font-weight-bold">LOẠI SẢN PHẨM</h6>
      </div>
      <ul class="nav flex-column mt-2">
        <?php
          $loai_san_phams = execute_query("SELECT * FROM loai_san_pham");
          foreach($loai_san_phams as $loai_san_pham)
            echo '<li class="nav-item mt-1">
            <a class="nav-link p-0 pb-2" href="gioi_thieu_san_pham_theo_loai.php?id='.$loai_san_pham['ma_loai_san_pham'].'">'.$loai_san_pham['ten_loai_san_pham'].'</a>
          </li>';
        ?>
      </ul>
    </div>
	</div>
  <?php
    //Lay ra ma loai tin tuc tu link
    $ma_loai_san_pham =(int)($_GET['id']);
    $params = array('ma_loai_san_pham'=>$ma_loai_san_pham);
    $sql = "SELECT * FROM loai_san_pham WHERE ma_loai_san_pham = :ma_loai_san_pham";
    $loai_san_phams = execute_query($sql, $params);
    if(count($loai_san_phams) == 0){
      alert("Loại sản phẩm không tồn tại");
      location('/'.$root.'/home/trang_chu.php');
      return;
    }
    else{
      $loai_san_pham = $loai_san_phams[0];
    }
  ?>
  <!-- Main -->
  <div id="main" class="col-md-10">
    <div class="col-lg-12 p-3 my-3 main_item ">
      <h2 class="font-weight-bold mb-0">DANH SÁCH SẢN PHẨM | <?php echo $loai_san_pham['ten_loai_san_pham']?></h2>
    </div>
    <div class="row">
    <?php
      $page_index = 1;
      $page_length = 9;
      if(isset($_GET['pid']))
        $page_index = $_GET['pid'];
      $sql= "SELECT * FROM san_pham WHERE ma_loai_san_pham = :ma_loai_san_pham";
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
      $sql = "SELECT COUNT(*) AS dem FROM san_pham WHERE ma_loai_san_pham = :ma_loai_san_pham";
      $row_number = execute_query($sql, $params)[0]['dem'];
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
                        <a href="/'.$root.'/home/gioi_thieu_san_pham_theo_loai.php?id='.$ma_loai_san_pham.'&pid='.$i.'" class="page-link">'.$i.'</a>
                      </li>';
        ?>
        </ul>
      </div>
    </div>     
  </div>
  </div>
</div>