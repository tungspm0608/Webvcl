<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Sản Phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Danh Sách Sản Phẩm</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Thông Tin</th>
            <th>Giá</th>
            <th>Trạng Thái</th>
            <th>Số Lượng Bán</th>
            <th>Ảnh</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="sanPham" items="${sanPhamList}">
            <tr>
                <td>${sanPham.id}</td>
                <td>${sanPham.ma}</td>
                <td>${sanPham.ten}</td>
                <td>${sanPham.thongtin}</td>
                <td>${sanPham.gia}</td>
                <td>${sanPham.trangthai}</td>
                <td>${sanPham.soluongdaban}</td>
                <td>
                    <c:if test="${not empty sanPham.anh}">
                        <img src="${sanPham.anh}" alt="${sanPham.ten}" style="width: 100px; height: auto;">
                    </c:if>
                </td>
                <td>
                    <a href="update.jsp?id=${item.id}">Sửa</a>
                    <a href="delete?id=${item.id}">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
