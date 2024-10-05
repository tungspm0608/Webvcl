<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thêm Sản Phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Thêm Sản Phẩm Mới</h1>
    <form action="${pageContext.request.contextPath}/sanpham/them" method="post">
        <div class="form-group">
            <label for="ma">Mã Sản Phẩm:</label>
            <input type="text" class="form-control" id="ma" name="ma" required>
        </div>
        <div class="form-group">
            <label for="ten">Tên Sản Phẩm:</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>
        <div class="form-group">
            <label for="thongtin">Thông Tin:</label>
            <textarea class="form-control" id="thongtin" name="thongtin" required></textarea>
        </div>
        <div class="form-group">
            <label for="gia">Giá:</label>
            <input type="number" class="form-control" id="gia" name="gia" required>
        </div>
        <div class="form-group">
            <label for="trangthai">Trạng Thái:</label>
            <select class="form-control" id="trangthai" name="trangthai" required>
                <option value="1">Kích hoạt</option>
                <option value="0">Vô hiệu hóa</option>
            </select>
        </div>
        <div class="form-group">
            <label for="soluongdaban">Số Lượng Đã Bán:</label>
            <input type="number" class="form-control" id="soluongdaban" name="soluongdaban" value="0" required>
        </div>
        <div class="form-group">
            <label for="anh">URL Ảnh:</label>
            <input type="text" class="form-control" id="anh" name="anh">
        </div>
        <button type="submit" class="btn btn-primary">Thêm Sản Phẩm</button>
        <a href="${"đường đẫn hình ảnh"}/sanpham" class="btn btn-secondary">Quay Lại</a>
    </form>
</div>
</body>
</html>
