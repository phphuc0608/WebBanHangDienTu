<div class="col-md-12 px-3 py-2 mb-3 rounded font-weight-bold" id="function_name">
    QUẢN LÝ TIN TỨC / QUẢN LÝ
</div>
<div class="col-md-12 box_title px-3 py-2 rounded-top font-weight-bold">
    THÔNG TIN TIN TỨC
</div>
<div class="col-md-7 p-3">
    <div class="form-group">
        <label for="tu_khoa">Từ khóa</label>
        <input type="text" class="form-control require" id="tu_khoa">
    </div>
    <div class="form-group">
        <label for="ngay_dang">Ngày đăng</label>
        <input type="date" class="form-control require" id="ngay_dang">
    </div>
    <div class="form-group">
        <label for="ma_loai_tin_tuc">Loại tin tức</label>
        <select class="form-control">
            <?php
                $loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc WHERE trang_thai=1");
                foreach($loai_tin_tucs as $loai_tin_tuc){
                    echo "<option>{$loai_tin_tuc['ten_loai_tin_tuc']}</option>";
                }
            ?>
        </select>
    </div>
    <div class="form-group form-check">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input" name="trang_thai">
            Kích hoạt
        </label>
    </div>
</div>
<div class="col-md-12">
    <div class="form-group">
        <div class="form-inline">
            <button class="btn font-weight-bold">Tìm kiếm tin tức <i class="bi bi-search"></i></button>
            <button class="btn font-weight-bold ml-5"><a href="/WebBanHang/admin/3_2_quan_ly_tin_tuc/them_tin_tuc.php">Thêm tin tức <i class="bi bi-plus-circle-fill"></i></a></button>
        </div>
    </div>
</div>