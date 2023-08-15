<div class="col-md-12 overflow-auto">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th class="text-center" style="width: 75px;min-width: 75px"><i class="bi bi-key-fill"></i> Mã</th>
                <th style="min-width: 250px">Tên nhà sản xuất</th>
                <th class="text-center" style="width: 120px;min-width: 120px">Trạng thái</th>
                <th class="text-center" style="width: 120px;min-width: 120px">Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $nha_san_xuats = execute_query("SELECT * FROM nha_san_xuat");
                foreach($nha_san_xuats as $nha_san_xuat)
                echo '<tr>
                        <td class="text-center">'. $nha_san_xuat[0].'</td>
                        <td>'. $nha_san_xuat[1].'</td>
                        <td class="text-center">
                            <input type="checkbox" onclick="return false" '.($nha_san_xuat[3] == 1 ? 'checked' : '').'>
                        </td>
                        <td class="text-center">
								<a href="/'.$root.'/admin/quan_ly_nsx/sua_nsx.php?id='.$nha_san_xuat[0].'"><i class="bi bi-pen-fill"></i></a> | 
								<a href="/'.$root.'/admin/quan_ly_nsx/xu_ly_xoa_nsx.php?id='.$nha_san_xuat[0].'"><i class="bi bi-trash-fill"></i></a>
							</td>
                        </tr>';
                ?>
        </tbody>
    </table>
</div>