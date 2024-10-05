<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sản Phẩm Chi Tiết</title>
    <link rel="stylesheet" href="style.css"> <!-- Nếu bạn có file CSS -->
</head>
<body>
<h1>Thêm Sản Phẩm Chi Tiết</h1>
<form action="addProductDetail" method="post">
    <label for="idSanPham">ID Sản Phẩm:</label>
    <input type="number" id="idSanPham" name="idSanPham" required>
    <br>

    <label for="idDiemCanBang">ID Điểm Cân Bằng:</label>
    <input type="number" id="idDiemCanBang" name="idDiemCanBang" required>
    <br>

    <label for="idVatLieuTruc">ID Vật Liệu Trục:</label>
    <input type="number" id="idVatLieuTruc" name="idVatLieuTruc" required>
    <br>

    <label for="idVatLieuKhung">ID Vật Liệu Khung:</label>
    <input type="number" id="idVatLieuKhung" name="idVatLieuKhung" required>
    <br>

    <label for="idDoCungThan">ID Độ Cứng Thân:</label>
    <input type="number" id="idDoCungThan" name="idDoCungThan" required>
    <br>

    <label for="idChieuDaiTongThe">ID Chiều Dài Tổng Thể:</label>
    <input type="number" id="idChieuDaiTongThe" name="idChieuDaiTongThe" required>
    <br>

    <label for="idMucCangToiDa">ID Mức Căng Tối Đa:</label>
    <input type="number" id="idMucCangToiDa" name="idMucCangToiDa" required>
    <br>

    <label for="idChuViCanVot">ID Chu Vi Cán Vợt:</label>
    <input type="number" id="idChuViCanVot" name="idChuViCanVot" required>
    <br>

    <label for="idMauSac">ID Màu Sắc:</label>
    <input type="number" id="idMauSac" name="idMauSac" required>
    <br>

    <label for="gia">Giá:</label>
    <input type="number" id="gia" name="gia" required>
    <br>

    <label for="soLuongTon">Số Lượng Tồn:</label>
    <input type="number" id="soLuongTon" name="soLuongTon" required>
    <br>

    <input type="submit" value="Thêm Sản Phẩm Chi Tiết">
</form>

<br>
<a href="index.jsp">Trở Về Danh Sách Sản Phẩm Chi Tiết</a>
</body>
</html>
