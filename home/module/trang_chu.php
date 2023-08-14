<!-- Main -->
  <div class="container-md" id="main">
    <!-- Loai san pham -->
    <div class="row main_item mt-3">
      <div class="col-lg-12 p-4">
        <h2 class="font-weight-bold">LOẠI SẢN PHẨM</h2>
      </div>
      <?php
        $loai_san_phams = execute_query("SELECT * FROM loai_san_pham");
        foreach($loai_san_phams as $loai_san_pham)
          echo '
          <div class="col-md-3">
          <div class="product_container text-center overflow-hidden p-3 my-3">
            <img src="/WebBanHang/data/loai_san_pham/'.$loai_san_pham['hinh_anh'].'" style="width: 200px" class="product_img">
            <div class="font-weight-bold h6 mt-3">'.$loai_san_pham['ten_loai_san_pham'].'</div>
          </div>
        </div>';
      ?>
    </div>
    <!-- Nha san xuat -->
    <div class="row my-4 main_item">
      <div class="col-lg-12 p-4">
        <h2 class="font-weight-bold">NHÀ SẢN XUẤT</h2>
      </div>
      <?php
        $nha_san_xuats = execute_query("SELECT * FROM nha_san_xuat");
        foreach($nha_san_xuats as $nha_san_xuat)
          echo '
          <div class="col-md-3">
          <div class="product_container text-center overflow-hidden p-3 my-3">
            <img src="/WebBanHang/data/nsx/'.$nha_san_xuat['hinh_anh'].'" style="width: 200px" class="product_img">
            <div class="font-weight-bold h6 mt-3">'.$nha_san_xuat['ten_nha_san_xuat'].'</div>
          </div>
        </div>';
      ?>
    </div>
    <!-- San pham moi -->
    <div class="row my-4 main_item">
      <div class="col-lg-12 p-4">
        <h2 class="font-weight-bold">SẢN PHẨM MỚI</h2>
      </div>
      <?php
        $san_phams = execute_query("SELECT * FROM san_pham ORDER BY ma_san_pham DESC LIMIT 0,4");
        foreach($san_phams as $san_pham)
          echo '
          <div class="col-md-3">
          <div class="product_container text-center overflow-hidden p-3 my-3">
            <img src="/WebBanHang/data/san_pham/'.$san_pham['hinh_anh'].'" style="width: 200px;" class="product_img">
            <div class="font-weight-bold h6 mt-3">'.$san_pham['ten_san_pham'].'</div>
            <div class="text-danger">'.$san_pham['gia'].'VNĐ</div>
          </div>
        </div>';
      ?>
    </div>
    <!-- San pham xem nhieu -->
    <div class="row my-4 main_item">
      <div class="col-lg-12 p-4">
        <h2 class="font-weight-bold">SẢN PHẨM XEM NHIỀU</h2>
      </div>
      <?php
        $san_phams = execute_query("SELECT * FROM san_pham ORDER BY ma_san_pham ASC LIMIT 0,4");
        foreach ($san_phams as $san_pham) {
          if($san_pham['trang_thai']!=0){
            echo'
            <div class="col-md-3">
              <div class="product_container text-center overflow-hidden p-3 my-3">
              <img src="/WebBanHang/data/san_pham/'.$san_pham['hinh_anh'].'" style="width: 200px;" class="product_img">
              <div class="font-weight-bold h6 mt-3">'.$san_pham['ten_san_pham'].'</div>
              <div class="text-danger">'.$san_pham['gia'].'VNĐ</div>
                <div class="text-info">'.$san_pham['luot_xem'].' lượt xem</div>
              </div>
            </div>
            ';
          }
        }
      ?>
    </div>
  </div>  