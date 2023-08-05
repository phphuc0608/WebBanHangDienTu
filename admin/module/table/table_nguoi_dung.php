<div class="col-md-12 overflow-auto">
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th style="min-width: 325px">Tên tài khoản</th>
				<th style="min-width: 120px; width: 120px; text-align: center;">Trạng thái</th>
				<th style="min-width: 120px; width: 120px; text-align: center;">Hành động</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$nguoi_dungs = execute_query("SELECT * FROM nguoi_dung");
        foreach($nguoi_dungs as $nguoi_dung){
          echo '
            <tr>
              <td>'.$nguoi_dung['tai_khoan'].'</td>
              <td class="text-center">
                <input type="checkbox" onclick="return false" '.($nguoi_dung['trang_thai'] == 1 ? 'checked' : '').'>
              </td>
              <td class="text-center">
                <a href="/WebBanHang/admin/quan_ly_nguoi_dung/sua_nguoi_dung.php?id='.$nguoi_dung['tai_khoan'].'"><i class="bi bi-pen-fill"></i></a> | 
                <a href="/WebBanHang/admin/quan_ly_nguoi_dung/xu_ly_xoa_nguoi_dung.php?id='.$nguoi_dung['tai_khoan'].'"><i class="bi bi-trash-fill"></i></a>
              </td>
            </tr>
          ';
        }
			?>
		</tbody>
	</table>
</div>