<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Chi Tiết Sản Phẩm</title>
</head>
<body>
<h2>Chỉnh Sửa Chi Tiết Sản Phẩm</h2>

<form action="${pageContext.request.contextPath}/chitietsanpham/edit/${chitietsanpham.id}" method="post">
    <div>
        <label for="idsanpham">ID Sản Phẩm:</label>
        <input type="number" id="idsanpham" name="idsanpham" value="${chitietsanpham.idsanpham}" required>
    </div>
    <div>
        <label for="iddiemcanbang">ID Điểm Cân Bằng:</label>
        <input type="number" id="iddiemcanbang" name="iddiemcanbang" value="${chitietsanpham.iddiemcanbang}" required>
    </div>
    <div>
        <label for="idvatlieutruc">ID Vật Liệu Trục:</label>
        <input type="number" id="idvatlieutruc" name="idvatlieutruc" value="${chitietsanpham.idvatlieutruc}" required>
    </div>
    <div>
        <label for="idvatlieukhung">ID Vật Liệu Khung:</label>
        <input type="number" id="idvatlieukhung" name="idvatlieukhung" value="${chitietsanpham.idvatlieukhung}" required>
    </div>
    <div>
        <label for="iddocungthan">ID Độ Cứng Thân:</label>
        <input type="number" id="iddocungthan" name="iddocungthan" value="${chitietsanpham.iddocungthan}" required>
    </div>
    <div>
        <label for="idchieudaitongthe">ID Chiều Dài Tổng Thể:</label>
        <input type="number" id="idchieudaitongthe" name="idchieudaitongthe" value="${chitietsanpham.idchieudaitongthe}" required>
    </div>
    <div>
        <label for="idmuccangtoida">ID Mức Căng Tối Đa:</label>
        <input type="number" id="idmuccangtoida" name="idmuccangtoida" value="${chitietsanpham.idmuccangtoida}" required>
    </div>
    <div>
        <label for="idchuvicanvot">ID Chu Vi Cán Vợt:</label>
        <input type="number" id="idchuvicanvot" name="idchuvicanvot" value="${chitietsanpham.idchuvicanvot}" required>
    </div>
    <div>
        <label for="idmausac">ID Màu Sắc:</label>
        <input type="number" id="idmausac" name="idmausac" value="${chitietsanpham.idmausac}" required>
    </div>
    <div>
        <label for="gia">Giá:</label>
        <input type="number" step="0.01" id="gia" name="gia" value="${chitietsanpham.gia}" required>
    </div>
    <div>
        <label for="soluongton">Số Lượng Tồn:</label>
        <input type="number" id="soluongton" name="soluongton" value="${chitietsanpham.soluongton}" required>
    </div>
    <div>
        <label for="ngaysua">Ngày Sửa:</label>
        <input type="date" id="ngaysua" name="ngaysua" value="${chitietsanpham.ngaysua}"/>
    </div>
    <div>
        <label for="trangthai">Trạng Thái:</label>
        <input type="number" id="trangthai" name="trangthai" value="${chitietsanpham.trangthai}" required>
    </div>
    <div>
        <button type="submit">Cập Nhật</button>
        <a href="${pageContext.request.contextPath}/chitietsanpham">Hủy</a>
    </div>
</form>

</body>
</html>
