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
            <a class="nav-link p-0 pb-2" href="#">'.$loai_san_pham['ten_loai_san_pham'].'</a>
          </li>';
        ?>
      </ul>
    </div>
    <div class="p-3 m-3 menu_jr">
      <div class="col-md-12 p-0">
        <h6 class="title pb-2 font-weight-bold">NHÀ SẢN XUẤT</h6>
      </div>
      <ul class="nav flex-column mt-2">
        <?php
          $nha_san_xuats = execute_query("SELECT * FROM nha_san_xuat");
          foreach($nha_san_xuats as $nha_san_xuat)
            echo '<li class="nav-item mt-1">
            <a class="nav-link p-0 pb-2" href="#">'.$nha_san_xuat['ten_nha_san_xuat'].'</a>
          </li>';
        ?>
      </ul>
    </div>
</div>
  <!-- Main -->
  <div id="main" class="col-md-10">
        <div class="col-lg-12 p-3 my-3 main_item ">
          <h2 class="font-weight-bold mb-0">DANH SÁCH SẢN PHẨM</h2>
        </div>
        <div class="row">
        <?php
          $page_index = 1;
          $page_length = 9;
          if(isset($_GET['pid']))
            $page_index = $_GET['pid'];
          $sql= "SELECT * FROM san_pham WHERE 1=1";
          $start_index = ($page_index - 1) * $page_length;
          $sql = $sql." LIMIT {$start_index}, {$page_length}";

          $san_phams = execute_query($sql);
          foreach($san_phams as $san_pham){
            if($san_pham['trang_thai']!=0){
              echo '
            <div class="col-md-3">
            <div class="product_container text-center overflow-hidden p-3 my-3">
              <img src="/WebBanHang/data/san_pham/'.$san_pham['hinh_anh'].'" style="width: 200px;" class="product_img">
              <div class="font-weight-bold h6 mt-3">'.$san_pham['ten_san_pham'].'</div>
              <div class="text-danger">'.$san_pham['gia'].'VNĐ</div>
              <div class="text-info">'.$san_pham['luot_xem'].' lượt xem</div>
            </div>
          </div> ';
            }
          }
          $sql = "SELECT COUNT(*) AS dem FROM san_pham";
          $row_number = execute_query($sql)[0]['dem'];
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
                            <a href="/WebBanHang/home/gioi_thieu_tat_ca_san_pham.php?pid='.$i.'" class="page-link">'.$i.'</a>
                          </li>';
            ?>
            </ul>
          </div>
        </div>     
    </div>
  </div>
</div>