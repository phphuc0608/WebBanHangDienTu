<div class="col-md-12 overflow-auto">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th class="text-center" style="width: 75px;min-width: 75px"><i class="bi bi-key-fill"></i> Mã</th>
                <th style="min-width: 250px">Tiêu đề tin tức</th>
                <th class="text-center" style="width: 200px;min-width: 120px">Loại tin tức</th>
                <th class="text-center" style="width: 120px;min-width: 120px">Ngày đăng</th>
                <th class="text-center" style="width: 120px;min-width: 120px">Trạng thái</th>
                <th class="text-center" style="width: 120px;min-width: 120px">Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $tin_tucs = execute_query("SELECT * FROM tin_tuc");
                $loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc WHERE trang_thai=1");
                foreach($tin_tucs as $tin_tuc){
                    foreach($loai_tin_tucs as $loai_tin_tuc){
                        if ($loai_tin_tuc[0]==$tin_tuc[8]){
                            $loai_tin = $loai_tin_tuc[1];
                        }
                    }
                    echo '<tr>
                        <td class="text-center">'. $tin_tuc[0].'</td>
                        <td>'. $tin_tuc[1].'</td>
                        <td class="text-center">'.$loai_tin.'</td>
                        <td class="text-center">'. format_date_vn($tin_tuc[5]).'</td>
                        <td class="text-center">
                            <input type="checkbox" onclick="return false" '.($tin_tuc[7] == 1 ? 'checked' : '').'>
                        </td>
                        <td class="text-center">
								<a href="/WebBanHang/admin/quan_ly_tin_tuc/sua_tin_tuc.php?id='.$tin_tuc[0].'"><i class="bi bi-pen-fill"></i></a> | 
								<a href="/WebBanHang/admin/quan_ly_tin_tuc/xu_ly_xoa_tin_tuc.php?id='.$tin_tuc[0].'"><i class="bi bi-trash-fill"></i></a>
							</td>
                    </tr>';
                }
            ?>
        </tbody>
    </table>
</div>