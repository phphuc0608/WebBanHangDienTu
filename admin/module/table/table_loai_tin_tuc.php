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
        $loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc");
        foreach($loai_tin_tucs as $loai_tin_tuc){
          echo '
            <tr>
              <td class="text-center">'.$loai_tin_tuc['ma_loai_tin_tuc'].'</td>
              <td>'.$loai_tin_tuc['ten_loai_tin_tuc'].'</td>
              <td class="text-center">
                <input type="checkbox" onclick="return false" '.($loai_tin_tuc['trang_thai'] == 1 ? 'checked' : '').'>
              </td>
              <td class="text-center">
                <a href="/WebBanHang/admin/2_3_quan_ly_loai_tin_tuc/sua_loai_tin_tuc.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'"><i class="bi bi-pen-fill"></i></a> | 
                <a href="/WebBanHang/admin/2_3_quan_ly_loai_tin_tuc/xu_ly_xoa_loai_tin_tuc.php?id='.$loai_tin_tuc['ma_loai_tin_tuc'].'"><i class="bi bi-trash-fill"></i></a>
              </td>
            </tr>
          ';
        }
      ?>
    </tbody>
  </table>
</div>