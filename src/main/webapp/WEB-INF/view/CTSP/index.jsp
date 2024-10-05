<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Sản Phẩm Chi Tiết</title>
    <link rel="stylesheet" href="style.css"> <!-- Nếu bạn có file CSS -->
</head>
<body>
<h1>Danh Sách Sản Phẩm Chi Tiết</h1>
<table border="1">
    <tr>
        <th>ID</th> <!-- Khóa chính -->
        <th>ID Sản Phẩm</th> <!-- Khóa ngoại đến Sản phẩm -->
        <th>ID Điểm Cân Bằng</th> <!-- Khóa ngoại đến Điểm Cân Bằng -->
        <th>ID Vật Liệu Trục</th> <!-- Khóa ngoại đến Vật Liệu Trục -->
        <th>ID Vật Liệu Khung</th> <!-- Khóa ngoại đến Vật Liệu Khung -->
        <th>ID Độ Cứng Thân</th> <!-- Khóa ngoại đến Độ Cứng Thân -->
        <th>ID Chiều Dài Tổng Thể</th> <!-- Khóa ngoại đến Chiều Dài Tổng Thể -->
        <th>ID Mức Căng Tối Đa</th> <!-- Khóa ngoại đến Mức Căng Tối Đa -->
        <th>ID Chu Vi Cán Vợt</th> <!-- Khóa ngoại đến Chu Vi Cán Vợt -->
        <th>ID Màu Sắc</th> <!-- Khóa ngoại đến Màu Sắc -->
        <th>Giá</th>
        <th>Số Lượng Tồn</th>
        <th>Ngày Tạo</th>
        <th>Ngày Sửa</th>
        <th>Thao Tác</th>
    </tr>
    <c:forEach var="item" items="${chiTietSanPhams}">
        <tr>
            <td>${item.id}</td>  <!-- Khóa chính -->
            <td>${item.idSanPham}</td>  <!-- Khóa ngoại đến Sản phẩm -->
            <td>${item.idDiemCanBang}</td>  <!-- Khóa ngoại đến Điểm Cân Bằng -->
            <td>${item.idVatLieuTruc}</td>  <!-- Khóa ngoại đến Vật Liệu Trục -->
            <td>${item.idVatLieuKhung}</td>  <!-- Khóa ngoại đến Vật Liệu Khung -->
            <td>${item.idDoCungThan}</td>  <!-- Khóa ngoại đến Độ Cứng Thân -->
            <td>${item.idChieuDaiTongThe}</td>  <!-- Khóa ngoại đến Chiều Dài Tổng Thể -->
            <td>${item.idMucCangToiDa}</td>  <!-- Khóa ngoại đến Mức Căng Tối Đa -->
            <td>${item.idChuViCanVot}</td>  <!-- Khóa ngoại đến Chu Vi Cán Vợt -->
            <td>${item.idMauSac}</td>  <!-- Khóa ngoại đến Màu Sắc -->
            <td>${item.gia}</td>
            <td>${item.soLuongTon}</td>
            <td>${item.ngayTao}</td> <!-- Ngày tạo -->
            <td>${item.ngaySua}</td> <!-- Ngày sửa -->
            <td>
                <a href="update.jsp?id=${item.id}">Sửa</a>
                <a href="delete?id=${item.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="add.jsp">Thêm Sản Phẩm Chi Tiết</a>
</body>
</html>
