<div class="col-md-12 px-3 py-2 mb-3 rounded font-weight-bold" id="function_name">
  QUẢN LÝ LOẠI TIN TỨC 
</div>
<div class="col-md-12 box_title px-3 py-2 rounded-top font-weight-bold">
  THÔNG TIN LOẠI TIN TỨC
</div>
<div class="col-md-6 p-3">
  <div class="form-group">
    <label for="tu_khoa">Từ khóa</label>
    <input type="text" name="tu_khoa" class="form-control require" id="tu_khoa">
  </div>  
  <div class="form-group">
    <label for="trang_thai">
      Trạng thái
    </label>
    <select class="form-control" name="trang_thai" id="trang_thai">
      <option value="-1">Tất cả</option> 
      <option value="1">Kích hoạt</option> 
      <option value="0">Khóa</option>
    </select>
  </div>
</div>
<div class="col-md-6 p-2">
	
</div>
<div class="form-group">
  <button class="btn font-weight-bold">
    Tìm kiếm loại tin tức 
    <i class="bi bi-search"></i>
  </button>
  <button class="btn font-weight-bold"> 
    <a href="/WebBanHang/admin/quan_ly_loai_tin_tuc/them_loai_tin_tuc.php">
      Thêm loại tin tức 
      <i class="bi bi-plus-circle-fill"></i>
    </a>
  </button>
</div>