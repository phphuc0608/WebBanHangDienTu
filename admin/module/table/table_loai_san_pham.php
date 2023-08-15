<div class="col-md-12 overflow-auto">
  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th class="text-right" style="width: 75px;min-width: 75px"><i class="bi bi-key-fill"></i> Mã</th>
        <th style="min-width: 250px">Tên loại sản phẩm</th>
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
        $sql = "SELECT * FROM loai_san_pham WHERE 1=1";
        $start_index = ($page_index - 1) * $page_length;
        //LIMIT hàng bắt đầu, độ dài muốn lấy
        $sql = $sql." LIMIT {$start_index}, {$page_length}";
        $loai_san_phams = execute_query($sql);
        foreach($loai_san_phams as $loai_san_pham)
          echo '<tr>
            <td class="text-center">'.$loai_san_pham['ma_loai_san_pham'].'</td>    
            <td>'.$loai_san_pham['ten_loai_san_pham'].'</td>    
            <td class="text-center"><input type="checkbox" '. ($loai_san_pham['trang_thai'] == 1 ? 'checked' : '') .'></td>    
            <td class="text-center">
              <a href="sua_loai_san_pham.php?id='. $loai_san_pham['ma_loai_san_pham'] .'"> <i class="bi bi-pen-fill"></i></a> | 
              <a href="xu_ly_xoa_loai_san_pham.php?id='. $loai_san_pham['ma_loai_san_pham'] .'"><i class="bi bi-trash-fill"></i></a>
            </td>
          </tr>';
        $sql = "SELECT COUNT(*) AS dem FROM loai_san_pham";
        $row_number = execute_query($sql)[0]['dem'];
        $page_number = (int)($row_number/$page_length);
        if($row_number % $page_length != 0)
          $page_number++;
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
                      <a href="/'.$root.'/admin/quan_ly_loai_san_pham/them_loai_san_pham.php?pid='.$i.'" class="page-link">'.$i.'</a>
                    </li>';
      ?>
    </ul>
  </div>
</div>