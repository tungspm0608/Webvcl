<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Danh Sách Sản Phẩm</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<h1>Danh Sách Sản Phẩm</h1>

<a href="${pageContext.request.contextPath}/sanpham/add">Thêm Sản Phẩm</a>

<table border="1">
    <thead>
    <tr>
        <th>Mã</th>
        <th>Tên</th>
        <th>Thông Tin</th>
        <th>Giá</th>
        <th>Trạng Thái</th>
        <th>Số Lượng Đã Bán</th>
        <th>Ảnh</th>
        <th>Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="sanPham" items="${sanPhamList}">
        <tr>
            <td>${sanPham.ma}</td>
            <td>${sanPham.ten}</td>
            <td>${sanPham.thongtin}</td>
            <td>${sanPham.gia}</td>
            <td>${sanPham.trangthai}</td>
            <td>${sanPham.soluongdaban}</td>
            <td><img src="${pageContext.request.contextPath}/images/${sanPham.anh}" alt="${sanPham.ten}" width="100"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/sanpham/edit/${sanPham.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/sanpham/delete/${sanPham.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br/>
<a href="${pageContext.request.contextPath}/">Trang Chủ</a>
</body>
</html>
