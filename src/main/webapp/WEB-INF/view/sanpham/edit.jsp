<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cập Nhật Sản Phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Cập Nhật Sản Phẩm</h1>
    <form action="${pageContext.request.contextPath}/sanpham/capnhat" method="post">
        <input type="hidden" name="id" value="${sanPham.id}"/>

        <div class="form-group">
            <label for="ma">Mã Sản Phẩm:</label>
            <input type="text" class="form-control" id="ma" name="ma" value="${sanPham.ma}" required>
        </div>
        <div class="form-group">
            <label for="ten">Tên Sản Phẩm:</label>
            <input type="text" class="form-control" id="ten" name="ten" value="${sanPham.ten}" required>
        </div>
        <div class="form-group">
            <label for="thongtin">Thông Tin:</label>
            <textarea class="form-control" id="thongtin" name="thongtin" required>${sanPham.thongtin}</textarea>
        </div>
        <div class="form-group">
            <label for="gia">Giá:</label>
            <input type="number" class="form-control" id="gia" name="gia" value="${sanPham.gia}" required>
        </div>
        <div class="form-group">
            <label for="trangthai">Trạng Thái:</label>
            <select class="form-control" id="trangthai" name="trangthai" required>
                <option value="1" <c:if test="${sanPham.trangthai == 1}">selected</c:if>>Kích hoạt</option>
                <option value="0" <c:if test="${sanPham.trangthai == 0}">selected</c:if>>Vô hiệu hóa</option>
            </select>
        </div>
        <div class="form-group">
            <label for="soluongdaban">Số Lượng Đã Bán:</label>
            <input type="number" class="form-control" id="soluongdaban" name="soluongdaban" value="${sanPham.soluongdaban}" required>
        </div>
        <div class="form-group">
            <label for="anh">URL Ảnh:</label>
            <input type="text" class="form-control" id="anh" name="anh" value="${sanPham.anh}">
        </div>
        <button type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>
        <a href="${pageContext.request.contextPath}/sanpham" class="btn btn-secondary">Quay Lại</a>
    </form>
</div>
</body>
</html>
