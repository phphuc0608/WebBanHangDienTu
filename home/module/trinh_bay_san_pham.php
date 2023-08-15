<div class="container-md">
  <?php
      include_once 'module/config.php';
      include_once '../admin/module/javascript.php';
      $ma_san_pham = (int)$_GET['id'];
      $san_phams=execute_query("SELECT * FROM v_san_pham WHERE ma_san_pham=:ma_san_pham", array('ma_san_pham'=>$ma_san_pham));
      if(count($san_phams)==0){
          alert("Sản phẩm không tồn tại");
          location('/'.$root.'/home/trang_chu.php');
      }
      else
          $san_pham=$san_phams[0];
      execute_command("UPDATE san_pham SET luot_xem = luot_xem + 1 WHERE ma_san_pham = :ma_san_pham", array('ma_san_pham'=>$ma_san_pham));
  ?>
  
  <div class="row">
    <div class="col-lg-12 p-3 my-3 main_item ">
      <h2 class="font-weight-bold mb-0 news_title"><?php echo $san_pham['ten_san_pham'] ?></h2>
    </div>
    <!-- <div id="title" class="col-lg-12 h6 p-3 mt-3 font-weight-bold text-uppercase"><?php //echo $san_pham['ten_san_pham'] ?></div> -->
    <div class="col-md-12 d-flex justify-content-center align-content-center pb-4">
      <img src="/<?php echo $root; ?>/data/san_pham/<?php echo $san_pham['hinh_anh']?>" class="w-25 img_news">
      <div class="news_info ml-3 pt-3">
        <ul id="price" class="ml-4 mt-3">
            <li>Giá: <?php echo $san_pham['gia_khuyen_mai'] ?>₫</li>
            <li>Lượt xem: <?php echo $san_pham['luot_xem'] ?></li>
            <li>Loại sản phẩm: <?php echo $san_pham['ten_loai_san_pham'] ?></li>
            <li>Nhà sản xuất: <?php echo $san_pham['ten_nha_san_xuat'] ?></li>
        </ul>
      </div>  
    </div>
    <div class="col-md-12 d-flex align-content-center pb-4" style="font-size: 15pt;">
      <div class="content">
        <h2 class="p-2 font-weight-bold">Mô tả sản phẩm</h1>
        <p class="border rounded p-3" style="font-size: 12pt;"><?php echo $san_pham['mo_ta'] ?></p>
      </div>
    </div>
  </div>
  <div class="col-lg-12 p-3 my-3 main_item ">
    <h2 class="font-weight-bold mb-0">Sản phẩm cùng loại</h2>
  </div>
  <div class="row">
    <?php
      $ma_loai_san_pham = (int)($_GET['tid']);
      $params = array();
      $params['ma_loai_san_pham'] = $ma_loai_san_pham;
      $sql= "SELECT * FROM san_pham WHERE ma_loai_san_pham = :ma_loai_san_pham";
      $san_phams = execute_query($sql, $params);
      foreach($san_phams as $san_pham){
        if($san_pham['trang_thai']!=0 && $san_pham['ma_san_pham'] != $ma_san_pham)
        echo '
        <div class="col-md-3">
        <div class="product_container text-center overflow-hidden p-3 my-3">
          <img src="/"'.$root.'"/data/san_pham/'.$san_pham['hinh_anh'].'" style="width: 200px;" class="product_img">
          <div class="font-weight-bold h6 mt-3">
            <a href="/"'.$root.'"/home/trinh_bay_san_pham.php?id='.$san_pham['ma_san_pham'].'&tid='.$san_pham['ma_loai_san_pham'].'">
              '.$san_pham['ten_san_pham'].'
            </a>
          </div>
          <div class="text-danger">'.format_vn_number($san_pham['gia']).'VNĐ</div>
          <div class="text-info">'.$san_pham['luot_xem'].' lượt xem</div>
        </div>
      </div> 
        ';
      }
    ?>
  </div>
</div>