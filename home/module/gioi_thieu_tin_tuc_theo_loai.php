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
              <a  href="gioi_thieu_tin_tuc_theo_loai.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'" class="nav-link pb-2 p-0">'.$loai_tin_tuc['ten_loai_tin_tuc'].'</a>
            </li>
          ';
          }
        ?>
      </ul>
    </div>
  </div>
  <?php
    //Lay ra ma loai tin tuc tu link
    $ma_loai_tin_tuc =(int)($_GET['id']);
    $params = array('ma_loai_tin_tuc'=>$ma_loai_tin_tuc);
    $sql = "SELECT * FROM loai_tin_tuc WHERE ma_loai_tin_tuc = :ma_loai_tin_tuc";
    $loai_tin_tucs = execute_query($sql, $params);
    if(count($loai_tin_tucs) == 0){
      alert("Loại tin tức không tồn tại");
      location('/WebBanHang/home/trang_chu.php');
      return;
    }
    else{
      $loai_tin_tuc = $loai_tin_tucs[0];
    }
  ?>
    <!-- Main -->
    <div id="main" class="col-md-10">
      <div class="col-lg-12 p-3 my-3 main_item ">
        <h2 class="font-weight-bold mb-0"><?php echo $loai_tin_tuc['ten_loai_tin_tuc'] ?></h2>
      </div>
      <?php
        $page_index = 1;
        $page_length = 4;
        if(isset($_GET['pid'])){
          $page_index = $_GET['pid'];
        }
        $sql= "SELECT * FROM tin_tuc WHERE ma_loai_tin_tuc = :ma_loai_tin_tuc";
        $start_index = ($page_index - 1) * $page_length;
        $sql = $sql." LIMIT {$start_index}, {$page_length}";
        $tin_tucs = execute_query($sql, $params);
        foreach($tin_tucs as $tin_tuc){
          if($tin_tuc['trang_thai']!=0)
          echo '
          <div class="col-md-12 d-flex align-content-center pb-4">
            <img src="/WebBanHang/data/tin_tuc/'.$tin_tuc['hinh_anh'].'" class="w-25 img_news">
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
        $sql = "SELECT COUNT(*) AS dem FROM tin_tuc WHERE ma_loai_tin_tuc =:ma_loai_tin_tuc";
        $row_number = execute_query($sql, $params)[0]['dem'];
        $page_number = (int)($row_number / $page_length); //ép kiểu về int
        if($row_number % $page_length != 0)
          $page_number++;
        
      ?>
      <div class="col-md-12">
				<div class="pagination d-flex justify-content-center">
					<ul class="pagination">
          <?php
              for($i = 1; $i <= $page_number; $i++)
                echo  ' <li class="page-item page_item">
                          <a href="/WebBanHang/home/gioi_thieu_tin_tuc_theo_loai.php?id='.$ma_loai_tin_tuc.'&pid='.$i.'" class="page-link">'.$i.'</a>
                      </li>';
            ?>
					</ul>
				</div>
			</div>  
    </div>
  </div>