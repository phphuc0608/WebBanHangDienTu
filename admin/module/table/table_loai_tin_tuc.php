<div class="col-md-12 overflow-auto">
  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th class="text-right" style="width: 75px;min-width: 75px"><i class="bi bi-key-fill"></i> Mã</th>
        <th style="min-width: 250px">Tên loại tin tức</th>
        <th class="text-center" style="width: 120px;min-width: 120px">Trạng thái</th>
        <th class="text-center" style="width: 120px;min-width: 120px">Hành động</th>
      </tr>
    </thead>
    <tbody>
      <?php
        $page_index = 1;
        $page_length = 3;
        if(isset($_GET['pid']))
          $page_index = $_GET['pid'];
        $sql= "SELECT * FROM loai_tin_tuc WHERE 1=1";
        $start_index = ($page_index - 1) * $page_length;
        $sql = $sql." LIMIT {$start_index}, {$page_length}";

        $loai_tin_tucs = execute_query($sql);
        foreach($loai_tin_tucs as $loai_tin_tuc){
          echo '
            <tr>
              <td class="text-center">'.$loai_tin_tuc['ma_loai_tin_tuc'].'</td>
              <td>'.$loai_tin_tuc['ten_loai_tin_tuc'].'</td>
              <td class="text-center">
                <input type="checkbox" onclick="return false" '.($loai_tin_tuc['trang_thai'] == 1 ? 'checked' : '').'>
              </td>
              <td class="text-center">
                <a href="/WebBanHang/admin/quan_ly_loai_tin_tuc/sua_loai_tin_tuc.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'"><i class="bi bi-pen-fill"></i></a> | 
                <a href="/WebBanHang/admin/quan_ly_loai_tin_tuc/xu_ly_xoa_loai_tin_tuc.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'"><i class="bi bi-trash-fill"></i></a>
              </td>
            </tr>
          ';
        }
        $sql = "SELECT COUNT(*) AS dem FROM loai_tin_tuc";
        $row_number = execute_query($sql)[0]['dem'];
        $page_number = (int)($row_number / $page_length); //ép kiểu về int
        if($row_number % $page_length != 0){
          $page_number++;
        }
      ?>
    </tbody>
  </table>
</div>
<div class="col-md-12">
  <div class="pagination d-flex justify-content-center">
    <ul class="pagination">
      <?php
        for($i = 1; $i <= $page_number; $i++)
          echo    ' <li class="page-item">
                      <a href="/WebBanHang/admin/quan_ly_loai_tin_tuc/them_loai_tin_tuc.php?pid='.$i.'" class="page-link">'.$i.'</a>
                    </li>';
      ?>
    </ul>
  </div>
</div>